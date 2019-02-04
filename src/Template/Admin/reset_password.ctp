<div class="login-box">
<div class="login-logo">
    <a href="../../index2.html"><b>Reset Password</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Reset your password using registed email</p>

   <?php  echo $this->Form->create(null, ['name' => 'resetPasswordForm','id'=>'resetPasswordForm']); ?>

      <div class="form-group has-feedback">
        <input type="email" class="form-control" name="email" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      
      <div class="row">
        
        <!-- /.col -->
        <div class="col-xs-12">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Reset Password</button>
        </div>
        <!-- /.col -->
      </div>
    <?php  echo $this->Form->end();  ?>
    <div class="row">
      <div class="col-xs-6">
        <a href="<?php echo HTTP_ROOT.'users/login'; ?>">Sign-In exist user</a>
      </div>
      <!-- /.col -->
      <div class="col-xs-6">
         <a href="<?php echo HTTP_ROOT.'users/sign-up';?>" class="text-center">Register a new user</a>
      </div>
      <!-- /.col -->
    </div>
  
   

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->