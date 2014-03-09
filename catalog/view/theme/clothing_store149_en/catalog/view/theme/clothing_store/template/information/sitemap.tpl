<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <table width="100%">
   <tr>
    <td width="50%" valign="top"><?php echo $category; ?></td>
    <td width="50%" valign="top">
     <ul>
      <li><a href="<?php echo str_replace('&', '&amp;', $special); ?>"><?php echo $text_special; ?></a></li>
      <li><a href="<?php echo str_replace('&', '&amp;', $account); ?>"><?php echo $text_account; ?></a>
       <ul>
        <li><a href="<?php echo str_replace('&', '&amp;', $edit); ?>"><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo str_replace('&', '&amp;', $password); ?>"><?php echo $text_password; ?></a></li>
        <li><a href="<?php echo str_replace('&', '&amp;', $address); ?>"><?php echo $text_address; ?></a></li>
        <li><a href="<?php echo str_replace('&', '&amp;', $history); ?>"><?php echo $text_history; ?></a></li>
        <li><a href="<?php echo str_replace('&', '&amp;', $download); ?>"><?php echo $text_download; ?></a></li>
       </ul>
      </li>
      <li><a href="<?php echo str_replace('&', '&amp;', $cart); ?>"><?php echo $text_cart; ?></a></li>
      <li><a href="<?php echo str_replace('&', '&amp;', $checkout); ?>"><?php echo $text_checkout; ?></a></li>
      <li><a href="<?php echo str_replace('&', '&amp;', $search); ?>"><?php echo $text_search; ?></a></li>
      <li><?php echo $text_information; ?>
       <ul>
        <?php foreach ($informations as $information) { ?>
        <li><a href="<?php echo str_replace('&', '&amp;', $information['href']); ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo str_replace('&', '&amp;', $contact); ?>"><?php echo $text_contact; ?></a></li>
       </ul>
      </li>
     </ul>
    </td>
   </tr>
  </table>
 </div>
</div>
<?php echo $footer; ?> 