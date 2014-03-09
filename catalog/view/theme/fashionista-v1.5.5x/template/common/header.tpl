<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fashionista/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type='text/javascript' src='catalog/view/theme/fashionista/js/custom-scripts.js'></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fashionista/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fashionista/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('theme_control_headings_font') ?>&v1' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('theme_control_body_font') ?>&v1' rel='stylesheet' type='text/css'>
<style type="text/css">

/* Headers Fonts */
h1, h2, h3, h4, .box .box-heading, .box h2, #menu a, #home-tabs li a, .box .box-heading h3{
	<?php $headerFont = $this->config->get('theme_control_headings_font');
$font = str_replace("+", " ", $headerFont);
?> font-family: '<?php echo $font; ?>';
	}

/* Body Fonts */
body, td, th, input, textarea, select, a, button{
	<?php $bodyFont = $this->config->get('theme_control_body_font');
$bfont = str_replace("+", " ", $bodyFont);
?> font-family: '<?php echo $bfont; ?>';
}

/* Theme Color */
.nivo-controlNav a.active, a.button, input.button, #menu ul li:hover a, #menu ul li.active, #menu ul li div, .success, .nivo-directionNav a, .tooltip p, #header #cart .heading h4 div.bag, .nivo-caption p, .tag-rectangle, .tags .tag-rectangle{
	background-color:#<?php echo $this->config->get('theme_color') ?>;}
	
.tag-triangle, .tags .tag-triangle{
border-color: transparent transparent transparent #<?php echo $this->config->get('theme_color') ?>;}
	
#header #cart .heading a, h1, .welcome, .box .box-heading h3, .box-category ul li a, .product-info .description a{
	color:#<?php echo $this->config->get('theme_color') ?>;}

/* Background Color */


body{
	background:#<?php echo $this->config->get('background_color') ?> ;
	background-image:url(catalog/view/theme/fashionista/image/bg/<?php echo $this->config->get('background_image') ?>);
	}

<?php if ($custombgimages) { ?>
body{
	background-image:url(<?php echo $custombgimages; ?>);}
<?php } ?>

</style>
</head>
<body>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <?php if ($category['category_id']==$category_id) { ?>
			<li class="active"><a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a>
		<?php } else { ?>
			<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
		<?php } ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>
