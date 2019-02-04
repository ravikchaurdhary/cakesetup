<?php
if (!isset($params['escape']) || $params['escape'] !== false) {
    $message = h($message);
}
?>
<!--<div class="message error" onclick="this.classList.add('hidden');"><?= $message ?></div>-->
<script type="text/javascript">
		toastr.error('<?php echo $message; ?>', '', {timeOut: 5000})
</script>