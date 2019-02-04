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
class EmailTemplateController extends AppController
{
	public function initialize() 
    {
        $this->loadComponent('Flash');
        $this->loadComponent('Auth');
        //$this->Auth->allow(['logout']); 

        //get login user and site configuratin Data
        $this->getUserAndSiteConfigureData();
    
    }
    //For Email Template 
    public function emailTemplateListing()
    {   
        $this->viewBuilder()->layout('admin_inner_datatable');   

    }
    public function editEmailTemplate($id=null)
    {
        $this->viewBuilder()->layout('admin_inner_editor');      
        $template_id = convert_uudecode(base64_decode($id));
        $EmailTemplateModel = TableRegistry::get('EmailTemplates');
        $EmailTemplateData = $EmailTemplateModel->get($template_id);
        $this->set('emailTemp',$EmailTemplateData);

        if($this->request->is('post')){
           
            $EmailTempData = $EmailTemplateModel->newEntity($this->request->data);
            $EmailTempData->modified = date('Y-m-d H:i:s');
            if($EmailTemplateModel->save($EmailTempData)){
                 $this->Flash->success('Email Template data has been updated successfully.');
                 return $this->redirect('/email-template/email-template-listing');
            }else{
                $this->Flash->success('Something went wrong.');
            }
        }
        
    }
} 
