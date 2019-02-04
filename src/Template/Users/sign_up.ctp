<div class="register-box">
  <div class="register-logo">
    <a href="../../index2.html"><b>SignUp</b></a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>
      <?php  echo $this->Form->create(null, ['name' => 'signUpForm','id'=>'signUpForm']); ?>
        <div class="form-group has-feedback">
           
            <select name="role_id" id="role_id" class="form-control">
               <option value="">-- Select User Role -- </option>
              <?php if(!empty($UserRolesData)){
                    foreach($UserRolesData as $UserRoles){?>
                      <option value="<?php echo $UserRoles['id']; ?>"> <?php echo ucfirst($UserRoles['role_name']); ?> </option>
              <?php } }?>  
                
            </select>
        </div>
        <div class="form-group has-feedback">
            <input type="text" class="form-control" name="firstname" placeholder="Firstname">
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="text" class="form-control" name="lastname" placeholder="Lastname">
          <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="email" class="form-control" name="email" placeholder="Email">
          <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" name="password" id="password" placeholder="Password">
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" name="confirm_password" placeholder="Retype password">
          <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
        </div>
        <div class="row">
          <div class="col-xs-8">
            <div class="checkbox ">
              <label>
                <input type="checkbox" name="agree_condition"> I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <div class="col-xs-4">
            <button type="submit" name="submit" class="btn btn-primary btn-block btn-flat">Register</button>
          </div>
        </div>  
    <?php  echo $this->Form->end();  ?>
    <a href="<?php echo HTTP_ROOT.'users/login'; ?>" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->