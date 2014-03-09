<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<b><?php echo $review['author']; ?></b>
<div class="content border_bot_dot">
 <?php echo $review['text']; ?><br /><br />
 <em><?php echo $review['date_added']; ?></em>
 &nbsp;&nbsp;&nbsp;
 <img src="catalog/view/theme/clothing_store/image/stars_<?php echo $review['rating'].'.png'; ?>" alt="<?php echo $review['stars']; ?>"/>
 </div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?><div class="wait"><?php echo $text_no_reviews; ?></div><?php } ?>