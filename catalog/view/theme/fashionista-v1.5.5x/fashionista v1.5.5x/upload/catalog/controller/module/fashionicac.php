<?php  
class ControllerModulefashionicac extends Controller {
	protected function index() {
		$this->language->load('module/fashionicac');

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		//Content Banner Image 1 Starts Here//
		
				if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_cbanner1') && file_exists(DIR_IMAGE . $this->config->get('config_cbanner1'))) {
			$this->data['cbanner1'] = $server . 'image/' . $this->config->get('config_cbanner1');
		} else {
			$this->data['cbanner1'] = '';
		}
		
		//Content Banner Image 1 Ends Here//
		
		//Content Banner Image 2 Starts Here//
		
				if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_cbanner2') && file_exists(DIR_IMAGE . $this->config->get('config_cbanner2'))) {
			$this->data['cbanner2'] = $server . 'image/' . $this->config->get('config_cbanner2');
		} else {
			$this->data['cbanner2'] = '';
		}
		
		//Content Banner Image 2 Ends Here//
		
		//Content Banner Image 3 Starts Here//
		
				if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}	
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_cbanner3') && file_exists(DIR_IMAGE . $this->config->get('config_cbanner3'))) {
			$this->data['cbanner3'] = $server . 'image/' . $this->config->get('config_cbanner3');
		} else {
			$this->data['cbanner3'] = '';
		}
		
		//Content Banner Image 3 Ends Here//
		
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fashionicac.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/fashionicac.tpl';
		} else {
			$this->template = 'default/template/module/fashionicac.tpl';
		}
		
		$this->render();
	}
}
?>