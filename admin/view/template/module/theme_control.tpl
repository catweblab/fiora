<?php echo $header; ?>
<link id="Cuprum" href="http://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
  <div class="box fixed">
    <div class="heading">
      <h1><?php echo $heading_title; ?></h1>
    </div>
    <div class="content">
      <div id="themerz-settings-main">
  <h1><span><?php echo $text_theme_options; ?></span></h1>
<div class="buttons"><a onclick="$('#form').submit();" class="buttons"><span><?php echo $text_save_and_activate; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="buttons"><span><?php echo $button_cancel; ?></span></a></div>
<div id="tabs" class="htabs">
	<a href="#general-settings" style="display: inline; "><?php echo $text_general_settings; ?></a>
    <a href="#payment-image" style="display: inline; "><?php echo $text_payment_image; ?></a>
    <a href="#connect-settings" style="display: inline; "><?php echo $text_connect_settings; ?></a>
</div>

<div id="general-settings" class="tab-content" style="display: none; ">
  <h3><span class="font-settings"><?php echo $text_skin_and_font_settings; ?></span></h3>
<div>
	<label class="label"><?php echo $text_body_font; ?></label>
	<select name="theme_control_body_font" class="clean">
                  <?php if (isset($theme_control_body_font)) {
              $selected = 'selected="selected"';
              ?>
		<optgroup label="General Fonts">
            <option value="Arial" <?php if($theme_control_body_font=='Arial'){echo $selected;} ?>>Arial</option>
            <option value="Verdana" <?php if($theme_control_body_font=='Verdana'){echo $selected;} ?>>Verdana</option>
            <option value="Helvetica" <?php if($theme_control_body_font=='Helvetica'){echo $selected;} ?>>Helvetica</option>
            <option value="Lucida Sans Unicode" <?php if($theme_control_body_font=='Lucida Sans Unicode'){echo $selected;} ?>>Lucida Sans Unicode</option>
            <option value="Trebuchet MS" <?php if($theme_control_body_font=='Trebuchet MS'){echo $selected;} ?>>Trebuchet MS</option>
            <option value="Times New Roman" <?php if($theme_control_body_font=='Times New Roman'){echo $selected;} ?>>Times New Roman</option>
            <option value="Tahoma" <?php if($theme_control_body_font=='Tahoma'){echo $selected;} ?>>Tahoma</option>
            <option value="Georgia" <?php if($theme_control_body_font=='Georgia'){echo $selected;} ?>>Georgia</option>
		</optgroup>
        <optgroup label="Google Fonts">
                  <option value="Aclonica" <?php if($theme_control_body_font=='Aclonica'){echo $selected;} ?>>Aclonica</option>
                  <option value="Allan" <?php if($theme_control_body_font=='Allan'){echo $selected;} ?>>Allan</option>
                  <option value="Annie+Use+Your+Telescope" <?php if($theme_control_body_font=='Annie+Use+Your+Telescope'){echo $selected;} ?>>Annie Use Your Telescope</option>
                  <option value="Anonymous+Pro" <?php if($theme_control_body_font=='Anonymous+Pro'){echo $selected;} ?>>Anonymous Pro</option>
                  <option value="Allerta+Stencil" <?php if($theme_control_body_font=='Allerta+Stencil'){echo $selected;} ?>>Allerta Stencil</option>
                  <option value="Allerta" <?php if($theme_control_body_font=='Allerta'){echo $selected;} ?>>Allerta</option>
                  <option value="Amaranth" <?php if($theme_control_body_font=='Amaranth'){echo $selected;} ?>>Amaranth</option>
                  <option value="Anton" <?php if($theme_control_body_font=='Anton'){echo $selected;} ?>>Anton</option>
                  <option value="Architects+Daughter" <?php if($theme_control_body_font=='Architects+Daughter'){echo $selected;} ?>>Architects Daughter</option>
                  <option value="Arimo" <?php if($theme_control_body_font=='Arimo'){echo $selected;} ?>>Arimo</option>
                  <option value="Artifika" <?php if($theme_control_body_font=='Artifika'){echo $selected;} ?>>Artifika</option>
                  <option value="Arvo" <?php if($theme_control_body_font=='Arvo'){echo $selected;} ?>>Arvo</option>
                  <option value="Asset" <?php if($theme_control_body_font=='Asset'){echo $selected;} ?>>Asset</option>
                  <option value="Astloch" <?php if($theme_control_body_font=='Astloch'){echo $selected;} ?>>Astloch</option>
                  <option value="Bangers" <?php if($theme_control_body_font=='Bangers'){echo $selected;} ?>>Bangers</option>
                  <option value="Bentham" <?php if($theme_control_body_font=='Bentham'){echo $selected;} ?>>Bentham</option>
                  <option value="Bevan" <?php if($theme_control_body_font=='Bevan'){echo $selected;} ?>>Bevan</option>
                  <option value="Bigshot+One" <?php if($theme_control_body_font=='Bigshot+One'){echo $selected;} ?>>Bigshot One</option>
                  <option value="Bowlby+One" <?php if($theme_control_body_font=='Bowlby+One'){echo $selected;} ?>>Bowlby One</option>
                  <option value="Bowlby+One+SC" <?php if($theme_control_body_font=='Bowlby+One+SC'){echo $selected;} ?>>Bowlby One SC</option>
                  <option value="Brawler" <?php if($theme_control_body_font=='Brawler'){echo $selected;} ?>>Brawler </option>
                  <option value="Buda" <?php if($theme_control_body_font=='Buda'){echo $selected;} ?>>Buda</option>
                  <option value="Cabin" <?php if($theme_control_body_font=='Cabin'){echo $selected;} ?>>Cabin</option>
                  <option value="Calligraffitti" <?php if($theme_control_body_font=='Calligraffitti'){echo $selected;} ?>>Calligraffitti</option>
                  <option value="Candal" <?php if($theme_control_body_font=='Candal'){echo $selected;} ?>>Candal</option>
                  <option value="Cantarell" <?php if($theme_control_body_font=='Cantarell'){echo $selected;} ?>>Cantarell</option>
                  <option value="Cardo" <?php if($theme_control_body_font=='Cardo'){echo $selected;} ?>>Cardo</option>
                  <option value="Carter+One" <?php if($theme_control_body_font=='Carter+One'){echo $selected;} ?>>Carter One</option>
                  <option value="Caudex" <?php if($theme_control_body_font=='Caudex'){echo $selected;} ?>>Caudex</option>
                  <option value="Cedarville+Cursive" <?php if($theme_control_body_font=='Cedarville+Cursive'){echo $selected;} ?>>Cedarville Cursive</option>
                  <option value="Cherry+Cream+Soda" <?php if($theme_control_body_font=='Cherry+Cream+Soda'){echo $selected;} ?>>Cherry Cream Soda</option>
                  <option value="Chewy" <?php if($theme_control_body_font=='Chewy'){echo $selected;} ?>>Chewy</option>
                  <option value="Coda" <?php if($theme_control_body_font=='Coda'){echo $selected;} ?>>Coda</option>
                  <option value="Coming+Soon" <?php if($theme_control_body_font=='Coming+Soon'){echo $selected;} ?>>Coming Soon</option>
                  <option value="Copse" <?php if($theme_control_body_font=='Copse'){echo $selected;} ?>>Copse</option>
                  <option value="Corben" <?php if($theme_control_body_font=='Corben'){echo $selected;} ?>>Corben</option>
                  <option value="Cousine" <?php if($theme_control_body_font=='Cousine'){echo $selected;} ?>>Cousine</option>
                  <option value="Covered+By+Your+Grace" <?php if($theme_control_body_font=='Covered+By+Your+Grace'){echo $selected;} ?>>Covered By Your Grace</option>
                  <option value="Crafty+Girls" <?php if($theme_control_body_font=='Crafty+Girls'){echo $selected;} ?>>Crafty Girls</option>
                  <option value="Crimson+Text" <?php if($theme_control_body_font=='Crimson+Text'){echo $selected;} ?>>Crimson Text</option>
                  <option value="Crushed" <?php if($theme_control_body_font=='Crushed'){echo $selected;} ?>>Crushed</option>
                  <option value="Cuprum" <?php if($theme_control_body_font=='Cuprum'){echo $selected;} ?>>Cuprum</option>
                  <option value="Damion" <?php if($theme_control_body_font=='Damion'){echo $selected;} ?>>Damion</option>
                  <option value="Dancing+Script" <?php if($theme_control_body_font=='Dancing+Script'){echo $selected;} ?>>Dancing Script</option>
                  <option value="Dawning+of+a+New+Day" <?php if($theme_control_body_font=='Dawning+of+a+New+Day'){echo $selected;} ?>>Dawning of a New Day</option>
                  <option value="Didact+Gothic" <?php if($theme_control_body_font=='Didact+Gothic'){echo $selected;} ?>>Didact Gothic</option>
                  <option value="Droid+Sans" <?php if($theme_control_body_font=='Droid+Sans'){echo $selected;} ?>>Droid Sans</option>
                  <option value="Droid+Sans+Mono" <?php if($theme_control_body_font=='Droid+Sans+Mono'){echo $selected;} ?>>Droid Sans Mono</option>
                  <option value="Droid+Serif" <?php if($theme_control_body_font=='Droid+Serif'){echo $selected;} ?>>Droid Serif</option>
                  <option value="EB+Garamond" <?php if($theme_control_body_font=='EB+Garamond'){echo $selected;} ?>>EB Garamond</option>
                  <option value="Expletus+Sans" <?php if($theme_control_body_font=='Expletus+Sans'){echo $selected;} ?>>Expletus Sans</option>
                  <option value="Fontdiner+Swanky" <?php if($theme_control_body_font=='Fontdiner+Swanky'){echo $selected;} ?>>Fontdiner Swanky</option>
                  <option value="Forum" <?php if($theme_control_body_font=='Forum'){echo $selected;} ?>>Forum</option>
                  <option value="Francois+One" <?php if($theme_control_body_font=='Francois+One'){echo $selected;} ?>>Francois One</option>
                  <option value="Federo" <?php if($theme_control_body_font=='Federo'){echo $selected;} ?>>Federo</option>
                  <option value="Geo" <?php if($theme_control_body_font=='Geo'){echo $selected;} ?>>Geo</option>
                  <option value="Give+You+Glory" <?php if($theme_control_body_font=='Give+You+Glory'){echo $selected;} ?>>Give You Glory</option>
                  <option value="Goblin+One" <?php if($theme_control_body_font=='Goblin+One'){echo $selected;} ?>>Goblin One</option>
                  <option value="Goudy+Bookletter+1911" <?php if($theme_control_body_font=='Goudy+Bookletter+1911'){echo $selected;} ?>>Goudy Bookletter 1911</option>
                  <option value="Gravitas+One" <?php if($theme_control_body_font=='Gravitas+One'){echo $selected;} ?>>Gravitas One</option>
                  <option value="Gruppo" <?php if($theme_control_body_font=='Gruppo'){echo $selected;} ?>>Gruppo</option>
                  <option value="Hammersmith+One" <?php if($theme_control_body_font=='Hammersmith+One'){echo $selected;} ?>>Hammersmith One</option>
                  <option value="Holtwood+One+SC" <?php if($theme_control_body_font=='Holtwood+One+SC'){echo $selected;} ?>>Holtwood One SC</option>
                  <option value="Homemade+Apple" <?php if($theme_control_body_font=='Homemade+Apple'){echo $selected;} ?>>Homemade Apple</option>
                  <option value="Inconsolata" <?php if($theme_control_body_font=='Inconsolata'){echo $selected;} ?>>Inconsolata</option>
                  <option value="Indie+Flower" <?php if($theme_control_body_font=='Indie+Flower'){echo $selected;} ?>>Indie Flower</option>
                  <option value="IM+Fell+DW+Pica" <?php if($theme_control_body_font=='IM+Fell+DW+Pica'){echo $selected;} ?>>IM Fell DW Pica</option>
                  <option value="IM+Fell+DW+Pica+SC" <?php if($theme_control_body_font=='IM+Fell+DW+Pica+SC'){echo $selected;} ?>>IM Fell DW Pica SC</option>
                  <option value="IM+Fell+Double+Pica" <?php if($theme_control_body_font=='IM+Fell+Double+Pica'){echo $selected;} ?>>IM Fell Double Pica</option>
                  <option value="IM+Fell+Double+Pica+SC" <?php if($theme_control_body_font=='IM+Fell+Double+Pica+SC'){echo $selected;} ?>>IM Fell Double Pica SC</option>
                  <option value="IM+Fell+English" <?php if($theme_control_body_font=='IM+Fell+English'){echo $selected;} ?>>IM Fell English</option>
                  <option value="IM+Fell+English+SC" <?php if($theme_control_body_font=='IM+Fell+English+SC'){echo $selected;} ?>>IM Fell English SC</option>
                  <option value="IM+Fell+French+Canon" <?php if($theme_control_body_font=='IM+Fell+French+Canon'){echo $selected;} ?>>IM Fell French Canon</option>
                  <option value="IM+Fell+French+Canon+SC" <?php if($theme_control_body_font=='IM+Fell+French+Canon+SC'){echo $selected;} ?>>IM Fell French Canon SC</option>
                  <option value="IM+Fell+Great+Primer" <?php if($theme_control_body_font=='IM+Fell+Great+Primer'){echo $selected;} ?>>IM Fell Great Primer</option>
                  <option value="IM+Fell+Great+Primer+SC" <?php if($theme_control_body_font=='IM+Fell+Great+Primer+SC'){echo $selected;} ?>>IM Fell Great Primer SC</option>
                  <option value="Irish+Grover" <?php if($theme_control_body_font=='Irish+Grover'){echo $selected;} ?>>Irish Grover</option>
                  <option value="Irish+Growler" <?php if($theme_control_body_font=='Irish+Growler'){echo $selected;} ?>>Irish Growler</option>
                  <option value="Istok+Web" <?php if($theme_control_body_font=='Istok+Web'){echo $selected;} ?>>Istok Web</option>
                  <option value="Josefin+Sans" <?php if($theme_control_body_font=='Josefin+Sans'){echo $selected;} ?>>Josefin Sans Regular 400</option>
                  <option value="Josefin+Slab" <?php if($theme_control_body_font=='Josefin+Slab'){echo $selected;} ?>>Josefin Slab Regular 400</option>
                  <option value="Judson" <?php if($theme_control_body_font=='Judson'){echo $selected;} ?>>Judson</option>
                  <option value="Jura" <?php if($theme_control_body_font=='Jura'){echo $selected;} ?>> Jura Regular</option>
                  <option value="Just+Another+Hand" <?php if($theme_control_body_font=='Just+Another+Hand'){echo $selected;} ?>>Just Another Hand</option>
                  <option value="Just+Me+Again+Down+Here" <?php if($theme_control_body_font=='Just+Me+Again+Down+Here'){echo $selected;} ?>>Just Me Again Down Here</option>
                  <option value="Kameron" <?php if($theme_control_body_font=='Kameron'){echo $selected;} ?>>Kameron</option>
                  <option value="Kenia" <?php if($theme_control_body_font=='Kenia'){echo $selected;} ?>>Kenia</option>
                  <option value="Kranky" <?php if($theme_control_body_font=='Kranky'){echo $selected;} ?>>Kranky</option>
                  <option value="Kreon" <?php if($theme_control_body_font=='Kreon'){echo $selected;} ?>>Kreon</option>
                  <option value="Kristi" <?php if($theme_control_body_font=='Kristi'){echo $selected;} ?>>Kristi</option>
                  <option value="La+Belle+Aurore" <?php if($theme_control_body_font=='La+Belle+Aurore'){echo $selected;} ?>>La Belle Aurore</option>
                  <option value="Lato" <?php if($theme_control_body_font=='Lato'){echo $selected;} ?>>Lato</option>
                  <option value="League+Script" <?php if($theme_control_body_font=='League+Script'){echo $selected;} ?>>League Script</option>
                  <option value="Lekton" <?php if($theme_control_body_font=='Lekton'){echo $selected;} ?>> Lekton </option>
                  <option value="Limelight" <?php if($theme_control_body_font=='Limelight'){echo $selected;} ?>> Limelight </option>
                  <option value="Lobster" <?php if($theme_control_body_font=='Lobster'){echo $selected;} ?>>Lobster</option>
                  <option value="Lobster+Two" <?php if($theme_control_body_font=='Lobster+Two'){echo $selected;} ?>>Lobster Two</option>
                  <option value="Lora" <?php if($theme_control_body_font=='Lora'){echo $selected;} ?>>Lora</option>
                  <option value="Love+Ya+Like+A+Sister" <?php if($theme_control_body_font=='Love+Ya+Like+A+Sister'){echo $selected;} ?>>Love Ya Like A Sister</option>
                  <option value="Loved+by+the+King" <?php if($theme_control_body_font=='Loved+by+the+King'){echo $selected;} ?>>Loved by the King</option>
                  <option value="Luckiest+Guy" <?php if($theme_control_body_font=='Luckiest+Guy'){echo $selected;} ?>>Luckiest Guy</option>
                  <option value="Maiden+Orange" <?php if($theme_control_body_font=='Maiden+Orange'){echo $selected;} ?>>Maiden Orange</option>
                  <option value="Mako" <?php if($theme_control_body_font=='Mako'){echo $selected;} ?>>Mako</option>
                  <option value="Maven+Pro" <?php if($theme_control_body_font=='Maven+Pro'){echo $selected;} ?>> Maven Pro</option>
                  <option value="Meddon" <?php if($theme_control_body_font=='Meddon'){echo $selected;} ?>>Meddon</option>
                  <option value="MedievalSharp" <?php if($theme_control_body_font=='MedievalSharp'){echo $selected;} ?>>MedievalSharp</option>
                  <option value="Megrim" <?php if($theme_control_body_font=='Megrim'){echo $selected;} ?>>Megrim</option>
                  <option value="Merriweather" <?php if($theme_control_body_font=='Merriweather'){echo $selected;} ?>>Merriweather</option>
                  <option value="Metrophobic" <?php if($theme_control_body_font=='Metrophobic'){echo $selected;} ?>>Metrophobic</option>
                  <option value="Michroma" <?php if($theme_control_body_font=='Michroma'){echo $selected;} ?>>Michroma</option>
                  <option value="Miltonian+Tattoo" <?php if($theme_control_body_font=='Miltonian+Tattoo'){echo $selected;} ?>>Miltonian Tattoo</option>
                  <option value="Miltonian" <?php if($theme_control_body_font=='Miltonian'){echo $selected;} ?>>Miltonian</option>
                  <option value="Modern+Antiqua" <?php if($theme_control_body_font=='Modern+Antiqua'){echo $selected;} ?>>Modern Antiqua</option>
                  <option value="Monofett" <?php if($theme_control_body_font=='Monofett'){echo $selected;} ?>>Monofett</option>
                  <option value="Molengo" <?php if($theme_control_body_font=='Molengo'){echo $selected;} ?>>Molengo</option>
                  <option value="Mountains+of+Christmas" <?php if($theme_control_body_font=='Mountains+of+Christmas'){echo $selected;} ?>>Mountains of Christmas</option>
                  <option value="Muli" <?php if($theme_control_body_font=='Muli'){echo $selected;} ?>>Muli Regular</option>
                  <option value="Neucha" <?php if($theme_control_body_font=='Neucha'){echo $selected;} ?>>Neucha</option>
                  <option value="Neuton" <?php if($theme_control_body_font=='Neuton'){echo $selected;} ?>>Neuton</option>
                  <option value="News+Cycle" <?php if($theme_control_body_font=='News+Cycle'){echo $selected;} ?>>News Cycle</option>
                  <option value="Nixie+One" <?php if($theme_control_body_font=='Nixie+One'){echo $selected;} ?>>Nixie One</option>
                  <option value="Nobile" <?php if($theme_control_body_font=='Nobile'){echo $selected;} ?>>Nobile</option>
                  <option value="Nova+Cut" <?php if($theme_control_body_font=='Nova+Cut'){echo $selected;} ?>>Nova Cut</option>
                  <option value="Nova+Flat" <?php if($theme_control_body_font=='Nova+Flat'){echo $selected;} ?>>Nova Flat</option>
                  <option value="Nova+Mono" <?php if($theme_control_body_font=='Nova+Mono'){echo $selected;} ?>>Nova Mono</option>
                  <option value="Nova+Oval" <?php if($theme_control_body_font=='Nova+Oval'){echo $selected;} ?>>Nova Oval</option>
                  <option value="Nova+Round" <?php if($theme_control_body_font=='Nova+Round'){echo $selected;} ?>>Nova Round</option>
                  <option value="Nova+Script" <?php if($theme_control_body_font=='Nova+Script'){echo $selected;} ?>>Nova Script</option>
                  <option value="Nova+Slim" <?php if($theme_control_body_font=='Nova+Slim'){echo $selected;} ?>>Nova Slim</option>
                  <option value="Nova+Square" <?php if($theme_control_body_font=='Nova+Square'){echo $selected;} ?>>Nova Square</option>
                  <option value="Nunito" <?php if($theme_control_body_font=='Nunito'){echo $selected;} ?>> Nunito Regular</option>
                  <option value="OFL+Sorts+Mill+Goudy+TT" <?php if($theme_control_body_font=='OFL+Sorts+Mill+Goudy+TT'){echo $selected;} ?>>OFL Sorts Mill Goudy TT</option>
                  <option value="Old+Standard+TT" <?php if($theme_control_body_font=='Old+Standard+TT'){echo $selected;} ?>>Old Standard TT</option>
                  <option value="Open+Sans" <?php if($theme_control_body_font=='Open+Sans'){echo $selected;} ?>>Open Sans regular</option>
                  <option value="Open+Sans+Condensed" <?php if($theme_control_body_font=='Open+Sans+Condensed'){echo $selected;} ?>>Open Sans Condensed</option>
                  <option value="Orbitron" <?php if($theme_control_body_font=='Orbitron'){echo $selected;} ?>>Orbitron Regular (400)</option>
                  <option value="Oswald" <?php if($theme_control_body_font=='Oswald'){echo $selected;} ?>>Oswald</option>
                  <option value="Over+the+Rainbow" <?php if($theme_control_body_font=='Over+the+Rainbow'){echo $selected;} ?>>Over the Rainbow</option>
                  <option value="Reenie+Beanie" <?php if($theme_control_body_font=='Reenie+Beanie'){echo $selected;} ?>>Reenie Beanie</option>
                  <option value="Pacifico" <?php if($theme_control_body_font=='Pacifico'){echo $selected;} ?>>Pacifico</option>
                  <option value="Patrick+Hand" <?php if($theme_control_body_font=='Patrick+Hand'){echo $selected;} ?>>Patrick Hand</option>
                  <option value="Paytone+One" <?php if($theme_control_body_font=='Paytone+One'){echo $selected;} ?>>Paytone One</option>
                  <option value="Permanent+Marker" <?php if($theme_control_body_font=='Permanent+Marker'){echo $selected;} ?>>Permanent Marker</option>
                  <option value="Philosopher" <?php if($theme_control_body_font=='Philosopher'){echo $selected;} ?>>Philosopher</option>
                  <option value="Play" <?php if($theme_control_body_font=='Play'){echo $selected;} ?>>Play</option>
                  <option value="Playfair+Display" <?php if($theme_control_body_font=='Playfair+Display'){echo $selected;} ?>> Playfair Display </option>
                  <option value="Podkova" <?php if($theme_control_body_font=='Podkova'){echo $selected;} ?>> Podkova </option>
                  <option value="PT+Sans" <?php if($theme_control_body_font=='PT+Sans'){echo $selected;} ?>>PT Sans</option>
                  <option value="PT+Sans+Narrow" <?php if($theme_control_body_font=='PT+Sans+Narrow'){echo $selected;} ?>>PT Sans Narrow</option>
                  <option value="PT+Serif" <?php if($theme_control_body_font=='PT+Serif'){echo $selected;} ?>>PT Serif</option>
                  <option value="Puritan" <?php if($theme_control_body_font=='Puritan'){echo $selected;} ?>>Puritan</option>
                  <option value="Quattrocento" <?php if($theme_control_body_font=='Quattrocento'){echo $selected;} ?>>Quattrocento</option>
                  <option value="Quattrocento+Sans" <?php if($theme_control_body_font=='Quattrocento+Sans'){echo $selected;} ?>>Quattrocento Sans</option>
                  <option value="Radley" <?php if($theme_control_body_font=='Radley'){echo $selected;} ?>>Radley</option>
                  <option value="Raleway" <?php if($theme_control_body_font=='Raleway'){echo $selected;} ?>>Raleway</option>
                  <option value="Redressed" <?php if($theme_control_body_font=='Redressed'){echo $selected;} ?>>Redressed</option>
                  <option value="Rock+Salt" <?php if($theme_control_body_font=='Rock+Salt'){echo $selected;} ?>>Rock Salt</option>
                  <option value="Rokkitt" <?php if($theme_control_body_font=='Rokkitt'){echo $selected;} ?>>Rokkitt</option>
                  <option value="Ruslan+Display" <?php if($theme_control_body_font=='Ruslan+Display'){echo $selected;} ?>>Ruslan Display</option>
                  <option value="Schoolbell" <?php if($theme_control_body_font=='Schoolbell'){echo $selected;} ?>>Schoolbell</option>
                  <option value="Shadows+Into+Light" <?php if($theme_control_body_font=='Shadows+Into+Light'){echo $selected;} ?>>Shadows Into Light</option>
                  <option value="Shanti" <?php if($theme_control_body_font=='Shanti'){echo $selected;} ?>>Shanti</option>
                  <option value="Sigmar+One" <?php if($theme_control_body_font=='Sigmar+One'){echo $selected;} ?>>Sigmar One</option>
                  <option value="Six+Caps" <?php if($theme_control_body_font=='Six+Caps'){echo $selected;} ?>>Six Caps</option>
                  <option value="Slackey" <?php if($theme_control_body_font=='Slackey'){echo $selected;} ?>>Slackey</option>
                  <option value="Smythe" <?php if($theme_control_body_font=='Smythe'){echo $selected;} ?>>Smythe</option>
                  <option value="Sniglet" <?php if($theme_control_body_font=='Sniglet'){echo $selected;} ?>>Sniglet</option>
                  <option value="Special+Elite" <?php if($theme_control_body_font=='Special+Elite'){echo $selected;} ?>>Special Elite</option>
                  <option value="Stardos+Stencil" <?php if($theme_control_body_font=='Stardos+Stencil'){echo $selected;} ?>>Stardos Stencil</option>
                  <option value="Sue+Ellen+Francisco" <?php if($theme_control_body_font=='Sue+Ellen+Francisco'){echo $selected;} ?>>Sue Ellen Francisco</option>
                  <option value="Sunshiney" <?php if($theme_control_body_font=='Sunshiney'){echo $selected;} ?>>Sunshiney</option>
                  <option value="Swanky+and+Moo+Moo" <?php if($theme_control_body_font=='Swanky+and+Moo+Moo'){echo $selected;} ?>>Swanky and Moo Moo</option>
                  <option value="Syncopate" <?php if($theme_control_body_font=='Syncopate'){echo $selected;} ?>>Syncopate</option>
                  <option value="Tangerine" <?php if($theme_control_body_font=='Tangerine'){echo $selected;} ?>>Tangerine</option>
                  <option value="Tenor+Sans" <?php if($theme_control_body_font=='Tenor+Sans'){echo $selected;} ?>> Tenor Sans </option>
                  <option value="Terminal+Dosis+Light" <?php if($theme_control_body_font=='Terminal+Dosis+Light'){echo $selected;} ?>>Terminal Dosis Light</option>
                  <option value="The+Girl+Next+Door" <?php if($theme_control_body_font=='The+Girl+Next+Door'){echo $selected;} ?>>The Girl Next Door</option>
                  <option value="Tinos" <?php if($theme_control_body_font=='Tinos'){echo $selected;} ?>>Tinos</option>
                  <option value="Ubuntu" <?php if($theme_control_body_font=='Ubuntu'){echo $selected;} ?>>Ubuntu</option>
                  <option value="Ultra" <?php if($theme_control_body_font=='Ultra'){echo $selected;} ?>>Ultra</option>
                  <option value="Unkempt" <?php if($theme_control_body_font=='Unkempt'){echo $selected;} ?>>Unkempt</option>
                  <option value="UnifrakturCook:bold" <?php if($theme_control_body_font=='UnifrakturCook:bold'){echo $selected;} ?>>UnifrakturCook</option>
                  <option value="UnifrakturMaguntia" <?php if($theme_control_body_font=='UnifrakturMaguntia'){echo $selected;} ?>>UnifrakturMaguntia</option>
                  <option value="Varela" <?php if($theme_control_body_font=='Varela'){echo $selected;} ?>>Varela</option>
                  <option value="Varela+Round" <?php if($theme_control_body_font=='Varela+Round'){echo $selected;} ?>>Varela Round</option>
                  <option value="Vibur" <?php if($theme_control_body_font=='Vibur'){echo $selected;} ?>>Vibur</option>
                  <option value="Vollkorn" <?php if($theme_control_body_font=='Vollkorn'){echo $selected;} ?>>Vollkorn</option>
                  <option value="Waiting+for+the+Sunrise" <?php if($theme_control_body_font=='Waiting+for+the+Sunrise'){echo $selected;} ?>>Waiting for the Sunrise</option>
                  <option value="Wallpoet" <?php if($theme_control_body_font=='Wallpoet'){echo $selected;} ?>>Wallpoet</option>
                  <option value="Walter+Turncoat" <?php if($theme_control_body_font=='Walter+Turncoat'){echo $selected;} ?>>Walter Turncoat</option>
                  <option value="Wire+One" <?php if($theme_control_body_font=='Wire+One'){echo $selected;} ?>>Wire One</option>
                  <option value="Yanone+Kaffeesatz" <?php if($theme_control_body_font=='Yanone+Kaffeesatz'){echo $selected;} ?>>Yanone Kaffeesatz</option>
                  <option value="Yeseva+One" <?php if($theme_control_body_font=='Yeseva+One'){echo $selected;} ?>>Yeseva One</option>
                  <option value="Yellowtail" <?php if($theme_control_body_font=='Yellowtail'){echo $selected;} ?>>Yellowtail</option>
                  <option value="Zeyada" <?php if($theme_control_body_font=='Zeyada'){echo $selected;} ?>>Zeyada</option>
                  <option value="Rochester" <?php if($theme_control_body_font=='Rochester'){echo $selected;} ?>>Rochester</option>
			</optgroup>
                  <?php } else { ?>
		<optgroup label="General Fonts">
            <option value="Arial">Arial</option>
            <option value="Verdana">Verdana</option>
            <option value="Helvetica">Helvetica</option>
            <option value="Lucida Sans Unicode" selected="selected">Lucida Sans Unicode</option>
            <option value="Trebuchet MS">Trebuchet MS</option>
            <option value="Times New Roman">Times New Roman</option>
            <option value="Tahoma">Tahoma</option>
            <option value="Georgia">Georgia</option>
		</optgroup>
        <optgroup label="Google Fonts">
                  <option value="Aclonica">Aclonica</option>
                  <option value="Allan">Allan</option>
                  <option value="Annie+Use+Your+Telescope">Annie Use Your Telescope</option>
                  <option value="Anonymous+Pro">Anonymous Pro</option>
                  <option value="Allerta+Stencil">Allerta Stencil</option>
                  <option value="Allerta">Allerta</option>
                  <option value="Amaranth">Amaranth</option>
                  <option value="Anton">Anton</option>
                  <option value="Architects+Daughter">Architects Daughter</option>
                  <option value="Arimo">Arimo</option>
                  <option value="Artifika">Artifika</option>
                  <option value="Arvo">Arvo</option>
                  <option value="Asset">Asset</option>
                  <option value="Astloch">Astloch</option>
                  <option value="Bangers">Bangers</option>
                  <option value="Bentham">Bentham</option>
                  <option value="Bevan">Bevan</option>
                  <option value="Bigshot+One">Bigshot One</option>
                  <option value="Bowlby+One">Bowlby One</option>
                  <option value="Bowlby+One+SC">Bowlby One SC</option>
                  <option value="Brawler">Brawler </option>
                  <option value="Buda">Buda</option>
                  <option value="Cabin">Cabin</option>
                  <option value="Calligraffitti">Calligraffitti</option>
                  <option value="Candal">Candal</option>
                  <option value="Cantarell">Cantarell</option>
                  <option value="Cardo">Cardo</option>
                  <option value="Carter+One">Carter One</option>
                  <option value="Caudex">Caudex</option>
                  <option value="Cedarville+Cursive">Cedarville Cursive</option>
                  <option value="Cherry+Cream+Soda">Cherry Cream Soda</option>
                  <option value="Chewy">Chewy</option>
                  <option value="Coda">Coda</option>
                  <option value="Coming+Soon">Coming Soon</option>
                  <option value="Copse">Copse</option>
                  <option value="Corben">Corben</option>
                  <option value="Cousine">Cousine</option>
                  <option value="Covered+By+Your+Grace">Covered By Your Grace</option>
                  <option value="Crafty+Girls">Crafty Girls</option>
                  <option value="Crimson+Text">Crimson Text</option>
                  <option value="Crushed">Crushed</option>
                  <option value="Cuprum">Cuprum</option>
                  <option value="Damion">Damion</option>
                  <option value="Dancing+Script">Dancing Script</option>
                  <option value="Dawning+of+a+New+Day">Dawning of a New Day</option>
                  <option value="Didact+Gothic">Didact Gothic</option>
                  <option value="Droid+Sans">Droid Sans</option>
                  <option value="Droid+Sans+Mono">Droid Sans Mono</option>
                  <option value="Droid+Serif">Droid Serif</option>
                  <option value="EB+Garamond">EB Garamond</option>
                  <option value="Expletus+Sans">Expletus Sans</option>
                  <option value="Fontdiner+Swanky">Fontdiner Swanky</option>
                  <option value="Forum">Forum</option>
                  <option value="Francois+One">Francois One</option>
                  <option value="Federo">Federo</option>
                  <option value="Geo">Geo</option>
                  <option value="Give+You+Glory">Give You Glory</option>
                  <option value="Goblin+One">Goblin One</option>
                  <option value="Goudy+Bookletter+1911">Goudy Bookletter 1911</option>
                  <option value="Gravitas+One">Gravitas One</option>
                  <option value="Gruppo">Gruppo</option>
                  <option value="Hammersmith+One">Hammersmith One</option>
                  <option value="Holtwood+One+SC">Holtwood One SC</option>
                  <option value="Homemade+Apple">Homemade Apple</option>
                  <option value="Inconsolata">Inconsolata</option>
                  <option value="Indie+Flower">Indie Flower</option>
                  <option value="IM+Fell+DW+Pica">IM Fell DW Pica</option>
                  <option value="IM+Fell+DW+Pica+SC">IM Fell DW Pica SC</option>
                  <option value="IM+Fell+Double+Pica">IM Fell Double Pica</option>
                  <option value="IM+Fell+Double+Pica+SC">IM Fell Double Pica SC</option>
                  <option value="IM+Fell+English">IM Fell English</option>
                  <option value="IM+Fell+English+SC">IM Fell English SC</option>
                  <option value="IM+Fell+French+Canon">IM Fell French Canon</option>
                  <option value="IM+Fell+French+Canon+SC">IM Fell French Canon SC</option>
                  <option value="IM+Fell+Great+Primer">IM Fell Great Primer</option>
                  <option value="IM+Fell+Great+Primer+SC">IM Fell Great Primer SC</option>
                  <option value="Irish+Grover">Irish Grover</option>
                  <option value="Irish+Growler">Irish Growler</option>
                  <option value="Istok+Web">Istok Web</option>
                  <option value="Josefin+Sans">Josefin Sans Regular 400</option>
                  <option value="Josefin+Slab">Josefin Slab Regular 400</option>
                  <option value="Judson">Judson</option>
                  <option value="Jura"> Jura Regular</option>
                  <option value="Just+Another+Hand">Just Another Hand</option>
                  <option value="Just+Me+Again+Down+Here">Just Me Again Down Here</option>
                  <option value="Kameron">Kameron</option>
                  <option value="Kenia">Kenia</option>
                  <option value="Kranky">Kranky</option>
                  <option value="Kreon">Kreon</option>
                  <option value="Kristi">Kristi</option>
                  <option value="La+Belle+Aurore">La Belle Aurore</option>
                  <option value="Lato">Lato</option>
                  <option value="League+Script">League Script</option>
                  <option value="Lekton"> Lekton </option>
                  <option value="Limelight"> Limelight </option>
                  <option value="Lobster">Lobster</option>
                  <option value="Lobster+Two">Lobster Two</option>
                  <option value="Lora">Lora</option>
                  <option value="Love+Ya+Like+A+Sister">Love Ya Like A Sister</option>
                  <option value="Loved+by+the+King">Loved by the King</option>
                  <option value="Luckiest+Guy">Luckiest Guy</option>
                  <option value="Maiden+Orange">Maiden Orange</option>
                  <option value="Mako">Mako</option>
                  <option value="Maven+Pro"> Maven Pro</option>
                  <option value="Meddon">Meddon</option>
                  <option value="MedievalSharp">MedievalSharp</option>
                  <option value="Megrim">Megrim</option>
                  <option value="Merriweather">Merriweather</option>
                  <option value="Metrophobic">Metrophobic</option>
                  <option value="Michroma">Michroma</option>
                  <option value="Miltonian+Tattoo">Miltonian Tattoo</option>
                  <option value="Miltonian">Miltonian</option>
                  <option value="Modern+Antiqua">Modern Antiqua</option>
                  <option value="Monofett">Monofett</option>
                  <option value="Molengo">Molengo</option>
                  <option value="Mountains+of+Christmas">Mountains of Christmas</option>
                  <option value="Muli">Muli Regular</option>
                  <option value="Neucha">Neucha</option>
                  <option value="Neuton">Neuton</option>
                  <option value="News+Cycle">News Cycle</option>
                  <option value="Nixie+One">Nixie One</option>
                  <option value="Nobile">Nobile</option>
                  <option value="Nova+Cut">Nova Cut</option>
                  <option value="Nova+Flat">Nova Flat</option>
                  <option value="Nova+Mono">Nova Mono</option>
                  <option value="Nova+Oval">Nova Oval</option>
                  <option value="Nova+Round">Nova Round</option>
                  <option value="Nova+Script">Nova Script</option>



                  <option value="Nova+Slim">Nova Slim</option>
                  <option value="Nova+Square">Nova Square</option>
                  <option value="Nunito"> Nunito Regular</option>
                  <option value="OFL+Sorts+Mill+Goudy+TT">OFL Sorts Mill Goudy TT</option>
                  <option value="Old+Standard+TT">Old Standard TT</option>
                  <option value="Open+Sans">Open Sans regular</option>
                  <option value="Open+Sans+Condensed">Open Sans Condensed</option>
                  <option value="Orbitron">Orbitron Regular (400)</option>
                  <option value="Oswald">Oswald</option>
                  <option value="Over+the+Rainbow">Over the Rainbow</option>
                  <option value="Reenie+Beanie">Reenie Beanie</option>
                  <option value="Pacifico">Pacifico</option>
                  <option value="Patrick+Hand">Patrick Hand</option>
                  <option value="Paytone+One">Paytone One</option>
                  <option value="Permanent+Marker">Permanent Marker</option>
                  <option value="Philosopher">Philosopher</option>
                  <option value="Play">Play</option>
                  <option value="Playfair+Display"> Playfair Display </option>
                  <option value="Podkova"> Podkova </option>
                  <option value="PT+Sans">PT Sans</option>
                  <option value="PT+Sans+Narrow">PT Sans Narrow</option>
                  <option value="PT+Serif">PT Serif</option>
                  <option value="Puritan">Puritan</option>
                  <option value="Quattrocento">Quattrocento</option>
                  <option value="Quattrocento+Sans">Quattrocento Sans</option>
                  <option value="Radley">Radley</option>
                  <option value="Raleway">Raleway</option>
                  <option value="Redressed">Redressed</option>
                  <option value="Rock+Salt">Rock Salt</option>
                  <option value="Rokkitt">Rokkitt</option>
                  <option value="Ruslan+Display">Ruslan Display</option>
                  <option value="Schoolbell">Schoolbell</option>
                  <option value="Shadows+Into+Light">Shadows Into Light</option>
                  <option value="Shanti">Shanti</option>
                  <option value="Sigmar+One">Sigmar One</option>
                  <option value="Six+Caps">Six Caps</option>
                  <option value="Slackey">Slackey</option>
                  <option value="Smythe">Smythe</option>
                  <option value="Sniglet">Sniglet</option>
                  <option value="Special+Elite">Special Elite</option>
                  <option value="Stardos+Stencil">Stardos Stencil</option>
                  <option value="Sue+Ellen+Francisco">Sue Ellen Francisco</option>
                  <option value="Sunshiney">Sunshiney</option>
                  <option value="Swanky+and+Moo+Moo">Swanky and Moo Moo</option>
                  <option value="Syncopate">Syncopate</option>
                  <option value="Tangerine">Tangerine</option>
                  <option value="Tenor+Sans"> Tenor Sans </option>
                  <option value="Terminal+Dosis+Light">Terminal Dosis Light</option>
                  <option value="The+Girl+Next+Door">The Girl Next Door</option>
                  <option value="Tinos">Tinos</option>
                  <option value="Ubuntu">Ubuntu</option>
                  <option value="Ultra">Ultra</option>
                  <option value="Unkempt">Unkempt</option>
                  <option value="UnifrakturCook:bold">UnifrakturCook</option>
                  <option value="UnifrakturMaguntia">UnifrakturMaguntia</option>
                  <option value="Varela">Varela</option>
                  <option value="Varela+Round">Varela Round</option>
                  <option value="Vibur">Vibur</option>
                  <option value="Vollkorn">Vollkorn</option>
                  <option value="Waiting+for+the+Sunrise">Waiting for the Sunrise</option>
                  <option value="Wallpoet">Wallpoet</option>
                  <option value="Walter+Turncoat">Walter Turncoat</option>
                  <option value="Wire+One">Wire One</option>
                  <option value="Yanone+Kaffeesatz">Yanone Kaffeesatz</option>
                  <option value="Yeseva+One">Yeseva One</option>
                  <option value="Yellowtail">Yellowtail</option>
                  <option value="Zeyada">Zeyada</option>
                  <option value="Rochester">Rochester</option>
			</optgroup>
                  <?php } ?>
	</select>
    <label class="hint"><?php echo $text_select_font_for_body; ?></label>

