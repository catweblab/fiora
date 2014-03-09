<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($addresses) { ?>
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="address_1">
   <table width="100%" cellpadding="3" cellspacing="3">
    <tr><td colspan="2"><b><?php echo $text_entries; ?></b></td></tr>
    <?php foreach ($addresses as $address) { ?>
    <?php if ($address['address_id'] == $default) { ?>
    <tr>
     <td width="1"><input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" checked="checked" /></td>
     <td><label for="address_id[<?php echo $address['address_id']; ?>]"><?php echo $address['address']; ?></label></td>
    </tr>
    <?php } else { ?>
    <tr>
     <td width="1"><input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" /></td>
     <td><label for="address_id[<?php echo $address['address_id']; ?>]"><?php echo $address['address']; ?></label></td>
    </tr>
    <?php } ?>
    <?php } ?>
   </table>
   <div class="buttons">
    <table>
     <tr>
      <td align="right"><a onclick="$('#address_1').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
  <?php } ?>
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="address_2">
   <table width="100%" cellpadding="3" cellspacing="3">
    <tr><td colspan="2"><b><?php echo $text_new_address; ?></b></td></tr>
    <tr>
     <td width="150"><?php echo $entry_firstname; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
      <?php if ($error_firstname) { ?><span class="error"><?php echo $error_firstname; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_lastname; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
      <?php if ($error_lastname) { ?><span class="error"><?php echo $error_lastname; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_company; ?></td>
     <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
    </tr>
    <tr>
     <td><?php echo $entry_address_1; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="address_1" value="<?php echo $address_1; ?>" />
      <?php if ($error_address_1) { ?><span class="error"><?php echo $error_address_1; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_address_2; ?></td>
     <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
    </tr>
    <tr>
     <td><?php echo $entry_city; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="city" value="<?php echo $city; ?>" />
      <?php if ($error_city) { ?><span class="error"><?php echo $error_city; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td id="postcode"><?php echo $entry_postcode; ?></td>
     <td>
      <input type="text" name="postcode" value="<?php echo $postcode; ?>" />
      <?php if ($error_postcode) { ?><span class="error"><?php echo $error_postcode; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_country; ?> <span class="required">*</span></td>
     <td>
      <select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>'); $('#postcode').load('index.php?route=checkout/address/postcode&country_id=' + this.value);">
       <option value="FALSE"><?php echo $text_select; ?></option>
       <?php foreach ($countries as $country) { ?>
       <?php if ($country['country_id'] == $country_id) { ?>
       <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
       <?php } else { ?>
       <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
       <?php } ?>
       <?php } ?>
      </select>
      <?php if ($error_country) { ?><span class="error"><?php echo $error_country; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_zone; ?> <span class="required">*</span></td>
     <td>
      <select name="zone_id"></select>
      <?php if ($error_zone) { ?><span class="error"><?php echo $error_zone; ?></span><?php } ?>
     </td>
    </tr>
   </table>
   <div class="buttons">
    <table>
     <tr>
      <td align="right"><a onclick="$('#address_2').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div> 
</div>
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
$('#postcode').load('index.php?route=checkout/address/postcode&country_id=<?php echo $country_id; ?>');
//--></script>
<?php echo $footer; ?> 