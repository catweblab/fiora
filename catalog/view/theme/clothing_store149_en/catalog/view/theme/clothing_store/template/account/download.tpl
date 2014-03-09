<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php foreach ($downloads as $download) { ?>
  <table width="100%" cellpadding="3" cellspacing="3">
   <tr>
    <td align="left"><b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?></td>
    <td></td>
    <td align="right"><b><?php echo $text_size; ?></b> <?php echo $download['size']; ?></td>
   </tr>
   <tr>
    <td width="40%"><b><?php echo $text_name; ?></b> <?php echo $download['name']; ?></td>
    <td width="50%"><b><?php echo $text_remaining; ?></b> <?php echo $download['remaining']; ?></td>
    <td rowspan="2" align="right"><a class="button" onclick="location = '<?php echo str_replace('&', '&amp;', $download['href']); ?>'"><span><?php echo $text_download; ?></span></a></td>
   </tr>
   <tr>
    <td colspan="2"><b><?php echo $text_date_added; ?></b> <?php echo $download['date_added']; ?></td>
   </tr>
  </table>
  <?php } ?>
  <div class="pagination"><?php echo $pagination; ?></div>
  <div class="buttons">
   <table>
    <tr>
     <td align="right"><a onclick="location = '<?php echo str_replace('&', '&amp;', $continue); ?>'" class="button"><span><?php echo $button_continue; ?></span></a></td>
    </tr>
   </table>
  </div>
 </div>
</div>
<?php echo $footer; ?>