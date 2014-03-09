<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($success) { ?><div class="success"><?php echo $success; ?></div><?php } ?>
  <p><b><?php echo $text_my_account; ?></b></p>
  <ul>
   <li><a href="<?php echo str_replace('&', '&amp;', $information); ?>"><?php echo $text_information; ?></a></li>
   <li><a href="<?php echo str_replace('&', '&amp;', $password); ?>"><?php echo $text_password; ?></a></li>
   <li><a href="<?php echo str_replace('&', '&amp;', $address); ?>"><?php echo $text_address; ?></a></li>
  </ul>
  <p><b><?php echo $text_my_orders; ?></b></p>
  <ul>
   <li><a href="<?php echo str_replace('&', '&amp;', $history); ?>"><?php echo $text_history; ?></a></li>
   <li><a href="<?php echo str_replace('&', '&amp;', $download); ?>"><?php echo $text_download; ?></a></li>
  </ul>
  <p><b><?php echo $text_my_newsletter; ?></b></p>
  <ul>
   <li><a href="<?php echo str_replace('&', '&amp;', $newsletter); ?>"><?php echo $text_newsletter; ?></a></li>
  </ul>
 </div>
</div>
<?php echo $footer; ?>