<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($success) { ?><div class="success"><?php echo $success; ?></div><?php } ?>
  <?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?>
  <table width="100%" cellpadding="5" cellspacing="5">
   <tr><td colspan="2"><b><?php echo $text_address_book; ?></b></td></tr>
   <?php foreach ($addresses as $result) { ?>
   <tr>
    <td><?php echo $result['address']; ?></td>
    <td align="right" width="200">
     <a onclick="location = '<?php echo str_replace('&', '&amp;', $result['update']); ?>'" class="button"><span><?php echo $button_edit; ?></span></a>&nbsp;
     <a onclick="location = '<?php echo str_replace('&', '&amp;', $result['delete']); ?>'" class="button"><span><?php echo $button_delete; ?></span></a>
    </td>
   </tr>
  <?php } ?>
  </table>
  <div class="buttons">
   <table>
    <tr>
     <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
     <td align="right"><a onclick="location = '<?php echo str_replace('&', '&amp;', $insert); ?>'" class="button"><span><?php echo $button_new_address; ?></span></a></td>
    </tr>
   </table>
  </div>
 </div>
</div>
<?php echo $footer; ?>