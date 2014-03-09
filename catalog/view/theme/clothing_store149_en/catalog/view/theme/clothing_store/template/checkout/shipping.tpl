<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?>
  <form id="shipping" action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data">
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr><td colspan="2"><b><?php echo $text_shipping_address; ?></b></td></tr>
    <tr>
     <td width="50%" valign="top">
      <?php echo $text_shipping_to; ?><br /><br />
      <div align="center"><a onclick="location = '<?php echo str_replace('&', '&amp;', $change_address); ?>'" class="button"><span><?php echo $button_change_address; ?></span></a></div>
     </td>
     <td width="50%" valign="top"><?php echo $address; ?></td>
    </tr>
   </table>
   <?php if ($shipping_methods) { ?>
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr>
     <td colspan="2">
      <b><?php echo $text_shipping_method; ?></b>
      <p><?php echo $text_shipping_methods; ?></p>
     </td>
    </tr>
    <?php foreach ($shipping_methods as $shipping_method) { ?>
    <tr><td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td></tr>
    <?php if (!$shipping_method['error']) { ?>
    <?php foreach ($shipping_method['quote'] as $quote) { ?>
    <tr>
     <td width="1%">
      <label for="<?php echo $quote['id']; ?>">
       <?php if ($quote['id'] == $shipping || !$shipping) { ?>
       <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" <?php $shipping = $quote['id']; ?>checked="checked"<?php } ?> />
      </label>
     </td>
     <td><label for="<?php echo $quote['id']; ?>"><?php echo $quote['title']; ?></label></td>
     <td width="20%" align="right"><label for="<?php echo $quote['id']; ?>"><?php echo $quote['text']; ?></label></td>
    </tr>
    <?php } ?>
    <?php } else { ?>
    <tr><td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td></tr>
    <?php } ?>
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
      <td align="right"><a onclick="$('#shipping').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<?php echo $footer; ?>