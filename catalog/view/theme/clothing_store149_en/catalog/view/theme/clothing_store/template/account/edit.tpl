<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?>
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="edit">
   <table width="100%" cellpadding="5" cellspacing="5">
    <tr><td colspan="2"><b><?php echo $text_your_details; ?></b></td></tr>
    <tr>
     <td width="150"><?php echo $entry_firstname; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
      <?php if ($error_firstname) { ?><span class="error"><?php echo $error_firstname; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_lastname; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
      <?php if ($error_lastname) { ?><span class="error"><?php echo $error_lastname; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_email; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="email" value="<?php echo $email; ?>" />
      <?php if ($error_email) { ?><span class="error"><?php echo $error_email; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_telephone; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="telephone" value="<?php echo $telephone; ?>" />
      <?php if ($error_telephone) { ?><span class="error"><?php echo $error_telephone; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_fax; ?></td>
     <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
    </tr>
   </table>
   <div class="buttons">
    <table>
     <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a onclick="$('#edit').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<?php echo $footer; ?>