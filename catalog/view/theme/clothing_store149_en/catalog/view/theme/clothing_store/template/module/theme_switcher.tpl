<?php if ($themes) { ?>
<div class="heading_title"><?php echo $heading_title; ?></div>
<div class="category">
 <ul>
  <li>
   <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="module_theme_switcher"> 
    <select name="product" onchange="location=this.value">
     <?php foreach ($themes as $theme) { ?>
     <?php if (isset($this->session->data['theme'])) { ?>
     <option value="<?php echo $theme['href']; ?>" <?php echo (ucwords($this->session->data['theme']) == $theme['name']) ? 'selected="selected"' : ''?>><?php echo $theme['name']; ?></option>
     <?php } else { ?>
     <option value="<?php echo $theme['href']; ?>" <?php echo (ucwords($this->config->get('config_template'))) == $theme['name'] ? 'selected="selected"' : ''?>><?php echo $theme['name']; ?></option>
     <?php } ?>
     <?php } ?>
    </select>
   </form>
  </li>
 </ul>
</div>
<?php } ?>