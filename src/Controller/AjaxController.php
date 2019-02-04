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
class AjaxController extends AppController
{
	public function initialize() 
    {
        $this->loadComponent('Flash');
        $this->loadComponent('Auth');      
        $this->Auth->allow(['checkEmailExist']); 
    }

    public function checkEmailExist($email = null){

        $UsersModel = TableRegistry::get('Users');
        if(@$_GET['email']!='')
        {
            $email = $_GET['email'];
        }
        $getUserData = $UsersModel->find('all',['conditions' => ['Users.email' => $email]])->count();
          
        if ($getUserData > 0) {
             $res = 'true';
        } else { 
             $res = 'false';
        }
        if($this->request->is('ajax')){
            echo $res;die;
        }else{
            return $res;
        }
    }
    // Get all email template listing
    public function getEmailTemplatesListing()
    {    
         $this->loadModel('EmailTemplates');

         $limit  = $_REQUEST['length'];
         $offset = $_REQUEST['start'];
         //$order = $_REQUEST['order'];
         $column = $_REQUEST['order'][0]['column'];
         $order  = $_REQUEST['order'][0]['dir'];
         
         if(empty($order)){
           $order='desc';
         }

         if($column==1){
            $tabcolmn ="EmailTemplates.id"; 
         }else{
            $tabcolmn="EmailTemplates.modified";
         }
           $cond =[];
           if(isset($_REQUEST['search']['value']) && !empty($_REQUEST['search']['value']))
           {
                $keyWords=$_REQUEST['search']['value'];
                $cond = array_merge($cond,array("OR"=>array(
                         "EmailTemplates.title LIKE"=>"%$keyWords%",
                         "EmailTemplates.subject LIKE"=>"%$keyWords%"
                   )));
               
            }  

            $records = $this->EmailTemplates->find('all')          
                  ->where($cond)        
                  ->offset($offset)
                  ->limit($limit)
                  ->order([$tabcolmn => $order])
                  ->hydrate(false)
                  ->toArray();
     
            $recordsTotal = $this->EmailTemplates->find('all')->count();  
            $recordsArr=array();
            if(!empty($records)){
                
                $recordsArr['draw'] = $_REQUEST['draw'];
                $recordsArr['recordsTotal'] = $recordsTotal;
                $recordsArr['recordsFiltered'] = $recordsTotal;

                $i=1;
                // echo "<pre>";print_r($records);die;

                foreach ($records as $key => $record) {
                    $actions=""; 
                    $actions .= '<a href="'.HTTP_ROOT.'email-template/edit-email-template/'.base64_encode(convert_uuencode( $record['id'] )).'" title="Edit" class="system_editIcon"><i class="fa fa-pencil font-dark" aria-hidden="true"></i></a>';

                    $data = [$i+$offset, $record['title'] , $record['subject'],$record['alias'],$actions ];

                    $recordsArr['data'][] = $data;
                    
                  $i++;  
                }
            }
        echo json_encode($recordsArr);die;                          
    }

    // Get all users listing
    public function getUsersListing()
    {    
         $this->loadModel('Users');

         $limit  = $_REQUEST['length'];
         $offset = $_REQUEST['start'];
         //$order = $_REQUEST['order'];
         $column = $_REQUEST['order'][0]['column'];
         $order  = $_REQUEST['order'][0]['dir'];
         
         if(empty($order)){
           $order='desc';
         }

         if($column==1){
            $tabcolmn ="Users.id"; 
         }else{
            $tabcolmn="Users.modified";
         }
         $cond =[];
         if(isset($_REQUEST['search']['value']) && !empty($_REQUEST['search']['value']))
         {
                $keyWords=$_REQUEST['search']['value'];
                $cond = array_merge($cond,array("OR"=>array(
                         "Users.firstname LIKE"=>"%$keyWords%",
                         "Users.lastname LIKE"=>"%$keyWords%",
                         "Users.email LIKE"=>"%$keyWords%"
                )));
               
         }  

            $records = $this->Users->find('all') 
                  ->contain(['UserRoles'])           
                  ->where($cond)        
                  ->offset($offset)
                  ->limit($limit)
                  ->order([$tabcolmn => $order])
                  ->hydrate(false)
                  ->toArray();
     
            $recordsTotal = $this->Users->find('all')->contain(['UserRoles'])->count();  
            $recordsArr=array();
            if(!empty($records)){
                
                $recordsArr['draw'] = $_REQUEST['draw'];
                $recordsArr['recordsTotal'] = $recordsTotal;
                $recordsArr['recordsFiltered'] = $recordsTotal;

                $i=1;
                //echo "<pre>";print_r($records);die;

                foreach ($records as $key => $record) {
                    $fullname = $record['firstname'].' '.$record['lastname'];
                    $userRole = ucfirst($record['user_role']['role_name']);
                    $actions=""; 
                    if($record['status'] == 0 ){
                        $status = 'on';
                        $Status_title = 'Inactive';
                        $display_status_title = 'active';
                        $userClass = 'fa fa-user-times text-danger';
                    }else{
                        $status = 'off';
                        $userClass = 'fa fa-user text-green';
                        $Status_title = 'Active';
                        $display_status_title = 'Inactive';
                    }

                    $actions .= '<a onclick="return confirm('."'".'Are you sure you want to '.$display_status_title.'?'."'".') ? ( location.href='."'".HTTP_ROOT.'admin/change-user-status/'.$record['id']."/".$status."/admin/users-listing'".') : '."''".'" title="'.$display_status_title.'" class="system_user" ><i class="'.$userClass.'" aria-hidden="true"></i></a>';
                    $actions .= ' | ';
                    $actions .= '<a href="'.HTTP_ROOT.'admin/edit-user/'.base64_encode(convert_uuencode( $record['id'])).'" title="Edit" class="system_editIcon"><i class="fa fa-pencil font-dark" aria-hidden="true"></i></a>';
                    

                    $data = [$i+$offset, $fullname , $record['email'],$userRole,$Status_title,$actions ];

                    $recordsArr['data'][] = $data;
                    
                  $i++;  
                }
            }
        echo json_encode($recordsArr);die;                          
    }
    