</div>
<div class="clearfix"></div>

<div>
<label class="label"><?php echo $text_header_font; ?></label>
<select name="theme_control_headings_font" class="clean">
                  <?php if (isset($theme_control_headings_font)) {
                	$var_header_select = 'selected="selected"';
            ?>	  
			<optgroup label="General Fonts">
                                    <option value="Arial" <?php if($theme_control_headings_font=='Arial'){echo $selected;} ?>>Arial</option>
                  <option value="Verdana" <?php if($theme_control_headings_font=='Verdana'){echo $selected;} ?>>Verdana</option>
                  <option value="Helvetica" <?php if($theme_control_headings_font=='Helvetica'){echo $selected;} ?>>Helvetica</option>
                  <option value="Lucida Sans Unicode" <?php if($theme_control_headings_font=='Lucida Sans Unicode'){echo $selected;} ?>>Lucida Sans Unicode</option>
                  <option value="Trebuchet MS" <?php if($theme_control_headings_font=='Trebuchet MS'){echo $selected;} ?>>Trebuchet MS</option>
                  <option value="Times New Roman" <?php if($theme_control_headings_font=='Times New Roman'){echo $selected;} ?>>Times New Roman</option>
                  <option value="Tahoma" <?php if($theme_control_headings_font=='Tahoma'){echo $selected;} ?>>Tahoma</option>
                  <option value="Georgia" <?php if($theme_control_headings_font=='Georgia'){echo $selected;} ?>>Georgia</option>
			</optgroup>
                  
                  

			<optgroup label="Google Fonts">
                  <option value="Aclonica" <?php if($theme_control_headings_font=='Aclonica'){echo $var_header_select;} ?>>Aclonica</option>
                  <option value="Allan" <?php if($theme_control_headings_font=='Allan'){echo $var_header_select;} ?>>Allan</option>
                  <option value="Annie+Use+Your+Telescope" <?php if($theme_control_headings_font=='Annie+Use+Your+Telescope'){echo $var_header_select;} ?>>Annie Use Your Telescope</option>
                  <option value="Anonymous+Pro" <?php if($theme_control_headings_font=='Anonymous+Pro'){echo $var_header_select;} ?>>Anonymous Pro</option>
                  <option value="Allerta+Stencil" <?php if($theme_control_headings_font=='Allerta+Stencil'){echo $var_header_select;} ?>>Allerta Stencil</option>
                  <option value="Allerta" <?php if($theme_control_headings_font=='Allerta'){echo $var_header_select;} ?>>Allerta</option>
                  <option value="Amaranth" <?php if($theme_control_headings_font=='Amaranth'){echo $var_header_select;} ?>>Amaranth</option>
                  <option value="Anton" <?php if($theme_control_headings_font=='Anton'){echo $var_header_select;} ?>>Anton</option>
                  <option value="Architects+Daughter" <?php if($theme_control_headings_font=='Architects+Daughter'){echo $var_header_select;} ?>>Architects Daughter</option>
                  <option value="Arimo" <?php if($theme_control_headings_font=='Arimo'){echo $var_header_select;} ?>>Arimo</option>
                  <option value="Artifika" <?php if($theme_control_headings_font=='Artifika'){echo $var_header_select;} ?>>Artifika</option>
                  <option value="Arvo" <?php if($theme_control_headings_font=='Arvo'){echo $var_header_select;} ?>>Arvo</option>
                  <option value="Asset" <?php if($theme_control_headings_font=='Asset'){echo $var_header_select;} ?>>Asset</option>
                  <option value="Astloch" <?php if($theme_control_headings_font=='Astloch'){echo $var_header_select;} ?>>Astloch</option>
                  <option value="Bangers" <?php if($theme_control_headings_font=='Bangers'){echo $var_header_select;} ?>>Bangers</option>
                  <option value="Bentham" <?php if($theme_control_headings_font=='Bentham'){echo $var_header_select;} ?>>Bentham</option>
                  <option value="Bevan" <?php if($theme_control_headings_font=='Bevan'){echo $var_header_select;} ?>>Bevan</option>
                  <option value="Bigshot+One" <?php if($theme_control_headings_font=='Bigshot+One'){echo $var_header_select;} ?>>Bigshot One</option>
                  <option value="Bowlby+One" <?php if($theme_control_headings_font=='Bowlby+One'){echo $var_header_select;} ?>>Bowlby One</option>
                  <option value="Bowlby+One+SC" <?php if($theme_control_headings_font=='Bowlby+One+SC'){echo $var_header_select;} ?>>Bowlby One SC</option>
                  <option value="Brawler" <?php if($theme_control_headings_font=='Brawler'){echo $var_header_select;} ?>>Brawler </option>
                  <option value="Buda" <?php if($theme_control_headings_font=='Buda'){echo $var_header_select;} ?>>Buda</option>
                  <option value="Cabin" <?php if($theme_control_headings_font=='Cabin'){echo $var_header_select;} ?>>Cabin</option>
                  <option value="Calligraffitti" <?php if($theme_control_headings_font=='Calligraffitti'){echo $var_header_select;} ?>>Calligraffitti</option>
                  <option value="Candal" <?php if($theme_control_headings_font=='Candal'){echo $var_header_select;} ?>>Candal</option>
                  <option value="Cantarell" <?php if($theme_control_headings_font=='Cantarell'){echo $var_header_select;} ?>>Cantarell</option>
                  <option value="Cardo" <?php if($theme_control_headings_font=='Cardo'){echo $var_header_select;} ?>>Cardo</option>
                  <option value="Carter+One" <?php if($theme_control_headings_font=='Carter+One'){echo $var_header_select;} ?>>Carter One</option>
                  <option value="Caudex" <?php if($theme_control_headings_font=='Caudex'){echo $var_header_select;} ?>>Caudex</option>
                  <option value="Cedarville+Cursive" <?php if($theme_control_headings_font=='Cedarville+Cursive'){echo $var_header_select;} ?>>Cedarville Cursive</option>
                  <option value="Cherry+Cream+Soda" <?php if($theme_control_headings_font=='Cherry+Cream+Soda'){echo $var_header_select;} ?>>Cherry Cream Soda</option>
                  <option value="Chewy" <?php if($theme_control_headings_font=='Chewy'){echo $var_header_select;} ?>>Chewy</option>
                  <option value="Coda" <?php if($theme_control_headings_font=='Coda'){echo $var_header_select;} ?>>Coda</option>
                  <option value="Coming+Soon" <?php if($theme_control_headings_font=='Coming+Soon'){echo $var_header_select;} ?>>Coming Soon</option>
                  <option value="Copse" <?php if($theme_control_headings_font=='Copse'){echo $var_header_select;} ?>>Copse</option>
                  <option value="Corben" <?php if($theme_control_headings_font=='Corben'){echo $var_header_select;} ?>>Corben</option>
                  <option value="Cousine" <?php if($theme_control_headings_font=='Cousine'){echo $var_header_select;} ?>>Cousine</option>
                  <option value="Covered+By+Your+Grace" <?php if($theme_control_headings_font=='Covered+By+Your+Grace'){echo $var_header_select;} ?>>Covered By Your Grace</option>
                  <option value="Crafty+Girls" <?php if($theme_control_headings_font=='Crafty+Girls'){echo $var_header_select;} ?>>Crafty Girls</option>
                  <option value="Crimson+Text" <?php if($theme_control_headings_font=='Crimson+Text'){echo $var_header_select;} ?>>Crimson Text</option>
                  <option value="Crushed" <?php if($theme_control_headings_font=='Crushed'){echo $var_header_select;} ?>>Crushed</option>
                  <option value="Cuprum" <?php if($theme_control_headings_font=='Cuprum'){echo $var_header_select;} ?>>Cuprum</option>
                  <option value="Damion" <?php if($theme_control_headings_font=='Damion'){echo $var_header_select;} ?>>Damion</option>
                  <option value="Dancing+Script" <?php if($theme_control_headings_font=='Dancing+Script'){echo $var_header_select;} ?>>Dancing Script</option>
                  <option value="Dawning+of+a+New+Day" <?php if($theme_control_headings_font=='Dawning+of+a+New+Day'){echo $var_header_select;} ?>>Dawning of a New Day</option>
                  <option value="Didact+Gothic" <?php if($theme_control_headings_font=='Didact+Gothic'){echo $var_header_select;} ?>>Didact Gothic</option>
                  <option value="Droid+Sans" <?php if($theme_control_headings_font=='Droid+Sans'){echo $var_header_select;} ?>>Droid Sans</option>
                  <option value="Droid+Sans+Mono" <?php if($theme_control_headings_font=='Droid+Sans+Mono'){echo $var_header_select;} ?>>Droid Sans Mono</option>
                  <option value="Droid+Serif" <?php if($theme_control_headings_font=='Droid+Serif'){echo $var_header_select;} ?>>Droid Serif</option>
                  <option value="EB+Garamond" <?php if($theme_control_headings_font=='EB+Garamond'){echo $var_header_select;} ?>>EB Garamond</option>
                  <option value="Expletus+Sans" <?php if($theme_control_headings_font=='Expletus+Sans'){echo $var_header_select;} ?>>Expletus Sans</option>
                  <option value="Fontdiner+Swanky" <?php if($theme_control_headings_font=='Fontdiner+Swanky'){echo $var_header_select;} ?>>Fontdiner Swanky</option>
                  <option value="Forum" <?php if($theme_control_headings_font=='Forum'){echo $var_header_select;} ?>>Forum</option>
                  <option value="Francois+One" <?php if($theme_control_headings_font=='Francois+One'){echo $var_header_select;} ?>>Francois One</option>
                  <option value="Federo" <?php if($theme_control_headings_font=='Federo'){echo $var_header_select;} ?>>Federo</option>
                  <option value="Geo" <?php if($theme_control_headings_font=='Geo'){echo $var_header_select;} ?>>Geo</option>
                  <option value="Give+You+Glory" <?php if($theme_control_headings_font=='Give+You+Glory'){echo $var_header_select;} ?>>Give You Glory</option>
                  <option value="Goblin+One" <?php if($theme_control_headings_font=='Goblin+One'){echo $var_header_select;} ?>>Goblin One</option>
                  <option value="Goudy+Bookletter+1911" <?php if($theme_control_headings_font=='Goudy+Bookletter+1911'){echo $var_header_select;} ?>>Goudy Bookletter 1911</option>
                  <option value="Gravitas+One" <?php if($theme_control_headings_font=='Gravitas+One'){echo $var_header_select;} ?>>Gravitas One</option>
                  <option value="Gruppo" <?php if($theme_control_headings_font=='Gruppo'){echo $var_header_select;} ?>>Gruppo</option>
                  <option value="Hammersmith+One" <?php if($theme_control_headings_font=='Hammersmith+One'){echo $var_header_select;} ?>>Hammersmith One</option>
                  <option value="Holtwood+One+SC" <?php if($theme_control_headings_font=='Holtwood+One+SC'){echo $var_header_select;} ?>>Holtwood One SC</option>
                  <option value="Homemade+Apple" <?php if($theme_control_headings_font=='Homemade+Apple'){echo $var_header_select;} ?>>Homemade Apple</option>
                  <option value="Inconsolata" <?php if($theme_control_headings_font=='Inconsolata'){echo $var_header_select;} ?>>Inconsolata</option>
                  <option value="Indie+Flower" <?php if($theme_control_headings_font=='Indie+Flower'){echo $var_header_select;} ?>>Indie Flower</option>
                  <option value="IM+Fell+DW+Pica" <?php if($theme_control_headings_font=='IM+Fell+DW+Pica'){echo $var_header_select;} ?>>IM Fell DW Pica</option>
                  <option value="IM+Fell+DW+Pica+SC" <?php if($theme_control_headings_font=='IM+Fell+DW+Pica+SC'){echo $var_header_select;} ?>>IM Fell DW Pica SC</option>
                  <option value="IM+Fell+Double+Pica" <?php if($theme_control_headings_font=='IM+Fell+Double+Pica'){echo $var_header_select;} ?>>IM Fell Double Pica</option>
                  <option value="IM+Fell+Double+Pica+SC" <?php if($theme_control_headings_font=='IM+Fell+Double+Pica+SC'){echo $var_header_select;} ?>>IM Fell Double Pica SC</option>
                  <option value="IM+Fell+English" <?php if($theme_control_headings_font=='IM+Fell+English'){echo $var_header_select;} ?>>IM Fell English</option>
                  <option value="IM+Fell+English+SC" <?php if($theme_control_headings_font=='IM+Fell+English+SC'){echo $var_header_select;} ?>>IM Fell English SC</option>
                  <option value="IM+Fell+French+Canon" <?php if($theme_control_headings_font=='IM+Fell+French+Canon'){echo $var_header_select;} ?>>IM Fell French Canon</option>
                  <option value="IM+Fell+French+Canon+SC" <?php if($theme_control_headings_font=='IM+Fell+French+Canon+SC'){echo $var_header_select;} ?>>IM Fell French Canon SC</option>
                  <option value="IM+Fell+Great+Primer" <?php if($theme_control_headings_font=='IM+Fell+Great+Primer'){echo $var_header_select;} ?>>IM Fell Great Primer</option>
                  <option value="IM+Fell+Great+Primer+SC" <?php if($theme_control_headings_font=='IM+Fell+Great+Primer+SC'){echo $var_header_select;} ?>>IM Fell Great Primer SC</option>
                  <option value="Irish+Grover" <?php if($theme_control_headings_font=='Irish+Grover'){echo $var_header_select;} ?>>Irish Grover</option>
                  <option value="Irish+Growler" <?php if($theme_control_headings_font=='Irish+Growler'){echo $var_header_select;} ?>>Irish Growler</option>
                  <option value="Istok+Web" <?php if($theme_control_headings_font=='Istok+Web'){echo $var_header_select;} ?>>Istok Web</option>
                  <option value="Josefin+Sans" <?php if($theme_control_headings_font=='Josefin+Sans'){echo $var_header_select;} ?>>Josefin Sans Regular 400</option>
                  <option value="Josefin+Slab" <?php if($theme_control_headings_font=='Josefin+Slab'){echo $var_header_select;} ?>>Josefin Slab Regular 400</option>
                  <option value="Judson" <?php if($theme_control_headings_font=='Judson'){echo $var_header_select;} ?>>Judson</option>
                  <option value="Jura" <?php if($theme_control_headings_font=='Jura'){echo $var_header_select;} ?>> Jura Regular</option>
                  <option value="Just+Another+Hand" <?php if($theme_control_headings_font=='Just+Another+Hand'){echo $var_header_select;} ?>>Just Another Hand</option>
                  <option value="Just+Me+Again+Down+Here" <?php if($theme_control_headings_font=='Just+Me+Again+Down+Here'){echo $var_header_select;} ?>>Just Me Again Down Here</option>
                  <option value="Kameron" <?php if($theme_control_headings_font=='Kameron'){echo $var_header_select;} ?>>Kameron</option>
                  <option value="Kenia" <?php if($theme_control_headings_font=='Kenia'){echo $var_header_select;} ?>>Kenia</option>
                  <option value="Kranky" <?php if($theme_control_headings_font=='Kranky'){echo $var_header_select;} ?>>Kranky</option>
                  <option value="Kreon" <?php if($theme_control_headings_font=='Kreon'){echo $var_header_select;} ?>>Kreon</option>
                  <option value="Kristi" <?php if($theme_control_headings_font=='Kristi'){echo $var_header_select;} ?>>Kristi</option>
                  <option value="La+Belle+Aurore" <?php if($theme_control_headings_font=='La+Belle+Aurore'){echo $var_header_select;} ?>>La Belle Aurore</option>
                  <option value="Lato" <?php if($theme_control_headings_font=='Lato'){echo $var_header_select;} ?>>Lato</option>
                  <option value="League+Script" <?php if($theme_control_headings_font=='League+Script'){echo $var_header_select;} ?>>League Script</option>
                  <option value="Lekton" <?php if($theme_control_headings_font=='Lekton'){echo $var_header_select;} ?>> Lekton </option>
                  <option value="Limelight" <?php if($theme_control_headings_font=='Limelight'){echo $var_header_select;} ?>> Limelight </option>
                  <option value="Lobster" <?php if($theme_control_headings_font=='Lobster'){echo $var_header_select;} ?>>Lobster</option>
                  <option value="Lobster+Two" <?php if($theme_control_headings_font=='Lobster+Two'){echo $var_header_select;} ?>>Lobster Two</option>
                  <option value="Lora" <?php if($theme_control_headings_font=='Lora'){echo $var_header_select;} ?>>Lora</option>
                  <option value="Love+Ya+Like+A+Sister" <?php if($theme_control_headings_font=='Love+Ya+Like+A+Sister'){echo $var_header_select;} ?>>Love Ya Like A Sister</option>
                  <option value="Loved+by+the+King" <?php if($theme_control_headings_font=='Loved+by+the+King'){echo $var_header_select;} ?>>Loved by the King</option>
                  <option value="Luckiest+Guy" <?php if($theme_control_headings_font=='Luckiest+Guy'){echo $var_header_select;} ?>>Luckiest Guy</option>
                  <option value="Maiden+Orange" <?php if($theme_control_headings_font=='Maiden+Orange'){echo $var_header_select;} ?>>Maiden Orange</option>
                  <option value="Mako" <?php if($theme_control_headings_font=='Mako'){echo $var_header_select;} ?>>Mako</option>
                  <option value="Maven+Pro" <?php if($theme_control_headings_font=='Maven+Pro'){echo $var_header_select;} ?>> Maven Pro</option>
                  <option value="Meddon" <?php if($theme_control_headings_font=='Meddon'){echo $var_header_select;} ?>>Meddon</option>
                  <option value="MedievalSharp" <?php if($theme_control_headings_font=='MedievalSharp'){echo $var_header_select;} ?>>MedievalSharp</option>
                  <option value="Megrim" <?php if($theme_control_headings_font=='Megrim'){echo $var_header_select;} ?>>Megrim</option>
                  <option value="Merriweather" <?php if($theme_control_headings_font=='Merriweather'){echo $var_header_select;} ?>>Merriweather</option>
                  <option value="Metrophobic" <?php if($theme_control_headings_font=='Metrophobic'){echo $var_header_select;} ?>>Metrophobic</option>
                  <option value="Michroma" <?php if($theme_control_headings_font=='Michroma'){echo $var_header_select;} ?>>Michroma</option>
                  <option value="Miltonian+Tattoo" <?php if($theme_control_headings_font=='Miltonian+Tattoo'){echo $var_header_select;} ?>>Miltonian Tattoo</option>
                  <option value="Miltonian" <?php if($theme_control_headings_font=='Miltonian'){echo $var_header_select;} ?>>Miltonian</option>
                  <option value="Modern+Antiqua" <?php if($theme_control_headings_font=='Modern+Antiqua'){echo $var_header_select;} ?>>Modern Antiqua</option>
                  <option value="Monofett" <?php if($theme_control_headings_font=='Monofett'){echo $var_header_select;} ?>>Monofett</option>
                  <option value="Molengo" <?php if($theme_control_headings_font=='Molengo'){echo $var_header_select;} ?>>Molengo</option>
                  <option value="Mountains+of+Christmas" <?php if($theme_control_headings_font=='Mountains+of+Christmas'){echo $var_header_select;} ?>>Mountains of Christmas</option>
                  <option value="Muli" <?php if($theme_control_headings_font=='Muli'){echo $var_header_select;} ?>>Muli Regular</option>
                  <option value="Neucha" <?php if($theme_control_headings_font=='Neucha'){echo $var_header_select;} ?>>Neucha</option>
                  <option value="Neuton" <?php if($theme_control_headings_font=='Neuton'){echo $var_header_select;} ?>>Neuton</option>
                  <option value="News+Cycle" <?php if($theme_control_headings_font=='News+Cycle'){echo $var_header_select;} ?>>News Cycle</option>
                  <option value="Nixie+One" <?php if($theme_control_headings_font=='Nixie+One'){echo $var_header_select;} ?>>Nixie One</option>
                  <option value="Nobile" <?php if($theme_control_headings_font=='Nobile'){echo $var_header_select;} ?>>Nobile</option>
                  <option value="Nova+Cut" <?php if($theme_control_headings_font=='Nova+Cut'){echo $var_header_select;} ?>>Nova Cut</option>
                  <option value="Nova+Flat" <?php if($theme_control_headings_font=='Nova+Flat'){echo $var_header_select;} ?>>Nova Flat</option>
                  <option value="Nova+Mono" <?php if($theme_control_headings_font=='Nova+Mono'){echo $var_header_select;} ?>>Nova Mono</option>
                  <option value="Nova+Oval" <?php if($theme_control_headings_font=='Nova+Oval'){echo $var_header_select;} ?>>Nova Oval</option>
                  <option value="Nova+Round" <?php if($theme_control_headings_font=='Nova+Round'){echo $var_header_select;} ?>>Nova Round</option>
                  <option value="Nova+Script" <?php if($theme_control_headings_font=='Nova+Script'){echo $var_header_select;} ?>>Nova Script</option>
                  <option value="Nova+Slim" <?php if($theme_control_headings_font=='Nova+Slim'){echo $var_header_select;} ?>>Nova Slim</option>
                  <option value="Nova+Square" <?php if($theme_control_headings_font=='Nova+Square'){echo $var_header_select;} ?>>Nova Square</option>
                  <option value="Nunito" <?php if($theme_control_headings_font=='Nunito'){echo $var_header_select;} ?>> Nunito Regular</option>
                  <option value="OFL+Sorts+Mill+Goudy+TT" <?php if($theme_control_headings_font=='OFL+Sorts+Mill+Goudy+TT'){echo $var_header_select;} ?>>OFL Sorts Mill Goudy TT</option>
                  <option value="Old+Standard+TT" <?php if($theme_control_headings_font=='Old+Standard+TT'){echo $var_header_select;} ?>>Old Standard TT</option>
                  <option value="Open+Sans" <?php if($theme_control_headings_font=='Open+Sans'){echo $var_header_select;} ?>>Open Sans regular</option>
                  <option value="Open+Sans+Condensed" <?php if($theme_control_headings_font=='Open+Sans+Condensed'){echo $var_header_select;} ?>>Open Sans Condensed</option>
                  <option value="Orbitron" <?php if($theme_control_headings_font=='Orbitron'){echo $var_header_select;} ?>>Orbitron Regular (400)</option>
                  <option value="Oswald" <?php if($theme_control_headings_font=='Oswald'){echo $var_header_select;} ?>>Oswald</option>
                  <option value="Over+the+Rainbow" <?php if($theme_control_headings_font=='Over+the+Rainbow'){echo $var_header_select;} ?>>Over the Rainbow</option>
                  <option value="Reenie+Beanie" <?php if($theme_control_headings_font=='Reenie+Beanie'){echo $var_header_select;} ?>>Reenie Beanie</option>
                  <option value="Pacifico" <?php if($theme_control_headings_font=='Pacifico'){echo $var_header_select;} ?>>Pacifico</option>
                  <option value="Patrick+Hand" <?php if($theme_control_headings_font=='Patrick+Hand'){echo $var_header_select;} ?>>Patrick Hand</option>
                  <option value="Paytone+One" <?php if($theme_control_headings_font=='Paytone+One'){echo $var_header_select;} ?>>Paytone One</option>
                  <option value="Permanent+Marker" <?php if($theme_control_headings_font=='Permanent+Marker'){echo $var_header_select;} ?>>Permanent Marker</option>
                  <option value="Philosopher" <?php if($theme_control_headings_font=='Philosopher'){echo $var_header_select;} ?>>Philosopher</option>
                  <option value="Play" <?php if($theme_control_headings_font=='Play'){echo $var_header_select;} ?>>Play</option>
                  <option value="Playfair+Display" <?php if($theme_control_headings_font=='Playfair+Display'){echo $var_header_select;} ?>> Playfair Display </option>
                  <option value="Podkova" <?php if($theme_control_headings_font=='Podkova'){echo $var_header_select;} ?>> Podkova </option>
                  <option value="PT+Sans" <?php if($theme_control_headings_font=='PT+Sans'){echo $var_header_select;} ?>>PT Sans</option>
                  <option value="PT+Sans+Narrow" <?php if($theme_control_headings_font=='PT+Sans+Narrow'){echo $var_header_select;} ?>>PT Sans Narrow</option>
                  <option value="PT+Serif" <?php if($theme_control_headings_font=='PT+Serif'){echo $var_header_select;} ?>>PT Serif</option>
                  <option value="Puritan" <?php if($theme_control_headings_font=='Puritan'){echo $var_header_select;} ?>>Puritan</option>
                  <option value="Quattrocento" <?php if($theme_control_headings_font=='Quattrocento'){echo $var_header_select;} ?>>Quattrocento</option>
                  <option value="Quattrocento+Sans" <?php if($theme_control_headings_font=='Quattrocento+Sans'){echo $var_header_select;} ?>>Quattrocento Sans</option>
                  <option value="Radley" <?php if($theme_control_headings_font=='Radley'){echo $var_header_select;} ?>>Radley</option>
                  <option value="Raleway" <?php if($theme_control_headings_font=='Raleway'){echo $var_header_select;} ?>>Raleway</option>
                  <option value="Redressed" <?php if($theme_control_headings_font=='Redressed'){echo $var_header_select;} ?>>Redressed</option>
                  <option value="Rock+Salt" <?php if($theme_control_headings_font=='Rock+Salt'){echo $var_header_select;} ?>>Rock Salt</option>
                  <option value="Rokkitt" <?php if($theme_control_headings_font=='Rokkitt'){echo $var_header_select;} ?>>Rokkitt</option>
                  <option value="Ruslan+Display" <?php if($theme_control_headings_font=='Ruslan+Display'){echo $var_header_select;} ?>>Ruslan Display</option>
                  <option value="Schoolbell" <?php if($theme_control_headings_font=='Schoolbell'){echo $var_header_select;} ?>>Schoolbell</option>
                  <option value="Shadows+Into+Light" <?php if($theme_control_headings_font=='Shadows+Into+Light'){echo $var_header_select;} ?>>Shadows Into Light</option>
                  <option value="Shanti" <?php if($theme_control_headings_font=='Shanti'){echo $var_header_select;} ?>>Shanti</option>
                  <option value="Sigmar+One" <?php if($theme_control_headings_font=='Sigmar+One'){echo $var_header_select;} ?>>Sigmar One</option>
                  <option value="Six+Caps" <?php if($theme_control_headings_font=='Six+Caps'){echo $var_header_select;} ?>>Six Caps</option>
                  <option value="Slackey" <?php if($theme_control_headings_font=='Slackey'){echo $var_header_select;} ?>>Slackey</option>
                  <option value="Smythe" <?php if($theme_control_headings_font=='Smythe'){echo $var_header_select;} ?>>Smythe</option>
                  <option value="Sniglet" <?php if($theme_control_headings_font=='Sniglet'){echo $var_header_select;} ?>>Sniglet</option>
                  <option value="Special+Elite" <?php if($theme_control_headings_font=='Special+Elite'){echo $var_header_select;} ?>>Special Elite</option>
                  <option value="Stardos+Stencil" <?php if($theme_control_headings_font=='Stardos+Stencil'){echo $var_header_select;} ?>>Stardos Stencil</option>
                  <option value="Sue+Ellen+Francisco" <?php if($theme_control_headings_font=='Sue+Ellen+Francisco'){echo $var_header_select;} ?>>Sue Ellen Francisco</option>
                  <option value="Sunshiney" <?php if($theme_control_headings_font=='Sunshiney'){echo $var_header_select;} ?>>Sunshiney</option>
                  <option value="Swanky+and+Moo+Moo" <?php if($theme_control_headings_font=='Swanky+and+Moo+Moo'){echo $var_header_select;} ?>>Swanky and Moo Moo</option>
                  <option value="Syncopate" <?php if($theme_control_headings_font=='Syncopate'){echo $var_header_select;} ?>>Syncopate</option>
                  <option value="Tangerine" <?php if($theme_control_headings_font=='Tangerine'){echo $var_header_select;} ?>>Tangerine</option>
                  <option value="Tenor+Sans" <?php if($theme_control_headings_font=='Tenor+Sans'){echo $var_header_select;} ?>> Tenor Sans </option>
                  <option value="Terminal+Dosis+Light" <?php if($theme_control_headings_font=='Terminal+Dosis+Light'){echo $var_header_select;} ?>>Terminal Dosis Light</option>
                  <option value="The+Girl+Next+Door" <?php if($theme_control_headings_font=='The+Girl+Next+Door'){echo $var_header_select;} ?>>The Girl Next Door</option>
                  <option value="Tinos" <?php if($theme_control_headings_font=='Tinos'){echo $var_header_select;} ?>>Tinos</option>
                  <option value="Ubuntu" <?php if($theme_control_headings_font=='Ubuntu'){echo $var_header_select;} ?>>Ubuntu</option>
                  <option value="Ultra" <?php if($theme_control_headings_font=='Ultra'){echo $var_header_select;} ?>>Ultra</option>
                  <option value="Unkempt" <?php if($theme_control_headings_font=='Unkempt'){echo $var_header_select;} ?>>Unkempt</option>
                  <option value="UnifrakturCook:bold" <?php if($theme_control_headings_font=='UnifrakturCook:bold'){echo $var_header_select;} ?>>UnifrakturCook</option>
                  <option value="UnifrakturMaguntia" <?php if($theme_control_headings_font=='UnifrakturMaguntia'){echo $var_header_select;} ?>>UnifrakturMaguntia</option>
                  <option value="Varela" <?php if($theme_control_headings_font=='Varela'){echo $var_header_select;} ?>>Varela</option>
                  <option value="Varela+Round" <?php if($theme_control_headings_font=='Varela+Round'){echo $var_header_select;} ?>>Varela Round</option>
                  <option value="Vibur" <?php if($theme_control_headings_font=='Vibur'){echo $var_header_select;} ?>>Vibur</option>
                  <option value="Vollkorn" <?php if($theme_control_headings_font=='Vollkorn'){echo $var_header_select;} ?>>Vollkorn</option>
                  <option value="Waiting+for+the+Sunrise" <?php if($theme_control_headings_font=='Waiting+for+the+Sunrise'){echo $var_header_select;} ?>>Waiting for the Sunrise</option>
                  <option value="Wallpoet" <?php if($theme_control_headings_font=='Wallpoet'){echo $var_header_select;} ?>>Wallpoet</option>
                  <option value="Walter+Turncoat" <?php if($theme_control_headings_font=='Walter+Turncoat'){echo $var_header_select;} ?>>Walter Turncoat</option>
                  <option value="Wire+One" <?php if($theme_control_headings_font=='Wire+One'){echo $var_header_select;} ?>>Wire One</option>
                  <option value="Yanone+Kaffeesatz" <?php if($theme_control_headings_font=='Yanone+Kaffeesatz'){echo $var_header_select;} ?>>Yanone Kaffeesatz</option>
                  <option value="Yeseva+One" <?php if($theme_control_headings_font=='Yeseva+One'){echo $var_header_select;} ?>>Yeseva One</option>
                  <option value="Yellowtail" <?php if($theme_control_headings_font=='Yellowtail'){echo $var_header_select;} ?>>Yellowtail</option>
                  <option value="Zeyada" <?php if($theme_control_headings_font=='Zeyada'){echo $var_header_select;} ?>>Zeyada</option>
                  <option value="Rochester" <?php if($theme_control_headings_font=='Rochester'){echo $var_header_select;} ?>>Rochester</option>
			</optgroup>
                  
                  
                  <?php } else { ?>
			<optgroup label="General Fonts">
				<option value="Arial">Arial</option>
                <option value="Verdana">Verdana</option>
                <option value="Helvetica">Helvetica</option>
                <option value="Lucida Sans Unicode" selected="selected">Lucida Sans Unicode</option>
                <option value="Trebuchet MS">Trebuchet MS</option>
                <option value="Times New Roman">Times New Roman</option>
                <option value="Tahoma">Tahoma</option>
                <option value="Georgia">Georgia</option>
            </optgroup>
			<optgroup label="Google Fonts">
                  <option value="Aclonica">Aclonica</option>
                  <option value="Allan">Allan</option>
                  <option value="Annie+Use+Your+Telescope">Annie Use Your Telescope</option>
                  <option value="Anonymous+Pro">Anonymous Pro</option>
                  <option value="Allerta+Stencil">Allerta Stencil</option>
                  <option value="Allerta">Allerta</option>
                  <option value="Amaranth">Amaranth</option>
                  <option value="Anton">Anton</option>
                  <option value="Architects+Daughter">Architects Daughter</option>
                  <option value="Arimo">Arimo</option>
                  <option value="Artifika">Artifika</option>
                  <option value="Arvo">Arvo</option>
                  <option value="Asset">Asset</option>
                  <option value="Astloch">Astloch</option>
                  <option value="Bangers">Bangers</option>
                  <option value="Bentham">Bentham</option>
                  <option value="Bevan">Bevan</option>
                  <option value="Bigshot+One">Bigshot One</option>
                  <option value="Bowlby+One">Bowlby One</option>
                  <option value="Bowlby+One+SC">Bowlby One SC</option>
                  <option value="Brawler">Brawler </option>
                  <option value="Buda">Buda</option>
                  <option value="Cabin">Cabin</option>
                  <option value="Calligraffitti">Calligraffitti</option>
                  <option value="Candal">Candal</option>
                  <option value="Cantarell">Cantarell</option>
                  <option value="Cardo">Cardo</option>
                  <option value="Carter+One">Carter One</option>
                  <option value="Caudex">Caudex</option>
                  <option value="Cedarville+Cursive">Cedarville Cursive</option>
                  <option value="Cherry+Cream+Soda">Cherry Cream Soda</option>
                  <option value="Chewy">Chewy</option>
                  <option value="Coda">Coda</option>
                  <option value="Coming+Soon">Coming Soon</option>
                  <option value="Copse">Copse</option>
                  <option value="Corben">Corben</option>
                  <option value="Cousine">Cousine</option>
                  <option value="Covered+By+Your+Grace">Covered By Your Grace</option>
                  <option value="Crafty+Girls">Crafty Girls</option>
                  <option value="Crimson+Text">Crimson Text</option>
                  <option value="Crushed">Crushed</option>
                  <option value="Cuprum">Cuprum</option>
                  <option value="Damion">Damion</option>
                  <option value="Dancing+Script">Dancing Script</option>
                  <option value="Dawning+of+a+New+Day">Dawning of a New Day</option>
                  <option value="Didact+Gothic">Didact Gothic</option>
                  <option value="Droid+Sans">Droid Sans</option>
                  <option value="Droid+Sans+Mono">Droid Sans Mono</option>
                  <option value="Droid+Serif">Droid Serif</option>
                  <option value="EB+Garamond">EB Garamond</option>
                  <option value="Expletus+Sans">Expletus Sans</option>
                  <option value="Fontdiner+Swanky">Fontdiner Swanky</option>
                  <option value="Forum">Forum</option>
                  <option value="Francois+One">Francois One</option>
                  <option value="Federo">Federo</option>
                  <option value="Geo">Geo</option>
                  <option value="Give+You+Glory">Give You Glory</option>
                  <option value="Goblin+One">Goblin One</option>
                  <option value="Goudy+Bookletter+1911">Goudy Bookletter 1911</option>
                  <option value="Gravitas+One">Gravitas One</option>
                  <option value="Gruppo">Gruppo</option>
                  <option value="Hammersmith+One">Hammersmith One</option>
                  <option value="Holtwood+One+SC">Holtwood One SC</option>
                  <option value="Homemade+Apple">Homemade Apple</option>
                  <option value="Inconsolata">Inconsolata</option>
                  <option value="Indie+Flower">Indie Flower</option>
                  <option value="IM+Fell+DW+Pica">IM Fell DW Pica</option>
                  <option value="IM+Fell+DW+Pica+SC">IM Fell DW Pica SC</option>
                  <option value="IM+Fell+Double+Pica">IM Fell Double Pica</option>
                  <option value="IM+Fell+Double+Pica+SC">IM Fell Double Pica SC</option>
                  <option value="IM+Fell+English">IM Fell English</option>
                  <option value="IM+Fell+English+SC">IM Fell English SC</option>
                  <option value="IM+Fell+French+Canon">IM Fell French Canon</option>
                  <option value="IM+Fell+French+Canon+SC">IM Fell French Canon SC</option>
                  <option value="IM+Fell+Great+Primer">IM Fell Great Primer</option>
                  <option value="IM+Fell+Great+Primer+SC">IM Fell Great Primer SC</option>
                  <option value="Irish+Grover">Irish Grover</option>
                  <option value="Irish+Growler">Irish Growler</option>
                  <option value="Istok+Web">Istok Web</option>
                  <option value="Josefin+Sans">Josefin Sans Regular 400</option>
                  <option value="Josefin+Slab">Josefin Slab Regular 400</option>
                  <option value="Judson">Judson</option>
                  <option value="Jura"> Jura Regular</option>
                  <option value="Just+Another+Hand">Just Another Hand</option>
                  <option value="Just+Me+Again+Down+Here">Just Me Again Down Here</option>
                  <option value="Kameron">Kameron</option>
                  <option value="Kenia">Kenia</option>
                  <option value="Kranky">Kranky</option>
                  <option value="Kreon">Kreon</option>
                  <option value="Kristi">Kristi</option>
                  <option value="La+Belle+Aurore">La Belle Aurore</option>
                  <option value="Lato">Lato</option>
                  <option value="League+Script">League Script</option>
                  <option value="Lekton"> Lekton </option>
                  <option value="Limelight"> Limelight </option>
                  <option value="Lobster">Lobster</option>
                  <option value="Lobster+Two">Lobster Two</option>
                  <option value="Lora">Lora</option>
                  <option value="Love+Ya+Like+A+Sister">Love Ya Like A Sister</option>
                  <option value="Loved+by+the+King">Loved by the King</option>
                  <option value="Luckiest+Guy">Luckiest Guy</option>
                  <option value="Maiden+Orange">Maiden Orange</option>
                  <option value="Mako">Mako</option>
                  <option value="Maven+Pro"> Maven Pro</option>
                  <option value="Meddon">Meddon</option>
                  <option value="MedievalSharp">MedievalSharp</option>
                  <option value="Megrim">Megrim</option>
                  <option value="Merriweather">Merriweather</option>
                  <option value="Metrophobic">Metrophobic</option>
                  <option value="Michroma">Michroma</option>
                  <option value="Miltonian+Tattoo">Miltonian Tattoo</option>
                  <option value="Miltonian">Miltonian</option>
                  <option value="Modern+Antiqua">Modern Antiqua</option>
                  <option value="Monofett">Monofett</option>
                  <option value="Molengo">Molengo</option>
                  <option value="Mountains+of+Christmas">Mountains of Christmas</option>
                  <option value="Muli">Muli Regular</option>
                  <option value="Neucha">Neucha</option>
                  <option value="Neuton">Neuton</option>
                  <option value="News+Cycle">News Cycle</option>
                  <option value="Nixie+One">Nixie One</option>
                  <option value="Nobile">Nobile</option>
                  <option value="Nova+Cut">Nova Cut</option>
                  <option value="Nova+Flat">Nova Flat</option>
                  <option value="Nova+Mono">Nova Mono</option>
                  <option value="Nova+Oval">Nova Oval</option>
                  <option value="Nova+Round">Nova Round</option>
                  <option value="Nova+Script">Nova Script</option>



                  <option value="Nova+Slim">Nova Slim</option>
                  <option value="Nova+Square">Nova Square</option>
                  <option value="Nunito"> Nunito Regular</option>
                  <option value="OFL+Sorts+Mill+Goudy+TT">OFL Sorts Mill Goudy TT</option>
                  <option value="Old+Standard+TT">Old Standard TT</option>
                  <option value="Open+Sans">Open Sans regular</option>
                  <option value="Open+Sans+Condensed">Open Sans Condensed</option>
                  <option value="Orbitron">Orbitron Regular (400)</option>
                  <option value="Oswald">Oswald</option>
                  <option value="Over+the+Rainbow">Over the Rainbow</option>
                  <option value="Reenie+Beanie">Reenie Beanie</option>
                  <option value="Pacifico">Pacifico</option>
                  <option value="Patrick+Hand">Patrick Hand</option>
                  <option value="Paytone+One">Paytone One</option>
                  <option value="Permanent+Marker">Permanent Marker</option>
                  <option value="Philosopher">Philosopher</option>
                  <option value="Play">Play</option>
                  <option value="Playfair+Display"> Playfair Display </option>
                  <option value="Podkova"> Podkova </option>
                  <option value="PT+Sans">PT Sans</option>
                  <option value="PT+Sans+Narrow">PT Sans Narrow</option>
                  <option value="PT+Serif">PT Serif</option>
                  <option value="Puritan">Puritan</option>
                  <option value="Quattrocento">Quattrocento</option>
                  <option value="Quattrocento+Sans">Quattrocento Sans</option>
                  <option value="Radley">Radley</option>
                  <option value="Raleway">Raleway</option>
                  <option value="Redressed">Redressed</option>
                  <option value="Rock+Salt">Rock Salt</option>
                  <option value="Rokkitt">Rokkitt</option>
                  <option value="Ruslan+Display">Ruslan Display</option>
                  <option value="Schoolbell">Schoolbell</option>
                  <option value="Shadows+Into+Light">Shadows Into Light</option>
                  <option value="Shanti">Shanti</option>
                  <option value="Sigmar+One">Sigmar One</option>
                  <option value="Six+Caps">Six Caps</option>
                  <option value="Slackey">Slackey</option>
                  <option value="Smythe">Smythe</option>
                  <option value="Sniglet">Sniglet</option>
                  <option value="Special+Elite">Special Elite</option>
                  <option value="Stardos+Stencil">Stardos Stencil</option>
                  <option value="Sue+Ellen+Francisco">Sue Ellen Francisco</option>
                  <option value="Sunshiney">Sunshiney</option>
                  <option value="Swanky+and+Moo+Moo">Swanky and Moo Moo</option>
                  <option value="Syncopate">Syncopate</option>
                  <option value="Tangerine">Tangerine</option>
                  <option value="Tenor+Sans"> Tenor Sans </option>
                  <option value="Terminal+Dosis+Light">Terminal Dosis Light</option>
                  <option value="The+Girl+Next+Door">The Girl Next Door</option>
                  <option value="Tinos">Tinos</option>
                  <option value="Ubuntu">Ubuntu</option>
                  <option value="Ultra">Ultra</option>
                  <option value="Unkempt">Unkempt</option>
                  <option value="UnifrakturCook:bold">UnifrakturCook</option>
                  <option value="UnifrakturMaguntia">UnifrakturMaguntia</option>
                  <option value="Varela">Varela</option>
                  <option value="Varela+Round">Varela Round</option>
                  <option value="Vibur">Vibur</option>
                  <option value="Vollkorn">Vollkorn</option>
                  <option value="Waiting+for+the+Sunrise">Waiting for the Sunrise</option>
                  <option value="Wallpoet">Wallpoet</option>
                  <option value="Walter+Turncoat">Walter Turncoat</option>
                  <option value="Wire+One">Wire One</option>
                  <option value="Yanone+Kaffeesatz">Yanone Kaffeesatz</option>
                  <option value="Yeseva+One">Yeseva One</option>
                  <option value="Yellowtail">Yellowtail</option>
                  <option value="Zeyada">Zeyada</option>
                  <option value="Rochester">Rochester</option>
			</optgroup>
                  <?php } ?>
		</select>
