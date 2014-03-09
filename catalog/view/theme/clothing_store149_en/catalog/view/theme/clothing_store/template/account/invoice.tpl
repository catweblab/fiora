<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
   <tr>
    <td width="25%" valign="top">
     <?php if ($invoice_id) { ?><b><?php echo $text_invoice_id; ?></b><br /><?php echo $invoice_id; ?><?php } ?>
    </td>
    <td width="25%" valign="top"><b><?php echo $text_order_id; ?></b><br />#<?php echo $order_id; ?></td>
    <td width="25%" valign="top">
     <b><?php echo $text_telephone; ?></b><br /><?php echo $telephone; ?>
     <?php if ($fax) { ?><b><?php echo $text_fax; ?></b><br /><?php echo $fax; ?><?php } ?>
    </td>
    <td width="25%" valign="top"><b><?php echo $text_email; ?></b><br /><?php echo $email; ?></td>
   </tr>
   <tr>
    <td valign="top">
     <?php if ($shipping_method) { ?><b><?php echo $text_shipping_method; ?></b><br />
     <?php echo $shipping_method; ?><?php } ?>
    </td>
    <td valign="top"><b><?php echo $text_payment_method; ?></b><br /><?php echo $payment_method; ?></td>
    <td valign="top">
     <?php if ($shipping_address) { ?><b><?php echo $text_shipping_address; ?></b><br />
     <?php echo $shipping_address; ?><br /><?php } ?>
    </td>
    <td valign="top"><b><?php echo $text_payment_address; ?></b><br /><?php echo $payment_address; ?></td>
   </tr>
  </table>
  <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
   <tr>
    <td align="left"><b><?php echo $text_product; ?></b></td>
    <td align="left"><b><?php echo $text_model; ?></b></td>
    <td align="center"><b><?php echo $text_quantity; ?></b></td>
    <td align="right"><b><?php echo $text_price; ?></b></td>
    <td align="right"><b><?php echo $text_total; ?></b></td>
   </tr>
   <?php foreach ($products as $product) { ?>
   <tr>
    <td align="left" valign="top">
    <?php echo $product['name']; ?>
    <?php foreach ($product['option'] as $option) { ?>
    <br />&nbsp;<small> - <?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
    <?php } ?>
    </td>
    <td align="left" valign="top"><?php echo $product['model']; ?></td>
    <td align="center" valign="top"><?php echo $product['quantity']; ?></td>
    <td align="right" valign="top"><?php echo $product['price']; ?></td>
    <td align="right" valign="top"><?php echo $product['total']; ?></td>
   </tr>
   <?php } ?>
  </table>
  <table align="right" cellpadding="3" cellspacing="3">
   <?php foreach ($totals as $total) { ?>
   <tr>
    <td align="right"><b><?php echo $total['title']; ?></b></td>
    <td align="right"><?php echo $total['text']; ?></td>
   </tr>
   <?php } ?>
  </table>
  <?php if ($comment) { ?>
  <table class="border_bot_sol border_top_sol" width="100%" cellpadding="3" cellspacing="3">
   <tr><td><b><?php echo $text_comment; ?></b></td></tr>
   <tr><td><?php echo $comment; ?></td></tr>
  </table>
  <?php } ?>
  <?php if ($historys) { ?>
  <table width="100%" cellpadding="3" cellspacing="3">
   <tr><td colspan="3"><b><?php echo $text_order_history; ?></b></td></tr>
   <tr>
    <td align="left"><b><?php echo $column_date_added; ?></b></td>
    <td align="left"><b><?php echo $column_status; ?></b></td>
    <td align="left"><b><?php echo $column_comment; ?></b></td>
   </tr>
   <?php foreach ($historys as $history) { ?>
   <tr>
    <td valign="top"><?php echo $history['date_added']; ?></td>
    <td valign="top"><?php echo $history['status']; ?></td>
    <td valign="top"><?php echo $history['comment']; ?></td>
   </tr>
   <?php } ?>
  </table>
  <?php } ?>
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