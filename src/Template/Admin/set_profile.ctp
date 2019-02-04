
<!-- Content Wrapper. Contains page content -->
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Admin Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo HTTP_ROOT.'admin/dashboard'; ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo HTTP_ROOT.'admin/set-profile/'.base64_encode(convert_uuencode($AdminData->id)); ?>">Admin Profile</a></li>
        
      </ol>
    </section>
     <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">

              <img class="profile-user-img img-responsive img-circle" src="<?php echo HTTP_ROOT.'img/uploads/profile_pic/'.$admin_image; ?>" alt="User profile picture">

              <h3 class="profile-username text-center"><?php echo $AdminData->firstname.' '.$AdminData->lastname;?></h3>

              <p class="text-muted text-center"><?php echo ucfirst($AdminData->user_role->role_name);?></p>
              <p class="text-muted text-center"><small>Member since  <?php echo date(' M, Y ',strtotime($AdminData->created)) ; ?></small></p>
              <!--
              <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>-->
            </div>
            <!-- /.box-body -->
          </div>
          
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="<?php if(empty($tabValue) || (!empty($tabValue) && ($tabValue == 'ProfileSetup'))){ echo "active"; }?>"><a href="#profileSetUp" data-toggle="tab">Profile Setup</a></li>
              <li class="<?php if(!empty($tabValue) && ($tabValue == 'ChangePassword')){ echo "active"; }?>"><a href="#ChangePassword" data-toggle="tab">Change Password</a></li>
              <li class="<?php if(!empty($tabValue) && ($tabValue == 'SiteSettings')){ echo "active"; }?>"><a href="#SiteSettings" data-toggle="tab">Site Settings</a></li>
            </ul>
            <div class="tab-content">
              <div class="<?php if(empty($tabValue) || (!empty($tabValue) && ($tabValue == 'ProfileSetup'))){ echo "active"; }?> tab-pane" id="profileSetUp">
                

                <?php  echo $this->Form->create(null, ['name' => 'adminEditProfile','id'=>'adminEditProfile','class'=>'form-horizontal','enctype'=>'multipart/form-data']); ?>

                  <input type="hidden" class="form-control" name="type" value="profile">
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Firstname*</label>

                    <div class="col-sm-10">
                       <input type="text" class="form-control" name="firstname" placeholder="Firstname" value="<?php echo isset($AdminData->firstname)? $AdminData->firstname:'' ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Lastname*</label>

                    <div class="col-sm-10">
                       <input type="text" class="form-control" name="lastname" placeholder="Lastname"  value="<?php echo isset($AdminData->lastname)? $AdminData->lastname:'' ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email*</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" name="email" placeholder="Email" value="<?php echo isset($AdminData->email)? $AdminData->email:'' ?>">
                    </div>
                  </div>
                   <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">PhoneNumber*</label>
                      <div class="row">
                         <div class="col-md-4">
                            
                              <select name="country_code" id="country_code" class="form-control" required = 'true'>
                                <option value="" >--Select Country code -- </option>
                                <?php if(!empty($CountryCodesData)){ 
                                        foreach($CountryCodesData as $CountryCodes){?>
                                             <option value="<?php echo $CountryCodes['phonecode']; ?>" <?php if($CountryCodes['phonecode'] == $AdminData->country_code){ echo "selected=selected"; }?> > 
                                              
                                                <?php echo '(+ '.$CountryCodes['phonecode'].') - '.$CountryCodes['iso3']; ?>
                                                
                                              </option>
                                <?php } }?>  
                              </select>  
                            
                          </div>
                        <div class="col-sm-5">
                          <input type="text" class="form-control" name="phone_number" placeholder="Phone number" value="<?php echo isset($AdminData->phone_number)? $AdminData->phone_number:'' ?>">
                        </div>
                    </div>    
                  </div>
                  
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Address*</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="address" name="address" placeholder="Address"><?php echo isset($AdminData->address)? $AdminData->address:'' ?></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">State*</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="state" placeholder="State" value="<?php echo isset($AdminData->state)? $AdminData->state:'' ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Country*</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="country" placeholder="Country" value="<?php echo isset($AdminData->country)? $AdminData->country:'' ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="profile_picture" class="col-sm-2 control-label">Profile Picture*</label>
                    <div class="col-sm-5">
                      <input type="file" class="form-control" id="profile_picture" name="profile_picture" placeholder="Profile Picture">
                      <input type="text" class="invisible" id="profile_picture_img" name="profile_picture_img" value="<?php echo !empty($AdminData->profile_picture)? '1':'' ?>"> 
                    </div>
                    <div class="col-sm-5">
                     <img class="profile-user-img img-responsive" src="<?php echo HTTP_ROOT.'img/uploads/profile_pic/'.$admin_image; ?>" alt="Site Logo">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                       <button type="submit" name="submit" class="btn btn-primary btn-block btn-flat">Save</button>
                    </div>
                  </div>
                  <?php  echo $this->Form->end();  ?>
              </div>
              <!-- /.tab-pane -->
              <div class="<?php if(!empty($tabValue) && ($tabValue == 'ChangePassword')){ echo "active"; }?> tab-pane" id="ChangePassword">
               
                <?php  echo $this->Form->create(null, ['name' => 'adminChangePassword','id'=>'adminChangePassword','class'=>'form-horizontal']); ?>
                
                 <input type="hidden" class="form-control" name="type" value="ChangePassword">
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Password*</label>
                    <div class="col-sm-10">
                       <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Confirm Password*</label>

                    <div class="col-sm-10">
                      <input type="password" class="form-control" name="confirm_password" placeholder="Retype password">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                       <button type="submit" name="submit" class="btn btn-primary btn-block btn-flat">Save</button>
                    </div>
                  </div>
                  <?php  echo $this->Form->end();  ?>
              </div>
              <!-- /.tab-pane -->

              <div class="<?php if(!empty($tabValue) && ($tabValue == 'SiteSettings')){ echo "active"; }?> tab-pane" id="SiteSettings">
               
                <?php  echo $this->Form->create(null, ['name' => 'siteSettingForm','id'=>'siteSettingForm','class'=>'form-horizontal','enctype'=>'multipart/form-data']); ?>
                  
                  <input type="hidden" class="form-control" name="type" value="SiteSettings">
                  <div class="form-group">
                    <label for="site_name" class="col-sm-2 control-label">Site Name*</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control" name="site_name" placeholder="Site Name" value="<?php echo isset($SiteSettingData->site_name)? $SiteSettingData->site_name:'' ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="site_email" class="col-sm-2 control-label">Site Email*</label>

                    <div class="col-sm-10">
                       <input type="email" class="form-control" name="site_email" placeholder="Site Email" value="<?php echo isset($SiteSettingData->site_email)? $SiteSettingData->site_email:'' ?>">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="site_favicon" class="col-sm-2 control-label">Site Favicon*</label>

                    <div class="col-sm-5">
                      <input type="file" class="form-control" id="site_favicon" name="site_favicon" placeholder="Site Favicon">
                      <input type="text" class="invisible" id="site_favicon_img" name="site_favicon_img" value="<?php echo !empty($SiteSettingData->site_favicon)? '1':'' ?>">
                    </div>
                    <div class="col-sm-5">
                        <img class="profile-user-img img-responsive" src="<?php echo HTTP_ROOT.'img/uploads/site_favicon/'.$site_favicon; ?>" alt="Site Favicon">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="site_logo" class="col-sm-2 control-label">Site Logo*</label>

                    <div class="col-sm-5">
                      <input type="file" class="form-control" id="site_logo" name="site_logo" placeholder="Site Logo">
                      <input type="text" class="invisible" id="site_logo_img" name="site_logo_img" value="<?php echo !empty($SiteSettingData->site_logo)? '1':'' ?>"> 
                    </div>
                    <div class="col-sm-5">
                     <img class="profile-user-img img-responsive" src="<?php echo HTTP_ROOT.'img/uploads/site_logo/'.$site_logo; ?>" alt="Site Logo">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Address*</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="address" name="address" placeholder="Address"><?php echo isset($SiteSettingData->address)? $SiteSettingData->address:'' ?></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">CopyRight*</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="copyright" name="copyright" placeholder="CopyRight"><?php echo isset($SiteSettingData->copyright)? $SiteSettingData->copyright:'' ?></textarea>
                    </div>
                  </div> 
                  <div class="form-group">
                    <label for="fb_link" class="col-sm-2 control-label">Facebook Link</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="fb_link" placeholder="(Optional)" value="<?php echo isset($SiteSettingData->fb_link)? $SiteSettingData->fb_link:'' ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="fb_link" class="col-sm-2 control-label">Twitter Link</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="twitter_link" placeholder="(Optional)" value="<?php echo isset($SiteSettingData->twitter_link)? $SiteSettingData->twitter_link:'' ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="fb_link" class="col-sm-2 control-label">Google Link</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="google_link" placeholder="(Optional)" value="<?php echo isset($SiteSettingData->google_link)? $SiteSettingData->google_link:'' ?>">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                       <button type="submit" name="submit" class="btn btn-primary btn-block btn-flat">Save</button>
                    </div>
                  </div>
                  <?php  echo $this->Form->end();  ?>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->

   