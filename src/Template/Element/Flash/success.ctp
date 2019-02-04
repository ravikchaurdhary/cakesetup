<?php
if (!isset($params['escape']) || $params['escape'] !== false) {
    $message = h($message);
}
?>
<!--<div class="message success" onclick="this.classList.add('hidden')"><?= $message ?></div>-->
<script type="text/javascript">
		toastr.success('<?php echo $message; ?>', '', {timeOut: 5000})
</script>
