<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($success) { ?><div class="success"><?php echo $success; ?></div><?php } ?>
  <?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?>
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr>
     <td width="36%" valign="top">
      <?php if ($shipping_method) { ?>
      <b><?php echo $text_shipping_method; ?></b><br />
      <?php echo $shipping_method; ?><br />
      <a href="<?php echo str_replace('&', '&amp;', $checkout_shipping); ?>"><?php echo $text_change; ?></a><br /><br />
      <?php } ?>
      <b><?php echo $text_payment_method; ?></b><br />
      <?php echo $payment_method; ?><br />
      <a href="<?php echo str_replace('&', '&amp;', $checkout_payment); ?>"><?php echo $text_change; ?></a>
     </td>
     <td width="32%" valign="top"><?php if ($shipping_address) { ?>
      <b><?php echo $text_shipping_address; ?></b><br />
      <?php echo $shipping_address; ?><br />
      <a href="<?php echo str_replace('&', '&amp;', $checkout_shipping_address); ?>"><?php echo $text_change; ?></a>
      <?php } ?>
     </td>
     <td width="32%" valign="top">
      <b><?php echo $text_payment_address; ?></b><br />
      <?php echo $payment_address; ?><br />
      <a href="<?php echo str_replace('&', '&amp;', $checkout_payment_address); ?>"><?php echo $text_change; ?></a>
     </td>
    </tr>
   </table>
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr>
     <td align="left"><b><?php echo $column_product; ?></b></td>
     <td align="left"><b><?php echo $column_model; ?></b></td>
     <td align="center"><b><?php echo $column_quantity; ?></b></td>
     <td align="right"><b><?php echo $column_price; ?></b></td>
     <td align="right"><b><?php echo $column_total; ?></b></td>
    </tr>
    <?php foreach ($products as $product) { ?>
    <tr>
     <td align="left" valign="top"><a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a>
      <?php foreach ($product['option'] as $option) { ?>
      <br />&nbsp;<small> - <?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
      <?php } ?>
     </td>
     <td align="left"><?php echo $product['model']; ?></td>
     <td align="center"><?php echo $product['quantity']; ?></td>
     <td align="right"><?php echo $product['price']; ?></td>
     <td align="right"><?php echo $product['total']; ?></td>
    </tr>
    <?php } ?>
   </table>
  <table align="right">
   <?php foreach ($totals as $total) { ?>
   <tr>
    <td align="right"><b><?php echo $total['title']; ?></b></td>
    <td align="right"><?php echo $total['text']; ?></td>
   </tr>
   <?php } ?>
  </table>
  <div class="clear"></div>
  <?php if ($coupon_status) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
   <table class="border_top_sol" width="100%" cellpadding="3" cellspacing="3">
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
  <?php if ($comment) { ?>
  <table class="border_top_sol" width="100%" cellpadding="3" cellspacing="3">
   <tr><td><b><?php echo $text_comment; ?></b></td></tr>
   <tr><td><?php echo $comment; ?></td></tr>
  </table>
  <?php } ?>
  <div id="payment"><?php echo $payment; ?></div>
 </div>
</div>
<?php echo $footer; ?>