<label class="hint"><?php echo $text_select_font_for_header; ?></label>
</div>
<div class="clearfix"></div>

<div>
<label class="label"><?php echo $text_theme_color; ?></label>
<input  id="theme_color" type="text" name="theme_color" value="<?php echo $theme_color ; ?>" class="text" style="float:left;">
<div id="themecolor" class="colorSelector">
<div style="background-color:#<?php echo $theme_color ; ?>"></div>
</div>
<label class="hint"><?php echo $text_select_color; ?></label>
</div>
<div class="clearfix"></div>

<div>
<label class="label"><?php echo $text_background_color; ?></label>
<input  id="background_color" type="text" name="background_color" value="<?php echo $background_color ; ?>" class="text" style="float:left;">
<div id="themecolor" class="colorSelector">

            <div style="background-color:#<?php echo $background_color ; ?>"></div>

          </div>
<label class="hint"><?php echo $text_select_color; ?></label>
</div>
<div class="clearfix"></div>

<div>
<label class="label"><?php echo $text_background_image; ?></label>
<div class="background_preview" style="background:url(../catalog/view/theme/fashionista/image/bg/<?php echo $background_image ; ?>);"></div>
<fieldset>
<select name="background_image" class="background_select">
                  <?php if (isset($background_image)) {
                	$var_bg_select = 'selected="selected"';
            ?>	  
<option value="" class="avatar" title="" <?php if($background_image==''){echo $var_bg_select;} ?>>No Background</option>
<option value="body-bg2.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg2.png" <?php if($background_image=='body-bg2.png'){echo $var_bg_select;} ?>>Thin Vertical Lines</option>
<option value="body-bg3.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg3.png " <?php if($background_image=='body-bg3.png'){echo $var_bg_select;} ?>>Small Squares</option>
<option value="body-bg4.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg4.png" <?php if($background_image=='body-bg4.png'){echo $var_bg_select;} ?>>Thick Diagonal Lines</option>
<option value="body-bg5.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg5.png" <?php if($background_image=='body-bg5.png'){echo $var_bg_select;} ?>>Thin Diagonal Lines</option>
<option value="body-bg6.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg6.png" <?php if($background_image=='body-bg6.png'){echo $var_bg_select;} ?>>Diamonds</option>
<option value="body-bg7.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg7.png" <?php if($background_image=='body-bg7.png'){echo $var_bg_select;} ?>>Small Circles</option>
<option value="body-bg8.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg8.png" <?php if($background_image=='body-bg8.png'){echo $var_bg_select;} ?>>Thick Vertical Lines</option>
<option value="body-bg9.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg9.png" <?php if($background_image=='body-bg9.png'){echo $var_bg_select;} ?>>Thin Flourish</option>
<option value="body-bg10.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg10.png" <?php if($background_image=='body-bg10.png'){echo $var_bg_select;} ?>>Thick Flourish</option>
<option value="body-bg11.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg11.png" <?php if($background_image=='body-bg11.png'){echo $var_bg_select;} ?>>Pocodot</option>
<option value="body-bg12.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg12.png" <?php if($background_image=='body-bg12.png'){echo $var_bg_select;} ?>>Checkerboard</option>
<option value="body-bg13.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg13.png" <?php if($background_image=='body-bg13.png'){echo $var_bg_select;} ?>>Squares</option>
<option value="body-bg14.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg14.png" <?php if($background_image=='body-bg14.png'){echo $var_bg_select;} ?>>Noise</option>
<option value="body-bg15.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg15.png" <?php if($background_image=='body-bg15.png'){echo $var_bg_select;} ?>>Wooden</option>
<option value="body-bg16.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg16.png" <?php if($background_image=='body-bg16.png'){echo $var_bg_select;} ?>>Stone</option>
<option value="body-bg17.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg17.png" <?php if($background_image=='body-bg17.png'){echo $var_bg_select;} ?>>Canvas</option>
<?php } else { ?>                 
<option value="" class="avatar" title="" >No Background</option>
<option value="body-bg2.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg2.png" >Thin Vertical Lines</option>
<option value="body-bg3.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg3.png">Small Squares</option>
<option value="body-bg4.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg4.png">Thick Diagonal Lines</option>
<option value="body-bg5.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg5.png">Thin Diagonal Lines</option>
<option value="body-bg6.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg6.png">Diamonds</option>
<option value="body-bg7.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg7.png">Small Circles</option>
<option value="body-bg8.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg8.png">Thick Vertical Lines</option>
<option value="body-bg9.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg9.png">Thin Flourish</option>
<option value="body-bg10.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg10.png">Thick Flourish</option>
<option value="body-bg11.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg11.png">Pocodot</option>
<option value="body-bg12.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg12.png">Checkerboard</option>
<option value="body-bg13.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg13.png">Squares</option>
<option value="body-bg14.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg14.png">Noise</option>
<option value="body-bg15.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg15.png">Wooden</option>
<option value="body-bg16.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg16.png">Stone</option>
<option value="body-bg17.png" class="avatar" title="../catalog/view/theme/fashionista/image/bg/body-bg17.png">Canvas</option>
<?php } ?>
</select>
</fieldset>
<label class="hint"><?php echo $text_custom_bg_image; ?></label>
</div>
<div class="clearfix"></div>


