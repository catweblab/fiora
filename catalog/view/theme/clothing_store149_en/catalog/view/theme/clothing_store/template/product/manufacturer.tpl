<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
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
 </div>
</div>
<?php echo $footer; ?> 