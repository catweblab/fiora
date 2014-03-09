<div class="heading_title"><?php echo $heading_title; ?></div>
<div class="category">
 <ul>
  <?php foreach ($manufacturers as $manufacturer) { ?>
  <li>
   <?php if ($manufacturer['manufacturer_id'] == $manufacturer_id) { ?>
   <a href="<?php echo str_replace('&', '&amp;', $manufacturer['href']); ?>"><b><?php echo $manufacturer['name']; ?></b></a>
   <?php } else { ?>
   <a href="<?php echo str_replace('&', '&amp;', $manufacturer['href']); ?>"><?php echo $manufacturer['name']; ?></a>
   <?php } ?>
  </li>
  <?php } ?>
 </ul>
</div>