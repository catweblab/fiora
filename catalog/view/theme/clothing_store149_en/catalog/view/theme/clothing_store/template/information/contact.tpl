<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <table class="border_bot_sol" width="100%" cellspacing="3" cellpadding="3">
   <tr>
    <td width="50%">
     <b><?php echo $text_address; ?></b><br />
     <?php echo $store; ?><br />
     <?php echo $address; ?>
    </td>
    <td width="50%">
     <?php if ($telephone) { ?><b><?php echo $text_telephone; ?></b><br /><?php echo $telephone; ?><br /><br /><?php } ?>
     <?php if ($fax) { ?><b><?php echo $text_fax; ?></b><br /><?php echo $fax; ?><?php } ?>
    </td>
   </tr>
  </table>
 </div>
 <div class="content">
  <form id="contact" action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data">
   <table width="100%">
    <tr>
    <td>
     <?php echo $entry_name; ?><br />
     <input type="text" name="name" value="<?php echo $name; ?>" />
     <?php if ($error_name) { ?><span class="error"><?php echo $error_name; ?></span><?php } ?>
    </td>
    </tr>
    <tr>
    <td>
     <?php echo $entry_email; ?><br />
     <input type="text" name="email" value="<?php echo $email; ?>" />
     <?php if ($error_email) { ?><span class="error"><?php echo $error_email; ?></span><?php } ?>
    </td>
    </tr>
    <tr>
    <td>
     <?php echo $entry_enquiry; ?><br />
     <textarea name="enquiry" rows="10"><?php echo $enquiry; ?></textarea>
     <?php if ($error_enquiry) { ?><span class="error"><?php echo $error_enquiry; ?></span><?php } ?>
    </td>
    </tr>
    <tr>
    <td>
     <?php echo $entry_captcha; ?><br />
     <input type="text" name="captcha" value="<?php echo $captcha; ?>" autocomplete="off" />
     <img align="absmiddle" src="index.php?route=information/contact/captcha" />
     <?php if ($error_captcha) { ?><span class="error"><?php echo $error_captcha; ?></span><?php } ?>
    </td>
   </tr>
  </table>
  <div class="buttons">
   <table>
    <tr>
     <td align="right"><a onclick="$('#contact').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
    </tr>
   </table>
  </div>
  </form>
 </div>
</div>
<?php echo $footer; ?> 