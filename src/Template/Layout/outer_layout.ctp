
<!DOCTYPE html>
<html>
<head>
        <script type="text/javascript">
            var base_url = "<?php echo HTTP_ROOT; ?>"
        </script>

        <?= $this->Html->charset() ?>

        <meta charset="utf-8" />
         <title>
                <?= $this->fetch('title') ?>
        </title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta content="" name="description" />
        <meta content="" name="author" />
        
        <!-- BEGIN GLOBAL MANDATORY THEME STYLES -->
        <?= $this->Html->meta('icon') ?>
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/bower_components/bootstrap/dist/css/bootstrap.min.css'; ?>">

        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/bower_components/font-awesome/css/font-awesome.min.css'; ?>">
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/bower_components/Ionicons/css/ionicons.min.css'; ?>">
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/dist/css/AdminLTE.min.css'; ?>">
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/dist/css/skins/_all-skins.min.css'; ?>">
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/plugins/iCheck/square/blue.css'; ?>"> 
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/css/admin/developer_admin.css'; ?>"> 

       <!-- <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/css/base.css'; ?>">
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/css/home.css'; ?>">
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/css/style.css'; ?>">
         
        <!-- <?= $this->Html->css('theme/bower_components/bootstrap/dist/css/bootstrap.min.css') ?>
        <?= $this->Html->css('theme/bower_components/font-awesome/css/font-awesome.min.css') ?>
        <?= $this->Html->css('theme/bower_components/Ionicons/css/ionicons.min.css') ?>
        
        <?= $this->Html->css('theme/dist/css/AdminLTE.min.css') ?>
        <?= $this->Html->css('theme/dist/css/skins/_all-skins.min.css') ?>

        <?= $this->Html->css('theme/bower_components/morris.js/morris.css') ?>
        <?= $this->Html->css('theme/bower_components/jvectormap/jquery-jvectormap.css') ?>
        <?= $this->Html->css('theme/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') ?>
        <?= $this->Html->css('theme/bower_components/bootstrap-daterangepicker/daterangepicker.css') ?>
        <?= $this->Html->css('theme/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') ?> -->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <!-- END OF GLOBAL MANDATORY THEME STYLES -->
        <!-- jQuery 3 -->
        <script src="<?php echo HTTP_ROOT;?>webroot/theme/bower_components/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js" type="text/javascript"></script>  
</head>
<body class="skin-blue hold-transition login-page">
        <?php echo $this->element('adminElements/header_outer'); ?>
        <?= $this->Flash->render() ?> 
        <!-- Content Wrapper. Contains page content -->
        <?= $this->fetch('content') ?>
        <?php echo $this->element('adminElements/theme_js'); ?>
  
 </body>
</html>
