<?php
class ControllerModulefashionicab extends Controller {
	private $error = array(); 
	
	public function index() {   
	
		$this->load->language('module/fashionicab');
		$this->load->model('tool/image');
		$this->data['text_image_manager'] = 'Image manager';
		$this->data['token'] = $this->session->data['token'];		
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('fashionicab', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_fashion_street_banner_images'] = $this->language->get('entry_fashion_street_banner_images');
		$this->data['entry_browse_image'] = $this->language->get('entry_browse_image');
		$this->data['entry_clear_image'] = $this->language->get('entry_clear_image');
		$this->data['entry_b_url'] = $this->language->get('entry_b_url');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		
		//Banner Image 1 Start Here//
		if (isset($this->request->post['config_banner1'])) {
			$this->data['config_banner1'] = $this->request->post['config_banner1'];
		} else {
			$this->data['config_banner1'] = $this->config->get('config_banner1');			
		}

		if ($this->config->get('config_banner1') && file_exists(DIR_IMAGE . $this->config->get('config_banner1')) && is_file(DIR_IMAGE . $this->config->get('config_banner1'))) {
			$this->data['banner1'] = $this->model_tool_image->resize($this->config->get('config_banner1'), 100, 100);		
		} else {
			$this->data['banner1'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		//Banner Image 1 Ends Here//
		
		//Banner Image 2 Start Here//
		if (isset($this->request->post['config_banner2'])) {
			$this->data['config_banner2'] = $this->request->post['config_banner2'];
		} else {
			$this->data['config_banner2'] = $this->config->get('config_banner2');			
		}

		if ($this->config->get('config_banner2') && file_exists(DIR_IMAGE . $this->config->get('config_banner2')) && is_file(DIR_IMAGE . $this->config->get('config_banner2'))) {
			$this->data['banner2'] = $this->model_tool_image->resize($this->config->get('config_banner2'), 100, 100);		
		} else {
			$this->data['banner2'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		//Banner Image 2 Ends Here//
		
		//Banner Image 3 Start Here//
		if (isset($this->request->post['config_banner3'])) {
			$this->data['config_banner3'] = $this->request->post['config_banner3'];
		} else {
			$this->data['config_banner3'] = $this->config->get('config_banner3');			
		}

		if ($this->config->get('config_banner3') && file_exists(DIR_IMAGE . $this->config->get('config_banner3')) && is_file(DIR_IMAGE . $this->config->get('config_banner3'))) {
			$this->data['banner3'] = $this->model_tool_image->resize($this->config->get('config_banner3'), 100, 100);		
		} else {
			$this->data['banner3'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		//Banner Image 3 Ends Here//

		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
 		if (isset($this->error['code'])) {
			$this->data['error_code'] = $this->error['code'];
		} else {
			$this->data['error_code'] = '';
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
			'href'      => $this->url->link('module/fashionicab', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/fashionicab', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['banner1_url'])) {
			$this->data['banner1_url'] = $this->request->post['banner1_url'];
		} else {
			$this->data['banner1_url'] = $this->config->get('banner1_url');
		}
		
		if (isset($this->request->post['banner2_url'])) {
			$this->data['banner2_url'] = $this->request->post['banner2_url'];
		} else {
			$this->data['banner2_url'] = $this->config->get('banner2_url');
		}
		
		if (isset($this->request->post['banner3_url'])) {
			$this->data['banner3_url'] = $this->request->post['banner3_url'];
		} else {
			$this->data['banner3_url'] = $this->config->get('banner3_url');
		}	
		
		$this->data['modules'] = array();
		
		if (isset($this->request->post['fashionicab_module'])) {
			$this->data['modules'] = $this->request->post['fashionicab_module'];
		} elseif ($this->config->get('fashionicab_module')) { 
			$this->data['modules'] = $this->config->get('fashionicab_module');
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/fashionicab.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/fashionicab')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>