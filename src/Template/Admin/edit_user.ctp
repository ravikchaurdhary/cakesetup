<!-- Content Wrapper. Contains page content -->
<!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Edit User
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= HTTP_ROOT.'admin/dashboard'; ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a class="active" href="<?= HTTP_ROOT.'admin/users-listing'; ?>">User Listing</a></li>
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
                            'id'=>'EditUser',
                            'enctype'=>'multipart/form-data',
                            //'novalidate'=>'novalidate',
                          //  'autocomplete'=>'off'
                        
                         ]);

                         echo $this->Form->input('Users.id',[
                            'type'=>'hidden',
                            'value'=>$UserData->id]);
                         ?>
                        <div class="form-body">
                            <h3 class="form-section"></h3>      
                                <div class="row">
                                    <div class="col-md-6">
                                      <div class="form-group" >
                                        <label for="exampleInputPassword1">Firstname <span class="required">*</span>
                                        </label>
                                        <div >
                                        <?php 
                                           echo $this->Form->input('firstname',[
                                            'label' => false,
                                            'required' => true,
                                            'maxlength' => 100,
                                            'class'=>'form-control',
                                            'value'=>$UserData->firstname != ''?$UserData->firstname:'']);
                                        ?>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-6">
                                      <div class="form-group" >
                                        <label for="lastname">Lastname 
                                            <span class="required">*</span>
                                        </label>
                                        <div >
                                          <?php echo $this->Form->input('lastname',[
                                            'label' => false,
                                            'required' => true,
                                            'maxlength' => 100,
                                            'class'=>'form-control',
                                            'value'=>$UserData->lastname != ''?$UserData->lastname:'']);
                                          ?>
                                        </div>
                                      </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group" >
                                            <label for="email">Email 
                                                <span class="required">*</span>
                                            </label>
                                            <div>
                                                <?php 
                                                   echo $this->Form->input('email',[
                                                    'label' => false,
                                                    'required' => true,
                                                    'readonly' => 'readonly',
                                                    'disabled' => 'disabled',
                                                    'class'=>'form-control',
                                                    'value'=>$UserData->email != ''?$UserData->email:'']);
                                                ?>  
                                            </div>
                                        </div>
                                      </div>
                                      <div class="col-md-6">
                                        <div class="form-group" >
                                          <label for="country_code">Phone Number<span class="required">*</span>
                                          </label>
                                           <div class="row">
                                             <div class="col-md-4">
                                                
                                                  <select name="country_code" id="country_code" class="form-control" required = 'true'>
                                                    <option value="">--Select Country code -- </option>
                                                    <?php if(!empty($CountryCodesData)){ 
                                                            foreach($CountryCodesData as $CountryCodes){?>
                                                                 <option value="<?php echo $CountryCodes['phonecode']; ?>" <?php if($CountryCodes['phonecode'] == $UserData->country_code){ echo "selected=selected"; }?> > 
                                                                  
                                                                    <?php echo '(+ '.$CountryCodes['phonecode'].') - '.$CountryCodes['iso3']; ?>
                                                                    
                                                                  </option>
                                                    <?php } }?>  
                                                  </select>  
                                                
                                              </div>
                                              <div class="col-md-8">
                                                
                                                 <?php   echo $this->Form->input('phone_number',[
                                                      'label' => false,
                                                      'required' => true,
                                                      'maxlength' => 10,
                                                      'class'=>'form-control',
                                                      'value'=>$UserData->phone_number != ''?$UserData->phone_number:'']);
                                                  ?>
                                                
                                              </div>
                                            </div>  
                                        </div>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                       <div class="form-group has-feedback">
                                        <label for="exampleInputPassword1">User Role<span class="required">*</span>
                                          </label>
                                            <select name="role_id" id="role_id" class="form-control">
                                               <option value="">-- Select User Role -- </option>
                                              <?php if(!empty($UserRolesData)){
                                                    foreach($UserRolesData as $UserRoles){?>
                                                      <option value="<?php echo $UserRoles['id']; ?>" <?php if($UserRoles['id'] == $UserData->role_id){ echo "selected=selected";} ?>> <?php echo ucfirst($UserRoles['role_name']); ?> </option>
                                              <?php } }?>  
                                                
                                            </select>
                                        </div>
                                      </div>

                                     <div class="col-md-6">
                                       <div class="form-group has-feedback">
                                        <label for="exampleInputPassword1">Profile Picture<span class="required">*</span>
                                          </label>
                                            
                                                <input type="file" class="form-control" id="profile_picture" name="profile_picture" placeholder="Profile Picture">
                                                <input type="text" class="invisible" id="profile_picture_img" name="profile_picture_img" value="<?php echo !empty($UserData->profile_picture)? '1':'' ?>"> 
                                             
                                                <?php 
                                                  if(!empty($UserData->profile_picture)){
                                                    $user_image = $UserData->profile_picture;
                                                  }else{
                                                    $user_image = 'dp-image.png';
                                                  }
                                                ?>
                                               <img class="profile-user-img img-responsive" src="<?php echo HTTP_ROOT.'img/uploads/profile_pic/'.$user_image; ?>" alt="Site Logo">
                                            
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
