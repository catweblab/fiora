<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($success) { ?><div class="success"><?php echo $success; ?></div><?php } ?>
  <?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?>
  <?php if ($coupon_status) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
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
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="guest">
   <?php if ($shipping_methods) { ?>
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr><td colspan="3"><b><?php echo $text_shipping_method; ?></b></td></tr>
    <tr><td colspan="3"><?php echo $text_shipping_methods; ?></td></tr>
    <?php foreach ($shipping_methods as $shipping_method) { ?>
    <tr><td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td></tr>
    <?php if (!$shipping_method['error']) { ?>
    <?php foreach ($shipping_method['quote'] as $quote) { ?>
    <tr>
     <td width="1">
      <label for="<?php echo $quote['id']; ?>">
       <?php if ($quote['id'] == $shipping || !$shipping) { ?>
       <?php $shipping = $quote['id']; ?>
       <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" checked="checked" />
       <?php } else { ?>
       <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" />
       <?php } ?>
      </label>
     </td>
     <td><label for="<?php echo $quote['id']; ?>"><?php echo $quote['title']; ?></label></td>
     <td align="right"><label for="<?php echo $quote['id']; ?>"><?php echo $quote['text']; ?></label></td>
    </tr>
    <?php } ?>
    <?php } else { ?>
    <tr><td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td></tr>
    <?php } ?>
    <?php } ?>
   </table>
   <?php } ?>
   <?php if ($payment_methods) { ?>
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr><td colspan="2"><b><?php echo $text_payment_method; ?></b></td></tr>
    <tr><td colspan="2"><?php echo $text_payment_methods; ?></td></tr>
    <?php foreach ($payment_methods as $payment_method) { ?>
    <tr>
     <td width="1">
      <?php if ($payment_method['id'] == $payment || !$payment) { ?>
      <?php $payment= $payment_method['id']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" />
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
       <?php if ($agree) { ?>
       <input type="checkbox" name="agree" value="1" checked="checked" />
       <?php } else { ?>
       <input type="checkbox" name="agree" value="1" />
       <?php } ?>
      </td>
      <?php } ?>
      <td align="right" width="150"><a onclick="$('#guest').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<?php echo $footer; ?>