<?php
class ControllerModuleThemeControl extends Controller {
	
	private $error = array(); 
	
	public function index() {   
		
		$this->load->language('module/theme_control');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		
		$this->load->model('tool/image');
		$this->document->addStyle('view/stylesheet/css/theme_control.css');
		$this->document->addStyle('view/javascript/theme-options/ui/jquery.ui.selectmenu.css');
		$this->document->addScript('view/javascript/colorpicker.js');
		$this->document->addScript('view/javascript/theme-options/ui/jquery.ui.selectmenu.js');
		
		//Payment Images Start Here//
		if (isset($this->request->post['config_paymentimages'])) {
			$this->data['config_paymentimages'] = $this->request->post['config_paymentimages'];
		} else {
			$this->data['config_paymentimages'] = $this->config->get('config_paymentimages');			
		}

		if ($this->config->get('config_paymentimages') && file_exists(DIR_IMAGE . $this->config->get('config_paymentimages')) && is_file(DIR_IMAGE . $this->config->get('config_paymentimages'))) {
			$this->data['paymentimages'] = $this->model_tool_image->resize($this->config->get('config_paymentimages'), 100, 100);		
		} else {
			$this->data['paymentimages'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		//Payment Images Ends Here//
		
		//Custom Background Image Start Here//
		if (isset($this->request->post['config_custombgimages'])) {
			$this->data['config_custombgimages'] = $this->request->post['config_custombgimages'];
		} else {
			$this->data['config_custombgimages'] = $this->config->get('config_custombgimages');			
		}

		if ($this->config->get('config_custombgimages') && file_exists(DIR_IMAGE . $this->config->get('config_custombgimages')) && is_file(DIR_IMAGE . $this->config->get('config_custombgimages'))) {
			$this->data['custombgimages'] = $this->model_tool_image->resize($this->config->get('config_custombgimages'), 100, 100);		
		} else {
			$this->data['custombgimages'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		//Custom Background Image Ends Here//
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('theme_control', $this->request->post);	

				
					
			$this->session->data['success'] = $this->language->get('text_success');
		
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
			$this->data['text_image_manager'] = 'Image manager';
			$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove',
				'entry_example',
				'text_save_and_activate',
				'text_general_settings',
				'text_payment_image',
				'text_connect_settings',
				'text_skin_and_font_settings',
				'text_body_font',
				'text_select_font_for_body',
				'text_header_font',
				'text_select_font_for_header',
				'text_theme_color',
				'text_select_color',
				'text_background_color',
				'text_background_image',
				'text_select_background_image',
				'text_custom_bg_image',
				'text_browse_background_image',
				'text_browse_image',
				'text_clear_image',
				'text_display_payment_images',
				'text_follow_links',
				'text_facebook_page_url',
				'text_twitter_page_url',
				'text_youtube_page_url',
				'text_flickr_page_url',
				'text_twitter_feed',
				'text_twitter_id',
				'text_contact_options',
				'text_phone',
				'text_email',
				'text_Skype',
				'text_address',
				'text_theme_options'
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
		
		
		$config_data = array(
		'theme_control_twitter',
		'theme_color',
		'background_color',
		'background_image',
		'theme_control_headings_font',
		'theme_control_body_font',
		'social_facebook',
		'social_twitter',
		'social_youtube',
		'social_flickr',
		'connect_phone',
		'connect_email',
		'connect_skype',
		'connect_address',
		);
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				$this->data[$conf] = $this->config->get($conf);
			}
		}
		
		
		
	

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/theme_control', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/theme_control', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	

		if (isset($this->request->post['theme_control_module'])) {
			$modules = explode(',', $this->request->post['theme_control_module']);
		} elseif ($this->config->get('theme_control_module') != '') {
			$modules = explode(',', $this->config->get('theme_control_module'));
		} else {
			$modules = array();
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['theme_control_' . $module . '_layout_id'])) {
				$this->data['theme_control_' . $module . '_layout_id'] = $this->request->post['theme_control_' . $module . '_layout_id'];
			} else {
				$this->data['theme_control_' . $module . '_layout_id'] = $this->config->get('theme_control_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['theme_control_' . $module . '_position'])) {
				$this->data['theme_control_' . $module . '_position'] = $this->request->post['theme_control_' . $module . '_position'];
			} else {
				$this->data['theme_control_' . $module . '_position'] = $this->config->get('theme_control_' . $module . '_position');
			}	
			
			if (isset($this->request->post['theme_control_' . $module . '_status'])) {
				$this->data['theme_control_' . $module . '_status'] = $this->request->post['theme_control_' . $module . '_status'];
			} else {
				$this->data['theme_control_' . $module . '_status'] = $this->config->get('theme_control_' . $module . '_status');
			}	
						
			if (isset($this->request->post['theme_control_' . $module . '_sort_order'])) {
				$this->data['theme_control_' . $module . '_sort_order'] = $this->request->post['theme_control_' . $module . '_sort_order'];
			} else {
				$this->data['theme_control_' . $module . '_sort_order'] = $this->config->get('theme_control_' . $module . '_sort_order');
			}				
		}
		

		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['theme_control_module'])) {
			$this->data['theme_control_module'] = $this->request->post['theme_control_module'];
		} else {
			$this->data['theme_control_module'] = $this->config->get('theme_control_module');
		}

		$this->template = 'module/theme_control.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		


		$this->response->setOutput($this->render());
	}

	
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/theme_control')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}


}
?>