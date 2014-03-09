<?php for ($j = 0; $j < sizeof($products); $j++) { ?>
 <?php if (isset($products[$j])) { ?>
 <li>
  <img align="absmiddle" src="catalog/view/theme/clothing_store/image/stars_<?php echo $products[$j]['rating'] . '.png'; ?>" alt="<?php echo $products[$j]['stars']; ?>" />
  <?php if ($display_price) { ?>
  <a class="button_add_small" href="<?php echo $products[$j]['add']; ?>" title="<?php echo $button_add_to_cart; ?>" >&nbsp;</a>
  <?php } ?>
  <br />
  <a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" /></a>
  <br /><br />
  <?php if ($display_price) { ?>
   <?php if (!$products[$j]['special']) { ?>
   <span class="price"><?php echo $products[$j]['price']; ?></span><br /><br />
   <?php } else { ?>
   <span class="price"><?php echo $products[$j]['special']; ?></span><br />
   <span class="price_old"><?php echo $products[$j]['price']; ?></span><br />
   <?php } ?>
  <?php } ?>
  <a class="prod_name" href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><?php echo $products[$j]['name']; ?></a>
  <br /><em class="txt"><?php echo $products[$j]['model']; ?></em>
 </li>
 <?php } ?>
<?php } ?>