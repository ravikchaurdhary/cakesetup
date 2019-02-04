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
class CronController extends AppController
{
	public function initialize() 
    {
        $this->loadComponent('Flash');
        $this->loadComponent('Auth');
        //$this->Auth->allow(['logout']); 
        $this->Auth->allow(['sendingEmailToUsers']); 
    }
    // Cron Job Listing
    public function cronJobListing()
    {
        $this->viewBuilder()->layout('admin_inner'); 

    }

    //For Send Pending Email to Users
    public function sendingEmailToUsers(){

      $this->loadModel('SendingEmails');
      
      $SendingEmailsData = $this->SendingEmails->find('all')->where(['SendingEmails.status'=>'pending'])->toArray();
      $replace = array();
      $with = array();
      if(!empty($SendingEmailsData)){
              foreach($SendingEmailsData as $SendingEmails){
                    $id = $SendingEmails->id;
                    $ReceiverEmail = $SendingEmails->email;
                    if (!empty($ReceiverEmail)) {
                          $slug = $SendingEmails->slug;
                          $DecodedJsonData = json_decode($SendingEmails->replace_field);
                          if(!empty($DecodedJsonData)){
                              foreach($DecodedJsonData as $key => $DecodedJson){
                                      $replace[] = $key;
                                     
                                      if($key == '{link}'){
                                          //$linkOnMail = '<a href="'.$DecodedJson.'" target="_blank">Click here to see event detail</a>';
                                          $with[]= $DecodedJson;
                                      }else{
                                          $with[]= $DecodedJson;
                                      }
                              }
                          }
                          //Send email
                          $this->send_email('',$replace,$with,$slug,$ReceiverEmail); 
                    }

                    //Send sms
                    /*$ReceiverId          = $SendingEmails->users_to->id;
                    $SenderId            = $SendingEmails->users_by->id;
                    $ReceiverPhone       = $SendingEmails->users_to->phone;
                    $ReceiverCountryCode = $SendingEmails->users_to->country_code;
                    $message_body        = $SendingEmails->message_body;
                    $notifylink          = $SendingEmails->notify_link;
                    $eventId             = $SendingEmails->event_id;
                    $groupId             = $SendingEmails->group_id;
                    $notify_message      = $SendingEmails->notify_message;
                   */

                    //Send sms via phone
                    /*if ( !empty($ReceiverPhone) && !empty($message_body) ) {
                         $send_message = $this->sendMessages($ReceiverPhone, $message_body,$ReceiverCountryCode);
                          $content=$message_body;  
                          $message=explode(".",$content);
                          $content =$message[0];
                         
                         $this->putSmsLogs($SenderId ,$ReceiverPhone,$ReceiverId,$content,$eventId,$groupIds=''); 
                    }*/
                    
                    //Send notification for event
                    /*if (!empty($ReceiverId) && !empty($notify_message)) {
                      
                        //$groupData = $this->userEvents->find('all')->where(['userEvents.id' => $eventId ])->first();
                        //$event_title=$groupData->event_title;

                       //$this->recordNotifications($ReceiverId,$SenderId,$notifylink,'You have been invited to attend the '.$event_title.' event');
                       $this->recordNotifications($ReceiverId,$SenderId,$notifylink,$notify_message);
                    } */
       
               

                    //Send notification for group
                    //if (!empty($ReceiverId)) {
                        
                        //$groupData = $this->Groups->find('all')->where(['Groups.id' => $groupId ])->first();
                        //$groupName = $groupData->group_name;

                       // $this->recordNotifications($ReceiverId, $SenderId ,$notifylink,$notify_message);

                    //}
                    
                    $this->SendingEmails->updateAll(['status'=>'sent'],['id'=>$id]);
              }
      }
      die("email Send");

    }


} 
