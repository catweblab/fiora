<?php  
class ControllerModulefashionicab extends Controller {
	protected function index() {

      	$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['banner1_url'] = html_entity_decode($this->config->get('banner1_url'));
		$this->data['banner2_url'] = html_entity_decode($this->config->get('banner2_url'));	
		$this->data['banner3_url'] = html_entity_decode($this->config->get('banner3_url'));
		//Content Banner Image 1 Starts Here//
		
				if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_banner1') && file_exists(DIR_IMAGE . $this->config->get('config_banner1'))) {
			$this->data['banner1'] = $server . 'image/' . $this->config->get('config_banner1');
		} else {
			$this->data['banner1'] = '';
		}
		
		//Content Banner Image 1 Ends Here//
		
		//Content Banner Image 2 Starts Here//
		
				if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_banner2') && file_exists(DIR_IMAGE . $this->config->get('config_banner2'))) {
			$this->data['banner2'] = $server . 'image/' . $this->config->get('config_banner2');
		} else {
			$this->data['banner2'] = '';
		}
		
		//Content Banner Image 2 Ends Here//
		
		//Content Banner Image 3 Starts Here//
		
				if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_banner3') && file_exists(DIR_IMAGE . $this->config->get('config_banner3'))) {
			$this->data['banner3'] = $server . 'image/' . $this->config->get('config_banner3');
		} else {
			$this->data['banner3'] = '';
		}
		
		//Content Banner Image 3 Ends Here//
		
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fashionicab.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/fashionicab.tpl';
		} else {
			$this->template = 'default/template/module/fashionicab.tpl';
		}
		
		$this->render();
	}
}
?>