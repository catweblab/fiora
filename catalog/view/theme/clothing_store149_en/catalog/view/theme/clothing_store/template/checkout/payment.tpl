<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($success) { ?><div class="success"><?php echo $success; ?></div><?php } ?>
  <?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?>
  <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
   <tr><td colspan="2"><b><?php echo $text_payment_address; ?></b></td></tr>
   <tr>
    <td width="50%" valign="top">
     <?php echo $text_payment_to; ?><br /><br />
     <div align="center"><a onclick="location = '<?php echo str_replace('&', '&amp;', $change_address); ?>'" class="button"><span><?php echo $button_change_address; ?></span></a></div></td>
    <td width="50%" valign="top"><?php echo $address; ?></td>
   </tr>
  </table>
  <?php if ($coupon_status) { ?>
  <form id="coupon" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr><td><?php echo $text_coupon; ?></td></tr>
    <tr>
     <td>
      <?php echo $entry_coupon; ?>
      <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
      <a onclick="$('#coupon').submit();" class="button"><span><?php echo $button_coupon; ?></span></a>
     </td>
    </tr>
   </table>
  </form>
  <?php } ?>
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="payment">
   <?php if ($payment_methods) { ?>
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr><td colspan="2"><b><?php echo $text_payment_method; ?></b></td></tr>
    <tr><td colspan="2"><?php echo $text_payment_methods; ?></td></tr>
    <?php foreach ($payment_methods as $payment_method) { ?>
    <tr>
     <td width="1">
      <?php if ($payment_method['id'] == $payment || !$payment) { ?>
      <?php $payment = $payment_method['id']; ?>
      <input id="<?php echo $payment_method['id']; ?>" type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" checked="checked" />
      <?php } else { ?>
      <input id="<?php echo $payment_method['id']; ?>" type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" />
      <?php } ?>
     </td>
     <td><label for="<?php echo $payment_method['id']; ?>"><?php echo $payment_method['title']; ?></label></td>
    </tr>
    <?php } ?>
   </table>
   <?php } ?>
   <table width="100%" cellpadding="3" cellspacing="3">
    <tr><td><b><?php echo $text_comments; ?></b></td></tr>
    <tr><td><textarea name="comment" rows="8"><?php echo $comment; ?></textarea></td></tr>
   </table>
   <div class="buttons">
    <table>
     <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <?php if ($text_agree) { ?>
      <td align="right">
       <?php echo $text_agree; ?>
       <input type="checkbox" name="agree" value="1" <?php if ($agree) echo 'checked="checked"' ?> />
      </td>
      <?php } ?>
      <td align="right" width="150"><a onclick="$('#payment').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<?php echo $footer; ?>