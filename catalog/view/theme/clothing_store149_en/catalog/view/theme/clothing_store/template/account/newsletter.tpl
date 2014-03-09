<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="newsletter">
   <table width="100%" cellpadding="3" cellspacing="3">
    <tr>
     <td width="150"><?php echo $entry_newsletter; ?></td>
     <td>
      <?php if ($newsletter) { ?>
      <input type="radio" name="newsletter" value="1" checked="checked" /> <?php echo $text_yes; ?>&nbsp;
      <input type="radio" name="newsletter" value="0" /> <?php echo $text_no; ?>
      <?php } else { ?>
      <input type="radio" name="newsletter" value="1" /> <?php echo $text_yes; ?>&nbsp;
      <input type="radio" name="newsletter" value="0" checked="checked" /> <?php echo $text_no; ?>
      <?php } ?>
     </td>
    </tr>
   </table>
   <div class="buttons">
    <table>
     <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a onclick="$('#newsletter').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<?php echo $footer; ?>