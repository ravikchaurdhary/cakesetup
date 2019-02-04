<?php

namespace App\Controller;

use Cake\Core\Configure;
use Cake\Http\Exception\ForbiddenException;
use Cake\Http\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;
use Cake\ORM\TableRegistry;
use Cake\Auth\DefaultPasswordHasher;

/**
 * Static content controller
 *
 * This controller will render views from Template/Pages/
 *
 * @link https://book.cakephp.org/3.0/en/controllers/pages-controller.html
 */
class AdminController extends AppController
{
	public function initialize() 
    {
        $this->loadComponent('Flash');
        $this->loadComponent('Auth');
        //$this->Auth->allow(['logout']); 
    
        //get login user and site configuratin Data
        $this->getUserAndSiteConfigureData();

    } 

    public function dashboard(){
    	$this->viewBuilder()->layout('admin_inner'); 
        
        //Total Register User
        $totalUsersCountWithRolesData = $this->totalUsersCountWithRoles();
        $this->set('totalUsersCountWithRoles',$totalUsersCountWithRolesData);

    } 
    
	public function logout(){
	
        $this->Flash->success('You are now logged out.');

        //Update login and last login field status 
        $loginUserId = $this->Auth->user('id');
        $lastLogin = date('Y-m-d H:i:s');
        $this->loadModel('Users');
        $this->Users->updateAll(['login_status'=>'0','last_login'=>$lastLogin],['id'=>$loginUserId]);
        //End of update login and last login field status 
	    
        return $this->redirect($this->Auth->logout()); 
	}
	public function resetPassword()
    { 
    	$this->viewBuilder()->layout('outer_layout');
	    if ($this->request->is('post')) {
	    	$email = $this->request->data('email');	        
	        
	        if ($email) {
	            $UserInfoData = $this->getUserBasicInfoByEmail($email);
	            $UserFullName = $UserInfoData->firstname.' '.$UserInfoData->lastname;
	            $link = HTTP_ROOT.'users/set-password';

	            $replace = array('{user}','{link}');
	        	$with    = array($UserFullName,$linko); 
	        	$template_slug = 'forgot_password';

	            $this->store_email($replace,$with,$template_slug,$email);

	            $this->Flash->success('Your password has been sent to register email.');
	            
	        }else{
	        	$this->Flash->error('Your username or password is incorrect.');
	        } 
	    }
    }

    // Show all users listing
    public function usersListing()
    {
    	$this->viewBuilder()->layout('admin_inner_datatable'); 

    }
    // Cron Job Listing
    public function cronJobListing()
    {
        $this->viewBuilder()->layout('admin_inner_datatable'); 

    }
    //add cron job  with id
    public function addCronJob()
    {
        $this->viewBuilder()->layout('admin_inner');      
        
        $this->loadModel('CronJobs');
        if($this->request->is('post')){           
           $CronJobData = $this->CronJobs->newEntity($this->request->data);
           
           $CronJobData->created = date('Y-m-d H:i:s');
           $CronJobData->modified = date('Y-m-d H:i:s');
           if($this->CronJobs->save($CronJobData)){
                 $this->Flash->success('Cron Jobs Information has been add successfully.');
                 return $this->redirect('/admin/cron-job-listing');
           }else{
                $this->Flash->success('Something went wrong.');
           }
        }

    }
    //Edit cron job  with id
    public function editCronJob($cronJobId = null)
    {
        $this->viewBuilder()->layout('admin_inner');      
        $cronJobid = convert_uudecode(base64_decode($cronJobId));

        
        $this->loadModel('CronJobs');
        $CronJobsData = $this->CronJobs->get($cronJobid);
        //echo "<pre>"; print_r($CronJobsData);die;
        $this->set('CronJobsData',$CronJobsData);

        if($this->request->is('post')){           
           $CronJobData = $this->CronJobs->newEntity($this->request->data);
           $CronJobData->id = $cronJobid;
           $CronJobData->modified = date('Y-m-d H:i:s');
            if($this->CronJobs->save($CronJobData)){
                 $this->Flash->success('Cron Jobs Information has been updated successfully.');
                 return $this->redirect('/admin/cron-job-listing');
            }else{
                $this->Flash->success('Something went wrong.');
            }
        }

    }
    public function changeUserStatus($id = null, $status = 'off',$controller=null,$action=null)
    {
        $this->viewBuilder()->layout('admin_inner');
        // $this->request->allowMethod(['post', 'delete']);
        $this->loadModel('Users');
        $user = $this->Users->get($id);
            $user->status = ( $status === 'on' ) ? 1: 0;

        if ($this->Users->save($user))
        {
                $this->Flash->success(__('The status has been changed.'));
        }
        else
        {
            $this->Flash->error(__('The status could not be changed. Please, try again.'));
        }   
        
        if($controller==null && $action==null){
            return $this->redirect(['action' => 'index']);
        }else{
            return $this->redirect(['controller' => $controller,'action' => $action]);
        }
       
    }