<div>
<label class="label"><?php echo $text_custom_bg_image; ?></label>
<label class="hint"><?php echo $text_browse_background_image; ?></label>
</div>
<div class="clearfix"></div>

<div class="browse_image"><img src="<?php echo $custombgimages; ?>" alt="" id="thumb-custombgimages" />
<input type="hidden" name="config_custombgimages" value="<?php echo $config_custombgimages; ?>" id="custombgimages" />
</div>
<a onclick="image_upload('custombgimages', 'thumb-custombgimages');" class="buttons"><?php echo $text_browse_image; ?></a> <a onclick="$('#thumb-custombgimages').attr('src', '../image/no_image.jpg'); $('#custombgimages').attr('value', '');" class="buttons"><?php echo $text_clear_image; ?></a>

</div>





<div id="payment-image" class="tab-content" style="display: none; ">
<h3><span class="font-settings"><?php echo $text_display_payment_images; ?></span> </h3>
<div class="clearfix"></div>

<div class="browse_image"><img src="<?php echo $paymentimages; ?>" alt="" id="thumb-paymentimages" />
<input type="hidden" name="config_paymentimages" value="<?php echo $config_paymentimages; ?>" id="paymentimages" />
</div>
<a onclick="image_upload('paymentimages', 'thumb-paymentimages');" class="buttons"><?php echo $text_browse_image; ?></a> <a onclick="$('#thumb-paymentimages').attr('src', '../image/no_image.jpg'); $('#paymentimages').attr('value', '');" class="buttons"><?php echo $text_clear_image; ?></a>
</div>







