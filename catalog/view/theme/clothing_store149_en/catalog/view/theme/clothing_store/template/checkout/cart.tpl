<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?><?php if ($weight) { ?>&nbsp;(<?php echo $weight; ?>)<?php } ?></div>
 <div class="content"><?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?></div>
 <div class="content">
  <form id="cart" action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data">
   <table class="cart" width="100%" cellpadding="0" cellspacing="0">
    <tr>
     <td align="center"><b><?php echo $column_remove; ?></b></td>
     <td align="center"><b><?php echo $column_image; ?></b></td>
     <td align="left"><b><?php echo $column_name; ?></b></td>
     <td align="left"><b><?php echo $column_model; ?></b></td>
     <td align="center"><b><?php echo $column_quantity; ?></b></td>
     <?php if ($display_price) { ?>
     <td align="right"><b><?php echo $column_price; ?></b></td>
     <td align="right"><b><?php echo $column_total; ?></b></td>
     <?php } ?>
    </tr>
    <?php foreach ($products as $product) { ?>
    <tr>
     <td align="center"><input type="checkbox" name="remove[<?php echo $product['key']; ?>]" /></td>
     <td align="center">
      <a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
     </td>
     <td align="left"><a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a>
      <?php if (!$product['stock']) { ?><span class="required">***</span><?php } ?>
      <div>
       <?php foreach ($product['option'] as $option) { ?>
       - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
       <?php } ?>
      </div>
     </td>
     <td align="left"><?php echo $product['model']; ?></td>
     <td align="center"><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="3" /></td>
     <?php if ($display_price) { ?>
     <td align="right"><?php echo $product['price']; ?></td>
     <td align="right"><?php echo $product['total']; ?></td>
     <?php } ?>
    </tr>
    <?php } ?>
   </table>
   <?php if ($display_price) { ?>
   <table align="right">
    <?php foreach ($totals as $total) { ?>
    <tr>
     <td align="right"><b><?php echo $total['title']; ?></b></td>
     <td align="right"><?php echo $total['text']; ?></td>
    </tr>
    <?php } ?>
   </table>
   <?php } ?>
  </form>
  <div class="clear"></div>
  <div class="buttons">
    <table>
     <tr>
      <td align="left"><a onclick="$('#cart').submit();" class="button"><span><?php echo $button_update; ?></span></a></td>
      <td align="center"><a onclick="location = '<?php echo str_replace('&amp;', '&', $continue); ?>'" class="button"><span><?php echo $button_shopping; ?></span></a></td>
      <td align="right"><a onclick="location = '<?php echo str_replace('&amp;', '&', $checkout); ?>'" class="button"><span><?php echo $button_checkout; ?></span></a></td>
     </tr>
    </table>
   </div>
 </div>
</div>
<?php echo $footer; ?>