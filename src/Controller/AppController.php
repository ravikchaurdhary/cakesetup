<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link      https://cakephp.org CakePHP(tm) Project
 * @since     0.2.9
 * @license   https://opensource.org/licenses/mit-license.php MIT License
 */
namespace App\Controller;

use Cake\Controller\Controller;
use Cake\Event\Event;
use Cake\View\Helper;
use Cake\ORM\TableRegistry;
/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @link https://book.cakephp.org/3.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller
{

    /**
     * Initialization hook method.
     *
     * Use this method to add common initialization code like loading components.
     *
     * e.g. `$this->loadComponent('Security');`
     *
     * @return void
     */
    public function initialize()
    {

        parent::initialize();

        $this->loadComponent('RequestHandler', [
            'enableBeforeRedirect' => false,
        ]);
        $this->loadComponent('Flash');  
        $this->loadComponent('Auth');

        // Allow the display action so our PagesController
        // continues to work. Also enable the read only actions.
        //$this->Auth->allow(['display', 'view', 'index']);
        /*
         * Enable the following component for recommended CakePHP security settings.
         * see https://book.cakephp.org/3.0/en/controllers/components/security.html
         */
        //$this->loadComponent('Security');
         
        
    }

    function totalUsersCountWithRoles(){
        $this->loadModel('UserRoles');
        $UsersRoleData = $this->UserRoles->find('all')
                ->contain(['Users'=>function($que){ 
                                return $que->select(['Users.id','Users.role_id','Users.created'])->hydrate('false'); 
                        }])
                ->hydrate('false')->toArray();
        
        $UserRoleCountArr = array();  
        $totalUsers = 0; 
        $today_new_patient = 0;
        $todayDate = date('Y-m-d');             
        if(!empty($UsersRoleData)){
                foreach($UsersRoleData as $UsersRoleUser){

                        $userCount = count($UsersRoleUser->users);
                        $UserRoleCountArr[$UsersRoleUser->role_name]= $userCount;
                        $totalUsers += $userCount;
                        if(trim($UsersRoleUser->role_name) == 'patient'){ 
                            foreach($UsersRoleUser->users as $Users){
                                
                                if(strtotime($todayDate) == strtotime(date('Y-m-d',strtotime($Users->created)))){
                                    $today_new_patient++;
                                }    
                            }
                        }
                        
                }
           
        }   
        $UserRoleCountArr['today_new_patient']= $today_new_patient;
        $UserRoleCountArr['total_users']= $totalUsers; 

        return $UserRoleCountArr;
    }


    //get login user and site configuratin Data

    function getUserAndSiteConfigureData(){
        //Admin Details
        $AdminId = $this->Auth->User('id');
        $AdminData = $this->getAdminBasicInfoById($AdminId);
        $this->set('AdminData',$AdminData);
        if(!empty($AdminData->profile_picture)){
             $admin_image = $AdminData->profile_picture;
        }else{
             $admin_image = 'dp-image.png';
        }  
        $this->set('admin_image',$admin_image);
        //End of Admin Details

        // Site Setting Information
        $this->loadModel('SiteConfiguration');
        $SiteSettingData = $this->SiteConfiguration->find('all')->hydrate('false')->first();
        $this->set('SiteSettingData',$SiteSettingData);
        $this->set('site_favicon',$SiteSettingData->site_favicon);
        $this->set('site_logo',$SiteSettingData->site_logo);
        // End of Site Setting Information
    }
    // Basic Info of User by email id 
    function getUserBasicInfoByEmail($emailId = null){
       
        $UsersModel = TableRegistry::get('Users');  
        $getUserData = $UsersModel->find('all')->select(['id','role_id','firstname','lastname','email','phone_number'])->where(['Users.email' => $emailId])->hydrate('false')->first();
        return $getUserData;
    }  
    // Basic Info of User
    function getUserBasicInfo($userId = null){
       
        $UsersModel = TableRegistry::get('Users');  
        $getUserData = $UsersModel->find('all')->select(['id','role_id','firstname','lastname','email','phone_number'])->where(['Users.id' => $userId])->hydrate('false')->first();
        return $getUserData;
    }  
    // Basic Info of User
    function getAdminBasicInfoById($userId = null){
       
        $UsersModel = TableRegistry::get('Users');  
        $getUserData = $UsersModel->find('all')->contain(['UserRoles'])->where(['Users.id' => $userId])->hydrate('false')->first();
        return $getUserData;
    } 

    //Send email from database
    function send_email($process = "", $replace_fields = array(), $replace_with = array(), $email_template = null, $to = null, $extraTemplate = null )
    {
        
        //Get Admin Role
        $UserRoleModel = TableRegistry::get('UserRoles');
        $UserRoleData = $UserRoleModel->find('all')->where(['UserRoles.role_name'=>'admin'])->first();
        $UserAdminRoleId = $UserRoleData->id;

        $admindetails = $this->getUserBasicInfo($UserAdminRoleId);
        $adminEmail = $admindetails->email;

        //End of Get Admin Details
        
        $EmailsModel = TableRegistry::get('EmailTemplates');  
        $getTemplateData = $EmailsModel->find('all',['conditions' => ['EmailTemplates.alias' => trim($email_template) ] ] );
        $template =  $getTemplateData->first();
   
        if ($extraTemplate != '')
        {
          $template_data = $extraTemplate;
        }
        else
        {
            if(isset($template->description)){
                $template_data = $template->description;    
            }else{
                $template_data ="";
            }    
        }
   
    
        /*$replace_fields = array_merge($replace_fields, array('/sitterguide/img/logo.png','/sitterguide/img/front/mobile_nav_logo.png'));*/
        $logoSrc = HTTP_ROOT.'img/logo.jpg';
    
        $replace_with = array_merge($replace_with, array($logoSrc));
        $template_info = str_replace($replace_fields,$replace_with,$template_data);
    
        if($_SERVER['HTTP_HOST']=='localhost')
        { 
          echo $template_info; die;
        }
       
        $SmtpSettingsModel = TableRegistry::get('SmtpSettings');
        $smtpData = $SmtpSettingsModel->find('all')->first();
        $this->Email = new Email();
        $this->Email->transport('gmail'); 
        $customSubject = ($template->subject !='')?$template->subject:CLIENT_NAME;
   
   
        try { 
            //ob_start();
            $res = $this->Email->from([ $adminemail => CLIENT_NAME])
            ->emailFormat('both') 
                  ->to($to)
                  ->subject($customSubject)                   
                  ->send($template_info);

        } 
        catch (Exception $e) 
        {
              echo 'Exception : ',  $e->getMessage(), "\n";
        }
    }
    //End of Send email from database

    //Store email into database
    function store_email($replaceArr = array(), $withArr = array(), $slug = null, $receiverEmail = null)
    {

        $this->loadModel('SendingEmails');
        $PreJsonArrForReplace = array();
        
        foreach($replaceArr as $KeyArr => $replaceData){

              $PreJsonArrForReplace[$replaceData] = $withArr[$KeyArr];
        
        }
        $JsonArrForReplace = Json_encode($PreJsonArrForReplace);
          
        //Store send mail data
        if(!empty($receiverEmail)){

                $SendEmailData = $this->SendingEmails->newEntity();
                $SendEmailData->email = $receiverEmail;
                $SendEmailData->slug = $slug;
                $SendEmailData->replace_field = $JsonArrForReplace;
                $SendEmailData->status = 'pending';
                $SendEmailData->modified = date('Y-m-d h:i:s');
                //For store notication data
                if (!empty($smsNotificationData)) {
                    foreach($smsNotificationData as $key => $smsNotification)
                    {
                       $SendEmailData->$key = $smsNotification;
                    }
                }
                $this->SendingEmails->save($SendEmailData);
        } 
    } 
    // end of Store email into database


    /**
    *********************************************************************
    *  Function Name : upload_file() .
    *  Functionality : This function is use to upload image out the application : 
    *********************************************************************
    **/ 
    /**
    * Function for Upload Image
    */
    function upload_file($type = NULL, $FileArr = array()){
    
        $this->loadComponent('Resize');
        $this->viewBuilder()->layout('');
        $this->autoRender=false;
        
        if($FileArr['name']!="")
        {
            if($type == 'site_logo'){
            
                $uploadFolder="uploads/site_logo";    
                $logoWidth = "183";
                $logoHeight = "42";
                $logoSize="2097152";
                $logoKb = '2 MB';
            }
            else if($type == 'favicon'){
            
                $uploadFolder="uploads/site_favicon";    
                $logoWidth = "24";
                $logoHeight = "25";
                $logoSize="2097152";
                $logoKb = '2 MB';
            }else if($type == 'profilePic'){
            
                $uploadFolder="uploads/profile_pic";    
                $logoWidth = "400";
                $logoHeight = "400"; 
                $logoSize="4194304";
                $logoKb = '4 MB';
            
            }else if($type == 'audio' || $type == 'video'){
           
                $imgName = pathinfo($FileArr['name']);
                $file = $FileArr;
                $fileName = $FileArr['name'];
                $ext = trim(substr($fileName, strrpos($fileName,'.')));
                
                $explodeExt = explode('.',$fileName);
                $explodeExt =  end($explodeExt);
                if($type == 'audio')
                {
                    $uploadFolder= "files/audio";   
                    $fileSize= "5242880";
                    $fileKb = "5 MB";
                    $extCheckArr = array('mp3','ogg','wma');    
                }
                else
                {
                    $uploadFolder="files/video";    
                    $fileSize= "20971520";//"52428800"; 
                    $fileKb = '20 MB'; //"50 MB"; 
                    $extCheckArr = array('mp4','ogg','wmv');    
                }
                
                if(in_array($explodeExt,$extCheckArr))
                {
                    
                    if($FileArr['size'] <= $fileSize)
                    {
                        $fileName = $this->RandomStringGenerator(15);
                        $destination = realpath('../webroot/'.$uploadFolder).'/'.$fileName.$ext;
                        $src = $FileArr['tmp_name'];
                                                
                        //echo "path".$destination;die;
                        if(move_uploaded_file($FileArr['tmp_name'],$destination))
                        {
                            $return = "success:".$fileName.$ext.":uploaded";
                            return $return;
                        }
                    }
                    else
                    {
                        $return = "error:File size should be less than $fileKb";
                        return $return;
                    }
                }
                else
                {
                    $extCheckStr = implode(',',$extCheckArr);
                    $return = "error:Only ".strtoupper($extCheckStr)." files are allowed!";
                    return $return;exit();
                }
            }
            else
            {
                $uploadFolder="uploads";    
                $logoWidth = "400";
                $logoHeight = "400";
                $logoSize="2097152";
                $logoKb = "2 MB";
            }
            
            
            
            $imgName = pathinfo($FileArr['name']);
            $file = $FileArr;
            $image = $FileArr['name'];
            $ext = trim(substr($image, strrpos($image,'.')));
            
            $explodeExt = explode('.',$image);
            $explodeExt =  end($explodeExt);
            $explodeExt = strtolower($explodeExt);

            if($explodeExt=='jpg' || $explodeExt=='jpeg' ||  $explodeExt=='png' || $explodeExt=='gif' || $explodeExt=='bmp' )
            {
                
                if($FileArr['size'] <= $logoSize)
                {
                    $image = $this->RandomStringGenerator(15);
                    $destination = realpath('../webroot/img/'.$uploadFolder).'/'.$image.$ext;
                    $destinationResize = realpath('../webroot/img/'.$uploadFolder);
                    $src = $FileArr['tmp_name'];
                    list( $width, $height, $source_type ) = getimagesize($src); 
                        
                    if($width == $logoWidth && $height == $logoHeight)
                    {
                        move_uploaded_file($FileArr['tmp_name'],$destination);
                        $imgStatus = 1;
                    }else{
                        
                            $max_width = 500;
                            if($type == 'profilePic'){

                                move_uploaded_file($FileArr['tmp_name'],$destination);              
                                $this->image_fix_orientation($destination);

                                $this->Resize->resize($destination,$destinationResize."/100X100/".$image.$ext,'as_define',100,100,0,0,0,0); 
                                $this->Resize->resize($destination,$destinationResize."/200X200/".$image.$ext,'as_define',200,200,0,0,0,0); 
                                $this->Resize->resize($destination,$destinationResize."/300X300/".$image.$ext,'as_define',300,300,0,0,0,0); 
                                $this->Resize->resize($destination,$destinationResize."/400X400/".$image.$ext,'as_define',400,400,0,0,0,0); 

                            }else{
                                move_uploaded_file($FileArr['tmp_name'],$destination);
                            }
                            
                           /* $width = $this->getWidth($destination);
                            $height = $this->getHeight($destination);
                            //Scale the image if it is greater than the width set above
                            if ($width > $max_width){
                                $scale = $max_width/$width;
                                $uploaded = $this->resizeImage($destination,$width,$height,$scale,$ext);
                            }else{
                                $scale = 1;
                               // $uploaded = $this->resizeImage($destination,$width,$height,$scale);
                                 move_uploaded_file($FileArr['tmp_name'],$destination); 
                            }   */
                         }
                         $imgStatus = 2;
                    }else
                    {
                        $return = "error:File size should be less than $logoKb";
                        return $return;
                    }
                    
                    if($imgStatus == 1)
                    {
                        $return = "success:".$image.$ext.":uploaded";
                        return $return;
                    }else{
                        $return = "success:".$image.$ext.":resize";
                        return $return;
                    }
               
            }else{
                $return = "error:Only JPG, PNG, BMP or GIF files are allowed!";
                return $return;
            }
        }else{
            $return = "error:Some error occured while saving to the database!";
            return $return;
        }
    }

    /**
    * Function to generate random string
    */
    function RandomStringGenerator($length = 10){              
      $string = "";
      $pattern = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        for($i=0; $i<$length; $i++)
        {
            $string .= $pattern{rand(0,61)};
        }
        return $string;
    }

    function image_fix_orientation($filename) {
        $exif = @exif_read_data($filename);
        //echo "<pre>"; print_r($exif); die;
        if (!empty($exif['Orientation'])) {
            $image = imagecreatefromjpeg($filename);
            switch ($exif['Orientation']) {
                case 3:
                    $image = imagerotate($image, 180, 0);
                    break;

                case 6:
                    $image = imagerotate($image, -90, 0);
                    break;

                case 8:
                    $image = imagerotate($image, 90, 0);
                    break;
            }

            imagejpeg($image, $filename, 90);
        }
    }

    /*********************************************************************
         Purpose            : get image height.
         Parameters         : null
         Returns            : height
         ***********************************************************************/
    function getHeight($image) {
        $sizes = getimagesize($image);
        $height = $sizes[1];
        return $height;
    }
    /*********************************************************************
         Purpose            : get image width.
         Parameters         : null
         Returns            : width
         ***********************************************************************/
    function getWidth($image) {
        $sizes = getimagesize($image);
        $width = $sizes[0];
        return $width;
    }
    /*********************************************************************
     Purpose            : resize image.
     Parameters         : null
     Returns            : image
     ***********************************************************************/
    function resizeImage($image,$width,$height,$scale,$ext=null) {
            $newImageWidth = ceil($width * $scale);
            $newImageHeight = ceil($height * $scale);
            $newImage = imagecreatetruecolor($newImageWidth,$newImageHeight);

        if($ext=='png'){
            @$source = imagecreatefrompng($image);
            imagecopyresampled($newImage,$source,0,0,0,0,$newImageWidth,$newImageHeight,$width,$height);
            $q=9/100;
            $quality=$q;
            imagepng($newImage,$image,$quality);
        }else if($ext == 'jpeg' || $ext == 'jpg'){
             @$source = imagecreatefromjpeg($image);
            imagecopyresampled($newImage,$source,0,0,0,0,$newImageWidth,$newImageHeight,$width,$height);
            imagejpeg($newImage,$image,90);
        
        }else if($ext == 'gif'){
             @$source = imagecreatefromgif($image);
            imagecopyresampled($newImage,$source,0,0,0,0,$newImageWidth,$newImageHeight,$width,$height);
            imagegif($newImage,$image,90);
        }else{
             @$source = imagecreatefromjpeg($image);
            imagecopyresampled($newImage,$source,0,0,0,0,$newImageWidth,$newImageHeight,$width,$height);
            imagejpeg($newImage,$image,90);
        }
         
            chmod($image, 0777);
            return $image;
    }

    //For DeleteFile from server
    function CheckAndDeleteFileServer($type=null,$preFileName=null){
        $checkDelete = 0;

        if($type == 'profilePic'){
            $folderArr = array('profile_pic','profile_pic/100X100','profile_pic/200X200','profile_pic/300X300','profile_pic/400X400');

            if(!empty($folderArr)){
                foreach($folderArr as $folderName){
                        $file_path_with_name = DOCUMENT_ROOT.''.$folderName.'/'.$preFileName;
                        if (file_exists($file_path_with_name)) {
                            unlink($file_path_with_name);
                            $checkDelete = 1;
                        }
                }
            }
            
        }else if($type == 'favicon'){
             $file_path_with_name = DOCUMENT_ROOT.'site_favicon/'.$preFileName;
            if (file_exists($file_path_with_name)) {
                unlink($file_path_with_name);
                $checkDelete = 1;
            }

        }else if($type == 'site_logo'){
             $file_path_with_name = DOCUMENT_ROOT.'site_logo/'.$preFileName;
            if (file_exists($file_path_with_name)) {
                unlink($file_path_with_name);
                $checkDelete = 1;
            }

        }else {
             $file_path_with_name = DOCUMENT_ROOT.'/'.$preFileName;
            if (file_exists($file_path_with_name)) {
                unlink($file_path_with_name);
                $checkDelete = 1;
            }

        }
        
        return $checkDelete;
    }

    // Find Country code
    function getCountryCode(){
        $this->loadModel('CountryCodes');
        $CountryCodesData = $this->CountryCodes->find('all')->select(['phonecode','iso3'])->where(['CountryCodes.phonecode !='=> '0'])->hydrate(false)->toArray();

        return $CountryCodesData;
    }
}
