<div class="heading_title"><?php echo $heading_title; ?></div>
<div class="category">
 <?php if ($links) { ?>
 <ul>
  <?php foreach($links as $link) { ?>
  <li><?php echo $link['alink']; ?></li>
  <?php } ?>
 </ul>
 <?php } ?>
</div>