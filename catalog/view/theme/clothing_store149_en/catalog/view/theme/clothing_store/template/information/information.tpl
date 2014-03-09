<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php echo $description; ?>
  <div class="buttons">
   <table>
    <tr>
     <td align="right"><a onclick="location = '<?php echo str_replace('&', '&amp;', $continue); ?>'" class="button"><span><?php echo $button_continue; ?></span></a></td>
    </tr>
   </table>
  </div>
 </div>
</div>
<?php echo $footer; ?> 