<div id="connect-settings" class="tab-content" style="display: none; ">
<h3><span class="font-settings"><?php echo $text_follow_links; ?></span></h3>
<div>
<div class="facebook-i"></div>
<input id="social_facebook" type="text" name="social_facebook" value="<?php echo $social_facebook ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_facebook_page_url; ?></label>
</div>
<div class="clearfix"></div>

<div>
<div class="twitter-i"></div>
<input id="social_twitter" type="text" name="social_twitter" value="<?php echo $social_twitter ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_twitter_page_url; ?></label>
</div>
<div class="clearfix"></div>

<div>
<div class="youtube-i"></div>
<input id="social_youtube" type="text" name="social_youtube" value="<?php echo $social_youtube ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_youtube_page_url; ?></label>
</div>
<div class="clearfix"></div>

<div>
<div class="flickr-i"></div>
<input id="social_flickr" type="text" name="social_flickr" value="<?php echo $social_flickr ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_flickr_page_url; ?></label>
</div>
<div class="clearfix"></div>
<h3><span class="font-settings"><?php echo $text_twitter_feed; ?></span></h3>
<div>
<div class="twitter-i"></div>
<input id="theme_control_twitter" type="text" name="theme_control_twitter" value="<?php echo $theme_control_twitter ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_twitter_id; ?></label>
</div>
<div class="clearfix"></div>
<h3><span class="font-settings"><?php echo $text_contact_options; ?></span></h3>
<div>
<input id="connect_phone" type="text" name="connect_phone" value="<?php echo $connect_phone ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_phone; ?></label>
</div>
<div class="clearfix"></div>

