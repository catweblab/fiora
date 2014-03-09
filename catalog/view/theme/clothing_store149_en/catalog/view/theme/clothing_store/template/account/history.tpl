<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php foreach ($orders as $order) { ?>
  <table class="border_bot_sol" width="100%" cellpadding="5" cellspacing="5">
   <tr>
    <td><b><?php echo $text_order; ?></b> #<?php echo $order['order_id']; ?></td>
    <td></td>
    <td align="right"><b><?php echo $text_status; ?></b> <?php echo $order['status']; ?></td>
   </tr>
   <tr>
    <td><b><?php echo $text_date_added; ?></b> <?php echo $order['date_added']; ?></td>
    <td><b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?></td>
    <td align="right" rowspan="2"><a onclick="location = '<?php echo str_replace('&', '&amp;', $order['href']); ?>'" class="button"><span><?php echo $button_view; ?></span></a></td>
   </tr>
   <tr>
    <td><b><?php echo $text_products; ?></b> <?php echo $order['products']; ?></td>
    <td><b><?php echo $text_total; ?></b> <?php echo $order['total']; ?></td>
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