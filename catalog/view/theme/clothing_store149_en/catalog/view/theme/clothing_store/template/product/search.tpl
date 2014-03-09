<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <b><?php echo $text_critea; ?></b>
  <table id="content_search">
   <tr>
    <td><?php //echo $entry_search; ?></td>
    <td>
     <?php if ($keyword) { ?>
     <input id="keyword" type="text" value="<?php echo $keyword; ?>" />
     <?php } else { ?>
     <input id="keyword" type="text" value="<?php echo $text_keyword; ?>" onclick="this.value = '';" />
     <?php } ?>
     <select id="category_id">
      <option value="0"><?php echo $text_category; ?></option>
      <?php foreach ($categories as $category) { ?>
      <option value="<?php echo $category['category_id']; ?>" <?php if ($category['category_id'] == $category_id) { ?>selected="selected"<?php } ?>><?php echo $category['name']; ?></option>
      <?php } ?>
     </select>
    </td>
   </tr>
   <tr>
    <td colspan="2">
     <?php if ($description) { ?><input type="checkbox" name="description" id="description" checked="checked" />
     <?php } else { ?><input type="checkbox" name="description" id="description" /><?php } ?>
     <?php echo $entry_description; ?>
    </td>
   </tr>
   <tr>
    <td colspan="2">
     <?php if ($model) { ?><input type="checkbox" name="model" id="model" checked="checked" />
     <?php } else { ?><input type="checkbox" name="model" id="model" /><?php } ?>
     <?php echo $entry_model; ?>
    </td>
   </tr>
  </table>
  <div class="buttons">
   <table>
    <tr>
     <td align="right"><a onclick="contentSearch();" class="button"><span><?php echo $button_search; ?></span></a></td>
    </tr>
   </table>
  </div>
 </div>
 <div class="heading_title"><?php echo $text_search; ?></div>
 <div class="content">
  <?php if (isset($products)) { ?>
  <div align="right">
   <?php echo $text_sort; ?>
    <select name="sort" onchange="location = this.value">
     <?php foreach ($sorts as $sorts) { ?>
     <option value="<?php echo $sorts['href']; ?>" <?php if (($sort . '-' . $order) == $sorts['value']) { ?>selected="selected"<?php } ?>><?php echo $sorts['text']; ?></option>
     <?php } ?>
    </select>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <ul class="prod_listing"><?php include (DIR_TEMPLATE.'clothing_store\template\listing\listing.tpl'); ?></ul>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?><div class="warning"><?php echo $text_empty; ?></div><?php }?>
 </div>
</div>
<script type="text/javascript"><!--
$('#content_search input').keydown(function(e) { if (e.keyCode == 13) { contentSearch(); } });
function contentSearch() {
	url = 'index.php?route=product/search';
	var keyword = $('#keyword').attr('value');
	if (keyword) { url += '&keyword=' + encodeURIComponent(keyword); }
	var category_id = $('#category_id').attr('value');
	if (category_id) { url += '&category_id=' + encodeURIComponent(category_id); }
	if ($('#description').attr('checked')) { url += '&description=1'; }
	if ($('#model').attr('checked')) { url += '&model=1'; }
	location = url;
}
//--></script>
<?php echo $footer; ?> 