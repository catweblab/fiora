<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($description) { ?><?php echo $description; ?><?php } ?>
  <?php if (!$categories && !$products) { ?><div class="warning"><?php echo $text_error; ?></div><?php } ?>
  <?php if ($categories) { ?>
  <table>
   <?php for ($i = 0; $i < sizeof($categories); $i = $i + 4) { ?>
   <tr>
    <?php for ($j = $i; $j < ($i + 4); $j++) { ?>
    <td width="25%">
     <?php if (isset($categories[$j])) { ?>
     <a href="<?php echo $categories[$j]['href']; ?>"><img src="<?php echo $categories[$j]['thumb']; ?>" title="<?php echo $categories[$j]['name']; ?>" alt="<?php echo $categories[$j]['name']; ?>" /></a><br />
     <a href="<?php echo $categories[$j]['href']; ?>"><?php echo $categories[$j]['name']; ?></a>
     <?php } ?>
    </td>
    <?php } ?>
   </tr>
   <?php } ?>
  </table>
  <?php } ?>
  <?php if ($products) { ?>
  <div align="right">
   <?php echo $text_sort; ?>
    <select name="sort" onchange="location = this.value">
     <?php foreach ($sorts as $sorts) { ?>
     <?php if (($sort . '-' . $order) == $sorts['value']) { ?>
     <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
     <?php } else { ?>
     <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
     <?php } ?>
     <?php } ?>
    </select>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <ul class="prod_listing"><?php include (DIR_TEMPLATE.'clothing_store\template\listing\listing.tpl'); ?></ul>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
 </div>
</div>
<?php echo $footer; ?> 