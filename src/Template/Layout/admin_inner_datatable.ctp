
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

        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css'; ?>">
        
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/dist/css/AdminLTE.min.css'; ?>">

        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/theme/dist/css/skins/_all-skins.min.css'; ?>">
 
        <link rel="stylesheet" href="<?php echo HTTP_ROOT.'webroot/css/admin/developer_admin.css'; ?>"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"> 
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
       
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <!-- END OF GLOBAL MANDATORY THEME STYLES -->
        
        <script src="<?php echo HTTP_ROOT;?>webroot/theme/bower_components/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js" type="text/javascript"></script>  
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <?php echo $this->element('adminElements/header'); ?>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
            <?php echo $this->element('adminElements/left_sidebar'); ?>
        </aside>
        <?= $this->Flash->render() ?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <?= $this->fetch('content') ?>
        </div>
        <footer>
             <?php echo $this->element('adminElements/footer'); ?>
        </footer>
            <?php echo $this->element('adminElements/control_sidebar'); ?>
    </div>
    <!-- ./wrapper --> 
    <?php echo $this->element('adminElements/theme_datatable_js'); ?>
</body>
</html>
