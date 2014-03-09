
<div id="footer-top">
<?php if(($this->config->get('social_flickr') != null)) { ?>
<div class="twitter-feed" id="twitter-feed">
          <ul id="twitter_update_list"></ul>

          <script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script>
          <script type="text/javascript" src="http://twitter.com/statuses/user_timeline/<?php echo $this->config->get('theme_control_twitter') ?>
.json?callback=twitterCallback2&amp;count=10"></script>
        </div>
<?php } ?>
    <div class="facebook-feed social-icons">
<?php if(($this->config->get('social_facebook') != null)) { ?><a href="<?php echo $this->config->get('social_facebook') ?>" target="_blank" class="facebook"></a><?php } ?>
<?php if(($this->config->get('social_twitter') != null)) { ?><a href="<?php echo $this->config->get('social_twitter') ?>" target="_blank" class="twitter"></a><?php } ?>
<?php if(($this->config->get('social_flickr') != null)) { ?><a href="<?php echo $this->config->get('social_flickr') ?>" target="_blank" class="flickr"></a><?php } ?>
<?php if(($this->config->get('social_youtube') != null)) { ?><a href="<?php echo $this->config->get('social_youtube') ?>" target="_blank" class="youtube"></a><?php } ?>
  </div>
      <div class="facebook-like">Follow Us on </div>
</div>
<div id="footer">
  <div class="column">
    <h3><span><?php echo $text_information; ?></span></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
  
    <!-- Social Links Start -->
    <div class="column last contact-icons">
        <h3>Contact Us</h3>
        <ul>
<?php if(($this->config->get('connect_phone') != null)) { ?><li class="phone"><?php echo $this->config->get('connect_phone') ?><?php } ?></li>
<?php if(($this->config->get('connect_email') != null)) { ?><li class="email"><?php echo $this->config->get('connect_email') ?></li>
<?php } ?>
<?php if(($this->config->get('connect_skype') != null)) { ?><li class="skype"><?php echo $this->config->get('connect_skype') ?></li>
<?php } ?>
<?php if(($this->config->get('connect_address') != null)) { ?><li class="address"><?php echo $this->config->get('connect_address') ?></li>
<?php } ?>
        </ul>
    </div>
<!-- Social Links End -->
</div>
<div class="footer-bottom">
<div id="powered">
    <?php echo $powered; ?>
</div>
<!-- Payment Icons Start -->
<div class="payment-icons">
<?php if ($paymentimages) { ?>
<div id="paymentimages"><img src="<?php echo $paymentimages; ?>" /></a></div>
<?php } ?>
</div>
<!-- Payment Icons End -->

</div>
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
<div style="display:none;" class="nav_up" id="nav_up"></div>
<div style="display:none;" class="nav_down" id="nav_down"></div>
<div class="slide_black_overlay"></div>
<div class="overlay_loading"></div>
</body></html>