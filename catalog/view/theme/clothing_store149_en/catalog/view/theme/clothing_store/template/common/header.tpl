<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<?php if ($keywords) { ?><meta name="keywords" content="<?php echo $keywords; ?>" /><?php } ?>
<?php if ($description) { ?><meta name="description" content="<?php echo $description; ?>" /><?php } ?>
<base href="<?php echo $base; ?>" />
<?php if ($icon) { ?><link href="<?php echo $icon; ?>" rel="icon" /><?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo str_replace('&', '&amp;', $link['href']); ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/jslider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/thickbox.css" />
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/clothing_store/stylesheet/ie6.css" />
<![endif]-->
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jquery.thickbox.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jquery.tab.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/custom.js"></script>
<?php foreach ($scripts as $script) { ?><script type="text/javascript" src="<?php echo $script; ?>"></script><?php } ?>
<script type="text/javascript"><!--
function moduleSearch() {
	pathArray = location.pathname.split( '/' );
	url = '<?php echo HTTP_SERVER; ?>';
	url += 'index.php?route=product/search';
	var filter_keyword = $('#filter_keyword').attr('value')
	if (filter_keyword) { url += '&keyword=' + encodeURIComponent(filter_keyword); }
	var filter_category_id = $('#filter_category_id').attr('value');
	if (filter_category_id) { url += '&category_id=' + filter_category_id; }
	location = url;
}
//--></script>
</head>
<body>
 <div class="body">
  <table class="menu" cellspacing="0" cellpadding="0">
   <tr>
    <td width="10%">
     <?php if ($logo) { ?>
     <!--<a href="<?php echo str_replace('&', '&amp;', $home); ?>"><img src="<?php echo $logo; ?>" title="<?php echo $store; ?>" alt="<?php echo $store; ?>" /></a>-->
     <a href="<?php echo str_replace('&', '&amp;', $home); ?>"><img style="float:left;" src="catalog/view/theme/<?php echo $template; ?>/image/onstore.jpg" title="<?php echo $store; ?>" alt="<?php echo $store; ?>"></a>
     <?php } ?>
    </td>
    <td width="90%">
     <table width="100%" cellspacing="0" cellpadding="0">
      <tr>
       <td width="61" height="25" align="center"></td>
       <td width="10"></td>
       <td width="245" align="center"><span class="bookmark" onclick="bookmark(document.location, '<?php echo addslashes($title); ?>');" ><?php echo $text_bookmark; ?></span></td>
       <td width="14"></td>
       <td width="182" align="left" class="txt">
        <?php if ($currencies) { ?>
        <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="currency_form">
         <select name="currency_code" onchange="$('#currency_form').submit();" class="cls">
          <?php foreach ($currencies as $currency) { ?>
          <option value="<?php echo $currency['code']; ?>" <?php if ($currency['code'] == $currency_code) { ?>selected="selected"<?php } ?>><?php echo $currency['title']; ?></option>
          <?php } ?>
         </select>
         <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </form>
        <?php } ?>
       </td>
       <td width="14"></td>
       <td width="263" class="txt">
        <?php if ($languages) { ?>
        <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="language_form">
         <select name="language_code" onchange="$('#language_form').submit();" class="cls">
          <?php foreach ($languages as $language) { ?>
          <option value="<?php echo $language['code']; ?>" <?php if ($language['code'] == $language_code) { ?>selected="selected"<?php } ?>><?php echo $language['name']; ?></option>
          <?php } ?>
         </select>
         <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" />
         <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </form>
        <?php } ?>
       </td>
      </tr>
     </table>
    </td>
   </tr>
  </table>
  <div class="menu_left">
   <div id="tab_home"><a href="<?php echo str_replace('&', '&amp;', $home); ?>"><?php echo $text_home; ?></a></div>
   <div id="tab_special"><a href="<?php echo str_replace('&', '&amp;', $special); ?>"><?php echo $text_special; ?></a></div>
   <?php if (!$logged) { ?>
   <div id="tab_login"><a href="<?php echo str_replace('&', '&amp;', $login); ?>"><?php echo $text_login; ?></a></div>
   <?php } else { ?>
   <div id="tab_logout"><a href="<?php echo str_replace('&', '&amp;', $logout); ?>"><?php echo $text_logout; ?></a></div>
   <?php } ?>
   <div id="tab_account"><a href="<?php echo str_replace('&', '&amp;', $account); ?>"><?php echo $text_account; ?></a></div>
   <div id="tab_cart"><a href="<?php echo str_replace('&', '&amp;', $cart); ?>"><?php echo $text_cart; ?></a></div>
   <div id="tab_checkout"><a href="<?php echo str_replace('&', '&amp;', $checkout); ?>"><?php echo $text_checkout; ?></a></div>
   <div></div>
   <div></div>
   <div id="tab_contact"><a href="<?php echo str_replace('&', '&amp;', $contact); ?>"><?php echo $text_contact; ?></a></div>
   <div id="tab_sitemap"><a href="<?php echo str_replace('&', '&amp;', $sitemap); ?>"><?php echo $text_sitemap; ?></a></div><!---->
   <div></div>
   <div></div>
  </div>
  <div class="banner">
   <a href="#"><img src="catalog/view/theme/<?php echo $template; ?>/image/ads.jpg" alt=""></a>
   <a href="#"><img src="catalog/view/theme/<?php echo $template; ?>/image/banner1.jpg" alt=""></a>
   <a href="#"><img src="catalog/view/theme/<?php echo $template; ?>/image/banner2.jpg" alt=""></a>
  </div>
  <div class="clear"></div>
  <?php if (isset($common_error)) { ?><div class="warning"><?php echo $common_error; ?></div><?php } ?>
  <div id="search">
   <table width="100%" cellspacing="0" cellpadding="0">
    <tr>
     <td width="5%" class="txt"><?php echo $entry_search; ?></td>
     <td width="25%">
      <?php if ($keyword) { ?>
      <input id="filter_keyword" class="int" type="text" value="<?php echo $keyword; ?>" />
      <?php } else { ?>
      <input id="filter_keyword" class="int" type="text" value="<?php echo $text_keyword; ?>" onclick="this.value = '';" />
      <?php } ?>
     </td>
     <td width="25%">
      <select id="filter_category_id" class="int">
       <option value="0"><?php echo $text_category; ?></option>
       <?php foreach ($categories as $category) { ?>
       <option value="<?php echo $category['category_id']; ?>" <?php if ($category['category_id'] == $category_id) { ?>selected="selected"<?php } ?>><?php echo $category['name']; ?></option>
       <?php } ?>
      </select>
     </td>
     <td width="5%"><a class="button" onclick="moduleSearch();"><span><?php echo $button_go; ?></span></a></td>
     <td width="40%" align="right">
      <a class="button" href="<?php echo str_replace('&', '&amp;', $advanced); ?>"><span><?php echo $text_advanced; ?></span></a>
     </td>
    </tr>
   </table>
  </div>
  <div id="breadcrumb">
   <a href="<?php echo str_replace('&', '&amp;', $home); ?>">&nbsp;&nbsp;&nbsp;</a>
   <?php foreach ($breadcrumbs as $breadcrumb) { ?>
   <a href="<?php echo str_replace('&', '&amp;', $breadcrumb['href']); ?>"><?php echo $breadcrumb['separator']; ?>&nbsp;&nbsp;<?php echo $breadcrumb['text']; ?></a>
   <?php } ?>
  </div>