    //Edit User with id
    public function editUser($userId = null)
    {
    	$this->viewBuilder()->layout('admin_inner');      
        $userId = convert_uudecode(base64_decode($userId));

        //get data Country code for phone number
        $CountryCodesData = $this->getCountryCode();
        $this->set('CountryCodesData',$CountryCodesData); 

        
        //Find Users role Data  
    	$UserRoleModel = TableRegistry::get('UserRoles');
    	$UserRolesData = $UserRoleModel->find('all')->hydrate(false)->toArray();
    	$this->set('UserRolesData',$UserRolesData); 

        $this->loadModel('Users');
        $UserData = $this->Users->get($userId);
        //echo "<pre>"; print_r($UserData);die;
        $this->set('UserData',$UserData);

        if($this->request->is('post')){           
           $UsersData = $this->Users->newEntity($this->request->data);

           //Upload profile image
           $imageData = $this->request->data['profile_picture'];
           if($imageData['name']!=''){
                $profileImage = $this->upload_file('profilePic',$imageData);
                $profileImage = explode(':',$profileImage);

                if($profileImage[0]=='error'){
                        $this->Flash->error(__($profileImage[1]));
                        return $this->redirect('/admin/users-listing');
                }else{
                    $UsersData->profile_picture =  $profileImage[1];
                }               
            }else{
                unset($UsersData->profile_picture);
            }
            unset($this->request->data['profile_picture']);
            
            //Delete Pre Exist File
            if(!empty($UserData->profile_picture) && !empty($UsersData->profile_picture)){
                
                $preFileName = $UserData->profile_picture;
                $CheckDelete = $this->CheckAndDeleteFileServer('profilePic',$preFileName);
            }

            //End image upload
            
           $UsersData->id = $userId;
           $UsersData->modified = date('Y-m-d H:i:s');
            if($this->Users->save($UsersData)){
                 $this->Flash->success('User Information has been updated successfully.');
                 return $this->redirect('/admin/users-listing');
            }else{
                $this->Flash->success('Something went wrong.');
            }
        }
    }

