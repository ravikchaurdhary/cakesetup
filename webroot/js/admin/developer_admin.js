$(document).ready(function(){
	
	$('#site_favicon').change(function(){
			var ImgVal = $(this).val();
			$('#site_favicon_img').val(ImgVal);
	});

	$('#site_logo').change(function(){
			var ImgVal = $(this).val();
			$('#site_logo_img').val(ImgVal);
	});
	$('#profile_picture').change(function(){
			var ImgVal = $(this).val();
			$('#profile_picture_img').val(ImgVal);
	});
});