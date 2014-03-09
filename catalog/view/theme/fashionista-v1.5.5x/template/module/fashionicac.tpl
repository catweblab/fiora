<div class="featured-banners">


<?php if(($this->config->get('cbanner1_title') != null)) { ?>
<div class="featured-content"><h3><span><?php if(($this->config->get('cbanner1_title') != null)) { ?>
<?php echo $this->config->get('cbanner1_title') ?><?php } ?></span></h3><p><?php if ($cbanner1) { ?>
<img src="<?php echo $cbanner1; ?>" class="right"/>
<?php } ?><?php if(($this->config->get('cbanner1_title') != null)) { ?>
<?php echo $this->config->get('cbanner1_content') ?><?php } ?></p>
<a href="<?php if(($this->config->get('cbanner1_url') != null)) { ?><?php echo $this->config->get('cbanner1_url') ?><?php } ?>" class="button">Read Mode &raquo;</a>
</div>
<?php } ?>


<?php if(($this->config->get('cbanner2_title') != null)) { ?>
<div class="featured-content"><h3><span><?php if(($this->config->get('cbanner2_title') != null)) { ?>
<?php echo $this->config->get('cbanner2_title') ?><?php } ?></span></h3><p><?php if ($cbanner2) { ?>
<img src="<?php echo $cbanner2; ?>"  class="right"/>
<?php } ?><?php if(($this->config->get('cbanner2_content') != null)) { ?>
<?php echo $this->config->get('cbanner2_content') ?><?php } ?></p>
<a href="<?php if(($this->config->get('cbanner2_url') != null)) { ?><?php echo $this->config->get('cbanner2_url') ?><?php } ?>" class="button">Read Mode &raquo;</a>
</div>
<?php } ?>


<?php if(($this->config->get('cbanner3_title') != null)) { ?>
<div class="featured-content featured-last"><h3><span><?php if(($this->config->get('cbanner3_title') != null)) { ?>
<?php echo $this->config->get('cbanner3_title') ?><?php } ?></span></h3><p><?php if ($cbanner3) { ?>
<img src="<?php echo $cbanner3; ?>" class="right" />
<?php } ?><?php if(($this->config->get('cbanner3_content') != null)) { ?>
<?php echo $this->config->get('cbanner3_content') ?><?php } ?></p>
<a href="<?php if(($this->config->get('cbanner3_url') != null)) { ?><?php echo $this->config->get('cbanner3_url') ?><?php } ?>" class="button">Read Mode &raquo;</a>
</div>
<?php } ?>
</div>
<div class="clear-right"></div>