<?php if ($ajax) { ?>
<script type="text/javascript">
$(document).ready(function () {
	$('#add_to_cart').removeAttr('onclick');
	$('#add_to_cart').click(function () {
		$.ajax({
			type: 'post',
			url: 'index.php?route=module/cart_ajax_1/callback',
			dataType: 'json',
			data: $('#product :input'),
			success: function (html) {
				$('#cart_button').html(html['cart_button']);
				$('#cart_container').html(html['cart_container']);
			},
			complete: function () {
				var image = $('#image').offset();
				var cart  = $('#cart_button').offset();
				$('#image').before('<img src="' + $('#image').attr('src') + '" id="temp" style="position: absolute; top: ' + image.top + 'px; left: ' + image.left + 'px;" />');
				params = {
					top : cart.top + 'px',
					left : cart.left + 'px',
					opacity : 0.0,
					width : $('#cart_button').width(),
					height : $('#cart_button').height()
				};
				$('#temp').animate(params, 'slow', false, function () { $('#temp').remove(); });
				$('#cart_button').hide().fadeIn(1000);
			}
		});
	});
});
</script>
<?php } ?>
<script type="text/javascript"><!--
$(document).ready(function () {
	$('#cart_button').bind('click', function() { $('#cart_container').slideToggle(300); });
	$.ajax({
		type: 'get',
		url: 'index.php?route=module/cart_ajax_1/callback',
		dataType: 'json',
		success: function (html) {
			$('#cart_button').hide().html(html['cart_button']).fadeIn(2000);
			$('#cart_container').html(html['cart_container']);
		}
	});
	$('.cart_remove').live('click', function () {
		if (!confirm('<?php echo $text_confirm; ?>')) { return false; }
		$(this).removeClass('cart_remove').addClass('cart_remove_loading');
		$.ajax({
			type: 'post',
			url: 'index.php?route=module/cart_ajax_1/callback',
			dataType: 'json',
			data: 'remove=' + this.id,
			success: function (html) {
				$('#cart_button').html(html['cart_button']);
				$('#cart_container').html(html['cart_container']);
				if (getUrlParam('route').indexOf('checkout') != -1) { window.location.reload(); }
			},
			complete: function () { $('#cart_button').hide().fadeIn(1000); }
		});
	});
});
//--></script>