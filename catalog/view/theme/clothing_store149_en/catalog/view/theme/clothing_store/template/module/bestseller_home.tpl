<?php if ($products) { ?>
<div class="heading_title"><?php echo $heading_title; ?></div>
<ul id="slider_bestseller" class="jcarousel-skin-tango">
 <?php include (DIR_TEMPLATE.'clothing_store\template\listing\listing.tpl'); ?>
</ul>
<div class="clear"></div>
<script type="text/javascript">
$(document).ready(function() {
	jQuery('#slider_bestseller').jcarousel();
});
</script>
<?php } ?>