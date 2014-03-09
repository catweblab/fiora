<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="password">
   <table width="100%" cellpadding="5" cellspacing="5">
    <tr><td colspan="2"><b><?php echo $text_password; ?></b></td></tr>
    <tr>
     <td width="150"><span class="required">*</span> <?php echo $entry_password; ?></td>
     <td>
      <input type="password" name="password" value="<?php echo $password; ?>" />
      <?php if ($error_password) { ?><span class="error"><?php echo $error_password; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
     <td>
      <input type="password" name="confirm" value="<?php echo $confirm; ?>" />
      <?php if ($error_confirm) { ?><span class="error"><?php echo $error_confirm; ?></span><?php } ?>
     </td>
    </tr>
   </table>
   <div class="buttons">
    <table>
     <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a onclick="$('#password').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<?php echo $footer; ?>