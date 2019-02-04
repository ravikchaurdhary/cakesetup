<!-- Content Wrapper. Contains page content -->
<!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Edit Cron Job
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= HTTP_ROOT.'admin/dashboard'; ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo HTTP_ROOT.'admin/cron-job-listing'; ?>">Cron Job Listing</a></li>
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
                            'class'=>'form-horizontal',
                            'id'=>'EditCronJob',
                            'enctype'=>'multipart/form-data',
                            //'novalidate'=>'novalidate',
                          //  'autocomplete'=>'off'
                        
                         ]);

                         echo $this->Form->input('id',[
                            'type'=>'hidden',
                            'value'=>$CronJobsData->id]);
                         ?>
                        <div class="form-body">
                            <h3 class="form-section"></h3>      
                              <div class="form-group">
                                <label for="inputName" class="col-sm-2 control-label">Name*</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="name" placeholder="Name" value="<?php echo isset($CronJobsData->name)? $CronJobsData->name:'' ?>">
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="inputName" class="col-sm-2 control-label">Url*</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="url" placeholder="Url" value="<?php echo isset($CronJobsData->url)? $CronJobsData->url:'' ?>">
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="inputExperience" class="col-sm-2 control-label">Description*</label>

                                <div class="col-sm-10">
                                  <textarea class="form-control" id="address" name="description" placeholder="Description"><?php echo isset($CronJobsData->description)? $CronJobsData->description:'' ?></textarea>
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