    //Setup admin profile
    public function setProfile($userId = null,$tabValue=null)
    {   
        $this->viewBuilder()->layout('admin_inner');  
        $AdminId = convert_uudecode(base64_decode($userId));

        //get data Country code for phone number
        $CountryCodesData = $this->getCountryCode();
        $this->set('CountryCodesData',$CountryCodesData); 


        //Admin Information
        $AdminData = $this->getAdminBasicInfoById($AdminId);
        $this->set('AdminData',$AdminData);
        
        
        if(!empty($tabValue)){
            $this->set('tabValue',$tabValue);
        }

        // Site Setting Information
        $this->loadModel('SiteConfiguration');
        $SiteSettingData = $this->SiteConfiguration->find('all')->hydrate('false')->first();
        $this->set('SiteSettingData',$SiteSettingData);
        // End of Site Setting Information

        $this->loadModel('Users');
        if($this->request->is('POST')){


         //For update admin profile
            
         if(($this->request->data['type'] == 'profile') || !empty($this->request->data['firstname'])){
                
                $UserData = $this->Users->newEntity($this->request->data);
                //Upload profile image
                $imageData = $this->request->data['profile_picture'];
                if($imageData['name']!=''){
                    $profileImage = $this->upload_file('profilePic',$imageData);
                    $profileImage = explode(':',$profileImage);

                    if($profileImage[0]=='error'){
                            $this->Flash->error(__($profileImage[1]));
                            return $this->redirect('/admin/set-profile/'.base64_encode(convert_uuencode($AdminId)).'/ProfileSetup');
                    }else{
                        $UserData->profile_picture =  $profileImage[1];
                    }               
                }else{
                    unset($UserData->profile_picture);
                }
                $UserData->id = $AdminId;
                
                unset($this->request->data['profile_picture']);
                unset($this->request->data['type']);
                //End image upload

                if(!empty($AdminData->profile_picture) && !empty($UserData->profile_picture)){
                    //Delete Pre Exist File
                    $preFileName = $AdminData->profile_picture;
                    $CheckDelete = $this->CheckAndDeleteFileServer('profilePic',$preFileName);
                }
               
                if($this->Users->save($UserData)){

                    $this->Flash->success(__('Admin profile has been update successfully'));

                }else{
                     $this->Flash->error(__('Something wrong went. Please try again'));
                }

                return $this->redirect('/admin/set-profile/'.base64_encode(convert_uuencode($AdminId)).'/ProfileSetup');
                
           }
           //For update admin password
           if(($this->request->data['type'] == 'ChangePassword') || !empty($this->request->data['password'])){
                

               if($this->request->data['password'] == $this->request->data['confirm_password']){
                    // Hash password using default hashing of cakephp 
                    $hasher = new DefaultPasswordHasher();
                    $hashedPassword =  $hasher->hash($this->request->data['password']);
                    // end of Hash password using default hashing of cakephp 
                    $updated = $this->Users->updateAll(['password'=>$hashedPassword],['id'=>$AdminId]);
                    if($updated){
                        $this->Flash->success(__('Password  has been change successfully'));

                    }else{
                         $this->Flash->error(__('Something wrong went. Please try again'));
                    }

               }else{
                     $this->Flash->error(__('Password and Confirm Password not matched. Please try again'));
               }    
                
               return $this->redirect('/admin/set-profile/'.base64_encode(convert_uuencode($AdminId)).'/ChangePassword');
               
           }

           //For update site setting
           if(($this->request->data['type'] == 'SiteSettings') || !empty($this->request->data['site_name'])){
                
                $SiteConfigurationData = $this->SiteConfiguration->newEntity($this->request->data);
                //Upload Site Favicon image

                $siteFaviconImageData = $this->request->data['site_favicon'];
                if($siteFaviconImageData['name']!=''){
                    $siteFaviconImage = $this->upload_file('favicon',$siteFaviconImageData);
                    $siteFaviconImage = explode(':',$siteFaviconImage);

                    if($siteFaviconImage[0]=='error'){
                            $this->Flash->error(__($siteFaviconImage[1]));
                            return $this->redirect('/admin/set-profile/'.base64_encode(convert_uuencode($AdminId)).'/SiteSettings');
                    }else{
                        $SiteConfigurationData->site_favicon =  $siteFaviconImage[1];
                    }               
                }else{
                    unset($SiteConfigurationData->site_favicon);
                }
                
                //Upload Site Logo image
                $siteLogoImageData = $this->request->data['site_logo'];
                if($siteLogoImageData['name']!=''){
                    $siteLogoImage = $this->upload_file('site_logo',$siteLogoImageData);
                    $siteLogoImage = explode(':',$siteLogoImage);

                    if($siteLogoImage[0]=='error'){
                            $this->Flash->error(__($siteLogoImage[1]));
                            return $this->redirect('/admin/set-profile/'.base64_encode(convert_uuencode($AdminId)).'/SiteSettings');
                    }else{
                        $SiteConfigurationData->site_logo =  $siteLogoImage[1];
                    }               
                }else{
                    unset($SiteConfigurationData->site_logo);
                }
                

                $SiteConfigurationData->id = 1;
                
                unset($this->request->data['site_favicon']);
                unset($this->request->data['site_logo']);
                unset($this->request->data['type']);
                //End  Site Logo image upload

                if(!empty($SiteSettingData->site_favicon) && !empty($SiteConfigurationData->site_favicon)){
                    //Delete Pre Exist File
                    $preFileName = $SiteSettingData->site_favicon;
                    $CheckDelete = $this->CheckAndDeleteFileServer('favicon',$preFileName);
                }

                if(!empty($SiteSettingData->site_logo) && !empty($SiteConfigurationData->site_logo)){
                    //Delete Pre Exist File
                    $preFileName = $SiteSettingData->site_logo;
                    $CheckDelete = $this->CheckAndDeleteFileServer('site_logo',$preFileName);
                }
                
                if(empty($SiteSettingData)){
                    $SiteConfigurationData->created = date('Y-m-d H:i:s');
                }
                $SiteConfigurationData->modified = date('Y-m-d H:i:s');
               //echo "<pre>"; print_r($SiteConfigurationData); die;
                if($this->SiteConfiguration->save($SiteConfigurationData)){

                    //Update Admin Email for email send 
                    $this->loadModel('SmtpSettings');
                    $updated = $this->SmtpSettings->updateAll(['from_email'=>$this->request->data['site_email'],'from_name'=>$this->request->data['site_name']],['id'=>'1']);
                    
                    //End of Update Admin Email for email send 
                    
                    $this->Flash->success(__('Site Configuration Information has been update successfully'));

                }else{
                     $this->Flash->error(__('Something wrong went. Please try again'));
                }

                return $this->redirect('/admin/set-profile/'.base64_encode(convert_uuencode($AdminId)).'/SiteSettings');
                
           }
        }   
    }
} 
