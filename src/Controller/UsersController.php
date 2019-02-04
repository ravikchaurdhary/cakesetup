<?php

namespace App\Controller;

use Cake\Core\Configure;
use Cake\Http\Exception\ForbiddenException;
use Cake\Http\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;
use Cake\ORM\TableRegistry;
use Cake\Auth\DefaultPasswordHasher;
use App\Model\Entity\User;
/**
 * Static content controller
 *
 * This controller will render views from Template/Pages/
 *
 * @link https://book.cakephp.org/3.0/en/controllers/pages-controller.html
 */
class UsersController extends AppController
{
	public function initialize() 
    {
        $this->loadComponent('Flash');
        $this->loadComponent('Cookie');
        $this->loadComponent('Auth', [
            'authenticate' => [
                'Form' => [
                    'fields' => [
                        'username' => 'email',
                        'password' => 'password'
                    ]
                ]
            ],
            'loginRedirect' => [
                'controller' =>'admin',
                'action' =>'dashboard' 
            ],
			'logoutRedirect' =>[
				'controller' =>'users',
				'action' =>'login'
			],
             //use isAuthorized in Controllers
            //'authorize' => ['Controller'],
             // If unauthorized, return them to page they were just on
            //'unauthorizedRedirect' => $this->referer()
        ]);
        
        //get login user and site configuratin Data
        $this->getUserAndSiteConfigureData();
        
        $this->Auth->allow(['signUp','login','logout','resetPassword','setPassword','activateAccount']); 
    
    }
    // Sign up user with roles
    public function signUp(){
    	//$this->viewBuilder()->layout('admin_inner');
    	$this->viewBuilder()->layout('outer_layout');

    	//Find Users role Data 
    	$UserRoleModel = TableRegistry::get('UserRoles');
    	$UserRolesData = $UserRoleModel->find('all')->hydrate(false)->toArray();
    	$this->set('UserRolesData',$UserRolesData);
    	//echo "<pre>"; print_R($UserRolesData);die;
    	//End of Users role Data 

    	$UsersModel = TableRegistry::get('Users');

    	if($this->request->is('POST')){
    		$token = $this->request->getParam('_csrfToken');
    		$agree_condition = @$this->request->data('agree_condition');
    		
    		if(!empty($token) && !empty($agree_condition)){
                $UserPassword = $this->request->data['password'];
    			$UsersData = $UsersModel->newEntity($this->request->getData(), ['validate' => true]);
    			if ($UsersData->errors()) {
    				$errorArr = $UsersData->errors();
    				foreach($errorArr as $errorVal){
    					$this->Flash->error(__($errorVal['_empty']));
    				}
    			}else{
                    $UsersData->activation_code = $this->RandomStringGenerator();
                    $SaveUserValue = $UsersModel->save($UsersData);
    				if($SaveUserValue){
 
                        //$UserInfoData = $this->getUserBasicInfoByEmail($email);
                        $UserFullName = $SaveUserValue->firstname.' '.$SaveUserValue->lastname;
                        $UserId = $SaveUserValue->id;
                        $UserEmail = $SaveUserValue->email;
                        

                        $link = HTTP_ROOT.'users/activate-account/'.base64_encode(convert_uuencode($UserId));
                        $linkOnMail = '<a href="'.$link.'" target="_blank">Click here for activation</a>';

                        //for new registration
                        $replace = array('{full_name},{username}','{password}');
                        $with    = array($UserFullName,$UserEmail,$UserPassword); 
                        $template_slug = 'registration';
         
                        $this->store_email($replace,$with,$template_slug,$UserEmail);
                        //end of for new registration

                        //for new registration
                        $replace1 = array('{user}','{link}');
                        $with1    = array($UserFullName,$linkOnMail); 
                        $template_slug1 = 'new_registration';
         
                        $this->store_email($replace1,$with1,$template_slug1,$UserEmail);
                        //end of for new registration



    					$this->Flash->success(__('User has been created successfully'));
    				}else{
    					$this->Flash->error(__('Something wrong went. Please try again'));
    				}
    			}
    		}else if(!empty($agree_condition)){
    			$this->Flash->error(__('Agree condition not selected.'));
    		}else if (!empty($token)){
    			$this->Flash->error(__('Something wrong went. Please try again'));
    		}
    	}
    }