    // Get cron jobs listing
    public function getCronJobListing()
    {    
         $this->loadModel('CronJobs');

         $limit  = $_REQUEST['length'];
         $offset = $_REQUEST['start'];
         //$order = $_REQUEST['order'];
         $column = $_REQUEST['order'][0]['column'];
         $order  = $_REQUEST['order'][0]['dir'];
         
         if(empty($order)){
           $order='desc';
         }

         if($column==1){
            $tabcolmn ="CronJobs.id"; 
         }else{
            $tabcolmn="CronJobs.modified";
         }
         $cond =[];
         if(isset($_REQUEST['search']['value']) && !empty($_REQUEST['search']['value']))
         {
                $keyWords=$_REQUEST['search']['value'];
                $cond = array_merge($cond,array("OR"=>array(
                         "CronJobs.name LIKE"=>"%$keyWords%",
                         "CronJobs.url LIKE"=>"%$keyWords%",
                         
                )));
               
         }  

            $records = $this->CronJobs->find('all') 
                        
                  ->where($cond)        
                  ->offset($offset)
                  ->limit($limit)
                  ->order([$tabcolmn => $order])
                  ->hydrate(false)
                  ->toArray();
     
            $recordsTotal = $this->CronJobs->find('all')->count();  
            $recordsArr=array();
            if(!empty($records)){
                
                $recordsArr['draw'] = $_REQUEST['draw'];
                $recordsArr['recordsTotal'] = $recordsTotal;
                $recordsArr['recordsFiltered'] = $recordsTotal;

                $i=1;
                //echo "<pre>";print_r($records);die;

                foreach ($records as $key => $record) {
                    $cronjobname = $record['name'];
                    
                    $actions=""; 
                    /*if($record['status'] == 0 ){
                        $status = 'on';
                        $Status_title = 'Inactive';
                        $display_status_title = 'active';
                        $userClass = 'fa fa-user-times text-danger';
                    }else{
                        $status = 'off';
                        $userClass = 'fa fa-user text-green';
                        $Status_title = 'Active';
                        $display_status_title = 'Inactive';
                    }*/

                   /* $actions .= '<a onclick="return confirm('."'".'Are you sure you want to '.$display_status_title.'?'."'".') ? ( location.href='."'".HTTP_ROOT.'admin/change-user-status/'.$record['id']."/".$status."/admin/users-listing'".') : '."''".'" title="'.$display_status_title.'" class="system_user" ><i class="'.$userClass.'" aria-hidden="true"></i></a>';
                    $actions .= ' | ';*/
                    $actions .= '<a href="'.HTTP_ROOT.'admin/edit-cron-job/'.base64_encode(convert_uuencode( $record['id'])).'" title="Edit" class="system_editIcon"><i class="fa fa-pencil font-dark" aria-hidden="true"></i></a>';
                    

                    $data = [$i+$offset, $cronjobname , $record['description'],$record['url'],$actions ];

                    $recordsArr['data'][] = $data;
                    
                  $i++;  
                }
            }
        echo json_encode($recordsArr);die;                          
    }
    
}   

