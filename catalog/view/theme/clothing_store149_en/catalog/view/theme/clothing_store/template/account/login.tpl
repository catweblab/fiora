<?php echo $header; ?>
<div class="column_left"><?php echo $column_left; ?><?php echo $column_right; ?></div>
<div class="column_right">
 <div class="heading_title"><?php echo $heading_title; ?></div>
 <div class="content">
  <?php if ($success) { ?><div class="success"><?php echo $success; ?></div><?php } ?>
  <?php if ($error) { ?><div class="warning"><?php echo $error; ?></div><?php } ?>
 </div>
 <div class="tabs">
  <a tab="#tab_reg_user"><?php echo $text_returning_customer; ?></a>
  <a tab="#tab_login_user"><?php echo $text_i_am_new_customer; ?></a>
 </div>
 <div id="tab_reg_user" class="tab_page">
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="login">
   <p><?php echo $text_i_am_returning_customer; ?></p>
   <p><b><?php echo $entry_email; ?></b><br />
   <input type="text" name="email" /></p>
   <p><b><?php echo $entry_password; ?></b><br />
   <input type="password" name="password" /></p>
   <table width="100%" class="buttons">
    <tr>
     <td align="left"><a class="button" onclick="$('#login').submit();"><span><?php echo $button_login; ?></span></a></td>
     <td align="right"><a class="button" href="<?php echo str_replace('&', '&amp;', $forgotten); ?>"><span><?php echo $text_forgotten_password; ?></span></a></td>
    </tr>
   </table>
   <?php if ($redirect) { ?><input type="hidden" name="redirect" value="<?php echo str_replace('&','&amp;',$redirect); ?>" /><?php } ?>
  </form>
 </div>
 <div id="tab_login_user" class="tab_page">
  <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="account">
   <p><?php echo $text_checkout; ?></p>
   <p><label for="register">
    <?php if ($account == 'register') { ?><input type="radio" name="account" value="register" id="register" checked="checked" />
    <?php } else { ?><input type="radio" name="account" value="register" id="register" /><?php } ?>
    <b><?php echo $text_register; ?></b>
   </label></p>
   <?php if ($guest_checkout) { ?>
   <p><label for="guest">
    <?php if ($account == 'guest') { ?><input type="radio" name="account" value="guest" id="guest" checked="checked" />
    <?php } else { ?><input type="radio" name="account" value="guest" id="guest" /><?php } ?>
    <b><?php echo $text_guest; ?></b>
   </label></p>
   <?php } ?>
   <p><?php echo $text_create_account; ?></p>
   <div class="buttons">
    <table>
     <tr>
      <td align="right"><a onclick="$('#account').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
     </tr>
    </table>
   </div>
  </form>
 </div>
</div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) { if (e.keyCode == 13) { $('#login').submit(); } });
$.tabs('.tabs a');
//--></script>
<?php echo $footer; ?> 