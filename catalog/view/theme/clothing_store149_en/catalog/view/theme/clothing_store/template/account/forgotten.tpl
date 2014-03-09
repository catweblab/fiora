<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($error) { ?><div class="warning"><?php echo $error; ?></div><?php } ?>
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="forgotten">
   <p><b><?php echo $text_your_email; ?></b></p>
   <table>
    <tr>
     <td><?php echo $entry_email; ?></td>
     <td><input type="text" name="email" /></td>
    </tr>
   </table>
   <p><?php echo $text_email; ?></p>
   <div class="buttons">
    <table>
     <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a onclick="$('#forgotten').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<?php echo $footer; ?>