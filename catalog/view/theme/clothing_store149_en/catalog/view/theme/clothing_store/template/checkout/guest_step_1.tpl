<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="guest">
   <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
    <tr><td colspan="2"><b><?php echo $text_your_details; ?></b></td></tr>
    <tr>
     <td width="150"><?php echo $entry_firstname; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
      <?php if ($error_firstname) { ?><span class="error"><?php echo $error_firstname; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td> <?php echo $entry_lastname; ?><span class="required">*</span></td>
     <td>
      <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
      <?php if ($error_lastname) { ?><span class="error"><?php echo $error_lastname; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_email; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="email" value="<?php echo $email; ?>" />
      <?php if ($error_email) { ?><span class="error"><?php echo $error_email; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_telephone; ?> <span class="required">*</span></td>
     <td>
      <input type="text" name="telephone" value="<?php echo $telephone; ?>" />
      <?php if ($error_telephone) { ?><span class="error"><?php echo $error_telephone; ?></span><?php } ?>
     </td>
    </tr>
    <tr>
     <td><?php echo $entry_fax; ?></td>
     <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
    </tr>
   </table>
   <div id="address">
    <table class="border_bot_sol" width="100%" cellpadding="3" cellspacing="3">
     <tr><td colspan="2"><b><?php echo $text_your_address; ?></b></td></tr>
     <tr>
      <td width="150"><?php echo $entry_company; ?></td>
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
       <select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=checkout/guest_step_1/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>'); $('#postcode').load('index.php?route=checkout/guest_step_1/postcode&country_id=' + this.value);">
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
      <td> <?php echo $entry_zone; ?><span class="required">*</span></td>
      <td>
       <select name="zone_id"></select>
       <?php if ($error_zone) { ?><span class="error"><?php echo $error_zone; ?></span><?php } ?>
      </td>
     </tr>
    </table>
   </div>
   <span class="clear">
    <?php if ($shipping_indicator) { ?>
    <input type="checkbox" value="1" checked="checked" onchange="(this.checked) ? $('#shipping_details').css('display','block') : $('#shipping_details').css('display','none');" name="shipping_indicator" id="shipping_indicator" />
    <label for="shipping_indicator"><?php echo $text_indicator; ?></label>
    <?php } else { ?>
    <input type="checkbox" value="1" onclick="(this.checked) ? $('#shipping_details').css('display','block') : $('#shipping_details').css('display','none');" name="shipping_indicator" id="shipping_indicator" />
    <label for="shipping_indicator"><?php echo $text_indicator; ?></label>
    <?php } ?>
   </span>
   <div id="shipping_details" style="<?php echo ($shipping_indicator) ? 'display:block;' : 'display:none;' ?>">
    <table width="100%" cellpadding="3" cellspacing="3">
     <tr><td colspan="2"><b><?php echo $text_shipping_address; ?></b></td></tr>
     <tr>
      <td width="150"><?php echo $entry_firstname; ?> <span class="required">*</span></td>
      <td>
       <input type="text" name="shipping_firstname" value="<?php echo $shipping_firstname; ?>" />
       <?php if ($error_shipping_firstname) { ?><span class="error"><?php echo $error_shipping_firstname; ?></span><?php } ?>
      </td>
     </tr>
     <tr>
      <td><?php echo $entry_lastname; ?> <span class="required">*</span></td>
      <td>
       <input type="text" name="shipping_lastname" value="<?php echo $shipping_lastname; ?>" />
       <?php if ($error_shipping_lastname) { ?><span class="error"><?php echo $error_shipping_lastname; ?></span><?php } ?>
      </td>
     </tr>
     <tr>
      <td width="150"><?php echo $entry_company; ?></td>
      <td><input type="text" name="shipping_company" value="<?php echo $shipping_company; ?>" /></td>
     </tr>
     <tr>
      <td><?php echo $entry_address_1; ?> <span class="required">*</span></td>
      <td>
       <input type="text" name="shipping_address_1" value="<?php echo $shipping_address_1; ?>" />
       <?php if ($error_shipping_address_1) { ?><span class="error"><?php echo $error_shipping_address_1; ?></span><?php } ?>
      </td>
     </tr>
     <tr>
      <td><?php echo $entry_address_2; ?></td>
      <td><input type="text" name="shipping_address_2" value="<?php echo $shipping_address_2; ?>" /></td>
     </tr>
     <tr>
      <td><?php echo $entry_city; ?> <span class="required">*</span></td>
      <td>
       <input type="text" name="shipping_city" value="<?php echo $shipping_city; ?>" />
       <?php if ($error_shipping_city) { ?><span class="error"><?php echo $error_shipping_city; ?></span><?php } ?>
      </td>
     </tr>
     <tr>
      <td id="shipping_postcode"><?php echo $entry_postcode; ?></td>
      <td>
       <input type="text" name="shipping_postcode" value="<?php echo $shipping_postcode; ?>" />
       <?php if ($error_shipping_postcode) { ?><span class="error"><?php echo $error_shipping_postcode; ?></span><?php } ?>
      </td>
     </tr>
     <tr>
      <td><?php echo $entry_country; ?> <span class="required">*</span></td>
      <td>
       <select name="shipping_country_id" id="shipping_country_id" onchange="$('select[name=\'shipping_zone_id\']').load('index.php?route=checkout/guest_step_1/zone&country_id=' + this.value + '&zone_id=<?php echo $shipping_zone_id; ?>'); $('#shipping_postcode').load('index.php?route=checkout/guest_step_1/postcode&country_id=' + this.value);">
        <option value="FALSE"><?php echo $text_select; ?></option>
        <?php foreach ($countries as $country) { ?>
        <?php if ($country['country_id'] == $shipping_country_id) { ?>
        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
        <?php } ?>
        <?php } ?>
       </select>
       <?php if ($error_shipping_country) { ?><span class="error"><?php echo $error_shipping_country; ?></span><?php } ?>
      </td>
     </tr>
     <tr>
      <td><?php echo $entry_zone; ?> <span class="required">*</span></td>
      <td>
       <select name="shipping_zone_id"></select>
       <?php if ($error_shipping_zone) { ?><span class="error"><?php echo $error_shipping_zone; ?></span><?php } ?>
      </td>
     </tr>
    </table>
   </div>
   <div class="buttons">
    <table>
     <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a onclick="$('#guest').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div> 
</div>
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=checkout/guest_step_1/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
$('select[name=\'shipping_zone_id\']').load('index.php?route=checkout/guest_step_1/zone&country_id=<?php echo $shipping_country_id; ?>&zone_id=<?php echo $shipping_zone_id; ?>');
$('#postcode').load('index.php?route=checkout/guest_step_1/postcode&country_id=<?php echo $country_id; ?>');
$('#shipping_postcode').load('index.php?route=checkout/guest_step_1/postcode&country_id=<?php echo $shipping_country_id; ?>');
//--></script>
<?php echo $footer; ?> 