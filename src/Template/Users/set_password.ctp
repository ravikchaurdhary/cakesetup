<div class="login-box">
<div class="login-logo">
    <a href="../../index2.html"><b>Reset Password</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Reset your password</p>

   <?php  echo $this->Form->create(null, ['name' => 'setPasswordForm','id'=>'setPasswordForm']); ?>

      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" id="password" placeholder="Password">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-12">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Change Password</button>
        </div>
        <!-- /.col -->
      </div>
    <?php  echo $this->Form->end();  ?> 
   
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->