<div>
<input id="connect_email" type="text" name="connect_email" value="<?php echo $connect_email ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_email; ?></label>
</div>
<div class="clearfix"></div>

<div>
<input id="connect_skype" type="text" name="connect_skype" value="<?php echo $connect_skype ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_Skype; ?></label>
</div>
<div class="clearfix"></div>

<div>
<input id="connect_address" type="text" name="connect_address" value="<?php echo $connect_address ; ?>" class="text" style="float:left;">
<label class="hint"><?php echo $text_address; ?></label>
</div>
<div class="clearfix"></div>
</div>


  </div>
      <div class="clear"></div>
	</div>

</div>
    </form>  
    </div>   
<script type="text/javascript">
				$('#theme_color, #background_color').ColorPicker({
					onSubmit: function(hsb, hex, rgb, el) {
						$(el).val(hex);
						$(el).ColorPickerHide();
					},
					onBeforeShow: function () {
						$(this).ColorPickerSetColor(this.value);
					}
				})
				.bind('keyup', function(){
					$(this).ColorPickerSetColor(this.value);
				});
				
				$(function(){	
					$('select.background_select').selectmenu({
						icons: [
							{find: '.avatar'}
						],
						bgImage: function() {
							return 'url(' + $(this).attr("title") + ')';
						}
					});
				});
				$('#tabs a').tabs();
</script>    
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>
<?php echo $footer; ?> 