<div class="featured-banners">
<?php if ($banner1_url) { ?>
<?php if ($banner1) { ?><div class="featured-banners-in"><a href="<?php echo $this->config->get('banner1_url') ?>"><img src="<?php echo $banner1; ?>"/></a></div><?php } ?>
<?php } else {?> 
<?php if ($banner1) { ?><div class="featured-banners-in"><img src="<?php echo $banner1; ?>"/></div><?php } ?>
<?php } ?>

<?php if ($banner2_url) { ?>
<?php if ($banner2) { ?><div class="featured-banners-in"><a href="<?php echo $this->config->get('banner2_url') ?>"><img src="<?php echo $banner2; ?>"/></a></div><?php } ?>
<?php } else {?> 
<?php if ($banner2) { ?><div class="featured-banners-in"><img src="<?php echo $banner2; ?>"/></div><?php } ?>
<?php } ?>

<?php if ($banner3_url) { ?>
<?php if ($banner3) { ?><div class="featured-banners-in featured-last"><a href="<?php echo $this->config->get('banner3_url') ?>"><img src="<?php echo $banner3; ?>"/></a></div><?php } ?>
<?php } else {?> 
<?php if ($banner3) { ?><div class="featured-banners-in featured-last"><img src="<?php echo $banner3; ?>"/></div><?php } ?>
<?php } ?>
</div>

<div class="clear-right"></div>