<?php echo $header; ?>
<link id="Cuprum" href="http://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/theme_control.css" media="screen">
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="heading">
    <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <div></div>
      
      <div id="themerz-settings-main">
      <h1><span><?php echo $entry_fashion_street_banner_images; ?></span></h1>
<!-- Banner 1 -->      
      
<div class="boxes">
<div class="browse_image"><img src="<?php echo $banner1; ?>" alt="" id="thumb-banner1" />
<input type="hidden" name="config_banner1" value="<?php echo $config_banner1; ?>" id="banner1" />
</div>
<a onclick="image_upload('banner1', 'thumb-banner1');" class="buttons"><?php echo $entry_browse_image; ?></a> <a onclick="$('#thumb-banner1').attr('src', '../image/no_image.jpg'); $('#banner1').attr('value', '');" class="buttons"><?php echo $entry_clear_image; ?></a>
<div class="clearfix"></div>
<label class="hint"><?php echo $entry_b_url; ?></label><input type="text" id="banner1_url" name="banner1_url" value="<?php echo $banner1_url ; ?>" class="text"  style="width:150px;"/>
</div>
      
<!-- Banner 2 -->      
<div class="boxes">
<div class="browse_image"><img src="<?php echo $banner2; ?>" alt="" id="thumb-banner2" />
<input type="hidden" name="config_banner2" value="<?php echo $config_banner2; ?>" id="banner2" />
</div>
<a onclick="image_upload('banner2', 'thumb-banner2');" class="buttons"><?php echo $entry_browse_image; ?></a> <a onclick="$('#thumb-banner2').attr('src', '../image/no_image.jpg'); $('#banner2').attr('value', '');" class="buttons"><?php echo $entry_clear_image; ?></a>
<div class="clearfix"></div>
<label class="hint"><?php echo $entry_b_url; ?></label><input type="text" id="banner2_url" name="banner2_url" value="<?php echo $banner2_url ; ?>" class="text"  style="width:150px;"/>
</div>

<!-- Banner 3 -->      
<div class="boxes last">
<div class="browse_image"><img src="<?php echo $banner3; ?>" alt="" id="thumb-banner3" />
<input type="hidden" name="config_banner3" value="<?php echo $config_banner3; ?>" id="banner3" />
</div>
<a onclick="image_upload('banner3', 'thumb-banner3');" class="buttons"><?php echo $entry_browse_image; ?></a> <a onclick="$('#thumb-banner3').attr('src', '../image/no_image.jpg'); $('#banner3').attr('value', '');" class="buttons"><?php echo $entry_clear_image; ?></a>
<div class="clearfix"></div>
<label class="hint"><?php echo $entry_b_url; ?></label><input type="text" id="banner3_url" name="banner3_url" value="<?php echo $banner3_url ; ?>" class="text"  style="width:150px;"/>
</div>
<div class="clearfix_last"></div>

      </div>
      <table id="module" class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $entry_layout; ?></td>
            <td class="left"><?php echo $entry_position; ?></td>
            <td class="left"><?php echo $entry_status; ?></td>
            <td class="right"><?php echo $entry_sort_order; ?></td>
            <td></td>
          </tr>
        </thead>
        <?php $module_row = 0; ?>
        <?php foreach ($modules as $module) { ?>
        <tbody id="module-row<?php echo $module_row; ?>">
          <tr>
            <td class="left"><select name="fashionicab_module[<?php echo $module_row; ?>][layout_id]">
                <?php foreach ($layouts as $layout) { ?>
                <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
            <td class="left"><select name="fashionicab_module[<?php echo $module_row; ?>][position]">
                <?php if ($module['position'] == 'content_top') { ?>
                <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                <?php } else { ?>
                <option value="content_top"><?php echo $text_content_top; ?></option>
                <?php } ?>  
                <?php if ($module['position'] == 'content_bottom') { ?>
                <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                <?php } else { ?>
                <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                <?php } ?>     
              </select></td>
            <td class="left"><select name="fashionicab_module[<?php echo $module_row; ?>][status]">
                <?php if ($module['status']) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            <td class="right"><input type="text" name="fashionicab_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
            <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
          </tr>
        </tbody>
        <?php $module_row++; ?>
        <?php } ?>
        <tfoot>
          <tr>
            <td colspan="4"></td>
            <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
          </tr>
        </tfoot>
      </table>
    </form>
  </div>
</div>
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
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="fashionicab_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="fashionicab_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="fashionicab_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="fashionicab_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
//--></script>
<?php echo $footer; ?>