    // login user
	public function login(){
	
		$this->viewBuilder()->layout('outer_layout');
        $this->loadModel('Users');
        //echo "<pre>"; print_r($this->Cookie->read('otherUserCookie'));die;
        if($this->Cookie->check('otherUserCookie'))
        {
                $this->set("otherUserCookie", $this->Cookie->read('otherUserCookie'));
        }
	    if ($this->request->is('post')) {
	    	
            $email = $this->request->data['email'];
            $org_password = $this->request->data['password'];

            $user = $this->Auth->identify();
            
            if(($user['status'] == '1') && empty($user['activation_code'])){

                if ($user) {

                    if (array_key_exists("remember", $this->request->data))
                    {
                        $this->Cookie->write('otherUserCookie',['loginId' => $email , 'password' => $org_password, 'userRole' => $user['role_id']]);

                    } else {
                            if($this->Cookie->check('otherUserCookie')){
                                    $this->Cookie->delete('otherUserCookie');
                            } 
                    }
    	            
                    $this->Auth->setUser($user);

                    //Update login status
                    $this->Users->updateAll(['login_status'=>'1'],['email'=>$email]);
                    
    	            //echo "<pre>"; print_r($this->Auth->redirectUrl());die;
    	            return $this->redirect($this->Auth->redirectUrl());
    	        }else{
    	        	$this->Flash->error('Your username or password is incorrect.');
    	        } 
            }else if(($user['status'] == '0') && !empty($user['activation_code'])){
                $this->Flash->error('Your account is not activate. Please varify your account.');
            }else if(($user['status'] == '0') && empty($user['activation_code'])){
                $this->Flash->error('Admin deactive your account. Please contact with him.');
            }    
	    }
	}
	public function resetPassword()
    { 
        $this->viewBuilder()->layout('outer_layout');
        if ($this->request->is('post')) {
            $email = $this->request->data('email');         
            
            if ($email) {

                $UserInfoData = $this->getUserBasicInfoByEmail($email);
                $UserFullName = $UserInfoData->firstname.' '.$UserInfoData->lastname;
                $UserId = $UserInfoData->id;

                $link = HTTP_ROOT.'users/set-password/'.base64_encode(convert_uuencode($UserId));
                $linkOnMail = '<a href="'.$link.'" target="_blank">Click here </a>';

                $replace = array('{user}','{link}');
                $with    = array($UserFullName,$linkOnMail); 
                $template_slug = 'forgot_password';
 
                $this->store_email($replace,$with,$template_slug,$email);

                $this->Flash->success('Your password has been sent to register email.');
                
            }else{
                $this->Flash->error('Your username or password is incorrect.');
            } 
        }
    }
    //Active user account 
    public function activateAccount($userid=null)
    {
        $UserId =convert_uudecode(base64_decode($userid));
        $this->loadModel('Users');
        $UserData = $this->Users->get($UserId);
        
        if(!empty($UserId) && !empty($UserData->activation_code) && ($UserData->status == '0')){
               
                $this->Users->updateAll(['status'=>'1','activation_code'=>'','email_activate_status'=>'1'],['id'=>$UserId]);
                
                $this->Flash->success(__('Your account has been activate successfully'));

                return $this->redirect('/users/login');     
            
        }else {
            $this->Flash->error(__('Something wrong went. Please try again'));
        }

    }
    //Set user new password 
    public function setPassword($userid=null)
    {
        $UserId =convert_uudecode(base64_decode($userid));
        $this->viewBuilder()->layout('outer_layout');
        $this->loadModel('Users');

        if($this->request->is('POST')){
            $token = $this->request->getParam('_csrfToken');
            
            if(!empty($token)){
                // Hash password using default hashing of cakephp 
                $hasher = new DefaultPasswordHasher();
                $hashedPassword =  $hasher->hash($this->request->data['password']);

                // end of Hash password using default hashing of cakephp 
                $this->Users->updateAll(['password'=>$hashedPassword],['id'=>$UserId]);
                
                $this->Flash->success(__('Password  has been update successfully'));

                return $this->redirect('/users/login');    
            
            }else if (!empty($token)){
                $this->Flash->error(__('Something wrong went. Please try again'));
            }
        }
    }
} 
