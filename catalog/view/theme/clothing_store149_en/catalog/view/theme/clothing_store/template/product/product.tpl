<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <table width="100%;">
   <tr>
    <td valign="top" width="55%" align="center">
     <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="thickbox" rel="gallery"><img id="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a><br />
     <span class="required">*</span> <small><?php echo $text_enlarge; ?></small>
    </td>
    <td valign="top" width="45%" align="center">
     <table class="border_sol" width="100%" cellpadding="2" cellspacing="2">
      <?php if ($display_price) { ?>
      <tr>
       <td><b><?php echo $text_price; ?></b></td>
       <td>
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span style="text-decoration: line-through;"><?php echo $price; ?></span>
        <span style="color: #F00;"><?php echo $special; ?></span>
        <?php } ?>
       </td>
      </tr>
      <?php } ?>
      <tr>
       <td><b><?php echo $text_availability; ?></b></td>
       <td><?php echo $stock; ?></td>
      </tr>
      <tr>
       <td><b><?php echo $text_model; ?></b></td>
       <td><?php echo $model; ?></td>
      </tr>
      <?php if ($manufacturer) { ?>
      <tr>
       <td><b><?php echo $text_manufacturer; ?></b></td>
       <td><a href="<?php echo str_replace('&', '&amp;', $manufacturers); ?>"><?php echo $manufacturer; ?></a></td>
      </tr>
      <?php } ?>
      <?php if ($review_status) { ?>
      <tr>
       <td><b><?php echo $text_average; ?></b></td>
       <td>
        <img src="catalog/view/theme/clothing_store/image/stars_<?php echo $average.'.png'; ?>" alt="<?php echo $text_stars; ?>" />
       </td>
      </tr>
      <?php } ?>
     </table>
     <?php if ($display_price) { ?>
     <br />
     <form id="product" action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data">
      <?php if ($options) { ?>
       <table class="border_sol" width="100%" cellpadding="2" cellspacing="2">
        <tr><td><b><?php echo $text_options; ?></b></td></tr>
        <?php foreach ($options as $option) { ?>
        <tr>
         <td>
          <?php echo $option['name']; ?>:
          <select name="option[<?php echo $option['option_id']; ?>]">
           <?php foreach ($option['option_value'] as $option_value) { ?>
           <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?>
           <?php if ($option_value['price']) { ?><?php echo $option_value['prefix']; ?><?php echo $option_value['price']; ?><?php } ?>
           </option>
           <?php } ?>
          </select>
         </td>
        </tr>
        <?php } ?>
       </table>
       <br />
       <?php } ?>
       <?php if ($display_price) { ?>
       <?php if ($discounts) { ?>
       <br />
       <table class="border_sol" width="100%" cellpadding="2" cellspacing="2">
        <tr><td colspan="2"><b><?php echo $text_discount; ?></b></td></tr>
        <tr>
         <td align="right"><b><?php echo $text_order_quantity; ?></b></td>
         <td align="right"><b><?php echo $text_price_per_item; ?></b></td>
        </tr>
        <?php foreach ($discounts as $discount) { ?>
        <tr>
         <td align="right"><?php echo $discount['quantity']; ?></td>
         <td align="right"><?php echo $discount['price']; ?></td>
        </tr>
        <?php } ?>
       </table>
       <br />
       <?php } ?>
       <?php } ?>
       <table class="border_sol" width="100%" cellpadding="2" cellspacing="2">
        <tr>
        <td><?php echo $text_qty; ?></td>
        <td><input type="text" name="quantity" size="3" value="<?php echo $minimum; ?>" /></td>
        <td><a onclick="$('#product').submit();" id="add_to_cart" class="button"><span><?php echo $button_add_to_cart; ?></span></a></td>
       </tr>
      </table>
      <?php if ($minimum > 1) { ?><br/><small><?php echo $text_minimum; ?></small><?php } ?>
      <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
      <input type="hidden" name="redirect" value="<?php echo str_replace('&', '&amp;', $redirect); ?>" />
     </form>
     <?php } ?>
    </td>
   </tr>
  </table>
 </div>
 <div class="heading_title"><?php echo $tab_image; ?> (<?php echo count($images); ?>)</div>
  <?php if ($images) { ?>
  <?php foreach ($images as $image) { ?>
   <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="thickbox images" rel="gallery"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/></a>
  <?php } ?>
  <div class="clear"></div>
  <?php } else { ?><div class="content"><div class="wait"><?php echo $text_no_images; ?></div></div><?php } ?>
  <br />
  <div class="tabs">
   <a tab="#tab_description"><?php echo $tab_description; ?></a>
   <?php if ($review_status) { ?><a tab="#tab_review"><?php echo $tab_review; ?></a><?php } ?>
   <a tab="#tab_related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
  </div>
  <div id="tab_description" class="tab_page"><?php echo $description; ?></div>
  <?php if ($review_status) { ?>
  <div id="tab_review" class="tab_page">
   <div id="review_title"><em><?php echo $text_write; ?></em></div>
   <div id="review"></div><br />
   <b><?php echo $entry_name; ?></b><br />
   <input type="text" name="name" value="" /><br /><br />
   <b><?php echo $entry_review; ?></b>
   <textarea name="text" rows="8"></textarea>
   <span style="font-size: 11px;"><?php echo $text_note; ?></span><br /><br />
   <b><?php echo $entry_rating; ?></b>&nbsp;
   <span><?php echo $entry_bad; ?></span>
   <input type="radio" name="rating" value="1" />
   <input type="radio" name="rating" value="2" />
   <input type="radio" name="rating" value="3" />
   <input type="radio" name="rating" value="4" />
   <input type="radio" name="rating" value="5" />
   <span><?php echo $entry_good; ?></span><br /><br />
   <b><?php echo $entry_captcha; ?></b><br />
   <input type="text" name="captcha" value="" autocomplete="off" />
   <img align="absmiddle" src="index.php?route=product/product/captcha" id="captcha" />
   <div class="buttons">
    <table>
     <tr>
      <td align="right"><a onclick="review();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </div>
  <?php } ?>
  <div id="tab_related" class="tab_page">
   <?php if ($products) { ?><ul class="prod_listing"><?php include (DIR_TEMPLATE.'clothing_store\template\listing\listing.tpl'); ?></ul>
   <?php } else { ?><div class="wait"><?php echo $text_no_related; ?></div><?php } ?>
  </div>
  <div class="content">
   <?php if ($tags) { ?>
   <div class="tags">
    <?php echo $text_tags; ?>
    <?php foreach ($tags as $tag) { ?><a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a>, <?php } ?>
   </div>
   <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
	$('#review').load(this.href);
	$('#review').slideDown('slow');
	return false;
});
$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
function review() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#review_button').attr('disabled', 'disabled');
			$('#review_title').after('<div class="wait"><img src="catalog/view/theme/clothing_store/image/loading_1.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#review_button').attr('disabled', '');
			$('.wait').remove();
		},
		success: function(data) {
			if (data.error) { $('#review_title').after('<div class="warning">' + data.error + '</div>'); }
			if (data.success) {
				$('#review_title').after('<div class="success">' + data.success + '</div>');
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
}
$.tabs('.tabs a');
//--></script>
<?php echo $footer; ?> 