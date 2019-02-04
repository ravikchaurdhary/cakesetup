<!-- Content Wrapper. Contains page content -->
<!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Edit Email Template
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= HTTP_ROOT.'admin/dashboard'; ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a class="active" href="<?= HTTP_ROOT.'email-template/email-templates-listing'; ?>">Email templates</a></li>
    </ol>
  </section>
<!-- BEGIN DASHBOARD STATS 1-->

<!-- Main content -->
  <section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                    <div class="box-header">
                         <h3 class="box-title">Update information</h3>
                    </div>
                     <!-- /.box-header -->
                    <div class="box-body">
                    <div class="portlet-body form">
                        <?php echo $this->Form->create(null, [
                            //'url' => ['controller' => 'email-template', 'action' => 'edit-email-template'],
                           // 'class'=>'horizontal-form',
                            'id'=>'EditEmailTemplate',
                            'enctype'=>'multipart/form-data',
                            //'novalidate'=>'novalidate',
                          //  'autocomplete'=>'off'
                        
                         ]);

                         echo $this->Form->input('EmailTemplates.id',[
                            'type'=>'hidden',
                            'value'=>$emailTemp->id]);
                         ?>
                  
                        <div class="form-body">
                            <h3 class="form-section"></h3>      
                                <div class="row">
                                    <div class="col-md-6">
                                      <div class="form-group" >
                                        <label for="exampleInputPassword1">Title <span class="required">*</span>
                                        </label>
                                        <div >
                                        <?php 
                                           echo $this->Form->input('EmailTemplates.title',[
                                            'label' => false,
                                            'required' => true,
                                            'maxlength' => 100,
                                            'class'=>'form-control',
                                            'value'=>$emailTemp->title != ''?$emailTemp->title:'']);
                                        ?>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-6">
                                      <div class="form-group" >
                                        <label for="exampleInputPassword1">Subject 
                                            <span class="required">*</span>
                                        </label>
                                        <div >
                                          <?php echo $this->Form->input('EmailTemplates.subject',[
                                            'label' => false,
                                            'required' => true,
                                            'maxlength' => 100,
                                            'class'=>'form-control',
                                            'value'=>$emailTemp->subject != ''?$emailTemp->subject:'']);
                                          ?>
                                        </div>
                                      </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group" >
                                            <label for="exampleInputPassword1">Allow vars 
                                                <span class="required">*</span>
                                            </label>
                                            <div>
                                                <?php 
                                                   echo $this->Form->input('EmailTemplates.allowed_vars',[
                                                    'label' => false,
                                                    'required' => true,
                                                    'readonly' => 'readonly',
                                                    'disabled' => 'disabled',
                                                    'class'=>'form-control',
                                                    'value'=>$emailTemp->allowed_vars != ''?$emailTemp->allowed_vars:'']);
                                                ?>  
                                            </div>
                                        </div>
                                      </div>
                                      <div class="col-md-6">
                                        <div class="form-group" >
                                          <label for="exampleInputPassword1">Email from <span class="required">*</span>
                                          </label>
                                          <div >
                                           <?php   echo $this->Form->input('EmailTemplates.email_from',[
                                                'label' => false,
                                                'required' => true,
                                                'maxlength' => 100,
                                                'class'=>'form-control',
                                                'value'=>$emailTemp->email_from != ''?$emailTemp->email_from:'']);
                                            ?>
                                          </div>
                                        </div>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                          <div class="form-group" >
                                            <label for="exampleInputPassword1">Email name<span class="required">*</span>
                                            </label>
                                            <div >
                                            <?php   
                                            echo $this->Form->input('EmailTemplates.email_name',[
                                                  'label' => false,
                                                  'required' => true,
                                                  'maxlength' => 100,
                                                  'class'=>'form-control',
                                                  'value'=>$emailTemp->email_name != ''?$emailTemp->email_name:'']);
                                              ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                  <div class="col-md-12">
                                    <div class="form-group" >
                                        <label for="exampleInputPassword1">Email content 
                                            <span class="required">*</span>
                                        </label>
                                        <div >
                                            <?php echo $this->Form->textarea('EmailTemplates.description',[
                                                 'escape' => false,
                                                 'label' => false,
                                                 'required' => true,
                                                 'value'=>$emailTemp->description != ''?$emailTemp->description:'',
                                                 'class'=>'form-control col-md-7 col-xs-12 tinymce', 'id'=>'description']);
                                            ?>
                                        </div>
                                    </div>
                                  </div>
                                </div>
              
                        </div>    
                        <div class="form-actions right">
                          <button type="button"  class="btn default" onclick="window.history.go(-1);"  >Cancel</button>
                          <button id="send" type="submit" class="btn blue"><i class="fa fa-check"></i> Save</button>
                        </div>
              
                      <?php echo $this->form->end(); ?>
                  </div>
              </div>
            <!-- /.box-body -->
          </div>
      <!-- /.box -->
    </div>
        <!-- /.col -->
  </div>
      <!-- /.row -->
</section>
    <!-- /.content -->
