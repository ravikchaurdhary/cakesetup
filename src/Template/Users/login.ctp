<div class="login-box">
<div class="login-logo">
    <a href="../../index2.html"><b>Sign In</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

   <?php  echo $this->Form->create(null, ['name' => 'signInForm','id'=>'signInForm']); ?>

      <div class="form-group has-feedback">
        <input type="email" class="form-control" name="email" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox ">
            <label>
              <input type="checkbox" name="remember"> Remember Me
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    <?php  echo $this->Form->end();  ?>
    <div class="row">
      <div class="col-xs-6">
        <a href="<?php echo HTTP_ROOT.'users/reset-password';?>">I forgot my password</a>
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