<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content"><?php if ($welcome) { ?><?php echo $welcome; ?><?php } ?></div>
 <?php foreach ($modules as $module) { ?><?php echo ${$module['code']}; ?><?php } ?>
</div>
<?php echo $footer; ?>