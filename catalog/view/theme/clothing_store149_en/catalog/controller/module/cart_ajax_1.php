<?php 
class ControllerModuleCartAjax1 extends Controller {
	public function callback() {
		$this->language->load('module/cart');
		$this->load->model('tool/image');
		$this->load->model('tool/seo_url');
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['shipping_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['payment_method']);
			if (isset($this->request->post['remove'])) {
				$result = explode('_', $this->request->post['remove']);
				$this->cart->remove(trim($result[1]));
			} else {
				if (isset($this->request->post['option'])) {
					$option = $this->request->post['option'];
				} else {
					$option = array();
				}
				$this->cart->add($this->request->post['product_id'], $this->request->post['quantity'], $option);
			}
		}
		$cart_container = '<table align="right" width="100%">';
		$i = 0;
		$total['text'] = '';
		if ($this->cart->getProducts()) {
			foreach ($this->cart->getProducts() as $product) {
				if ($product['image']) {
					$image = $product['image'];
				} else {
					$image = 'no_image.jpg';
				}
				$cart_container .= '<tr><td width="50" valign="top"><a href="'.$this->model_tool_seo_url->rewrite(HTTP_SERVER . 'index.php?route=product/product&product_id='.$product['product_id']).'">';
				$cart_container .= '<img src="'.$this->model_tool_image->resize($image, 40, 40).'" alt="'.$product['name'].'" /></a>';
				$cart_container .= '</td>';
				$cart_container .= '<td valign="top"><span class="cart_remove" id="remove_'.$product['key'].'"></span>';
				$cart_container .= '<a class="title" href="'.$this->model_tool_seo_url->rewrite(HTTP_SERVER . 'index.php?route=product/product&product_id='.$product['product_id']).'">'. $product['quantity'].' - '.$product['name'].'</a><br />';
				foreach ($product['option'] as $option) {
					$cart_container .= '<small>'.$option['name'].' '.$option['value'].'</small>';
				}
				$cart_container .= '</td></tr>';
				$i = $i + $product['quantity'];
			}
			$cart_container .= '</table><div class="clear"></div>';
			$total = 0;
			$taxes = $this->cart->getTaxes();
			$this->load->model('checkout/extension');
			$sort_order = array(); 
			$view = HTTP_SERVER . 'index.php?route=checkout/cart';
			$checkout = HTTPS_SERVER . 'index.php?route=checkout/shipping';
			$results = $this->model_checkout_extension->getExtensions('total');
			foreach ($results as $key => $value) {
				$sort_order[$key] = $this->config->get($value['key'] . '_sort_order');
			}
			array_multisort($sort_order, SORT_ASC, $results);
			foreach ($results as $result) {
				$this->load->model('total/' . $result['key']);
				$this->{'model_total_' . $result['key']}->getTotal($total_data, $total, $taxes);
			}
			$sort_order = array();
			foreach ($total_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}
			array_multisort($sort_order, SORT_ASC, $total_data);
			$cart_container .= '<table align="right">';
			foreach ($total_data as $total) {
				$cart_container .= '<tr><td>'.$total['title'].'</td><td>'.$total['text'].'</td></tr>';
			}
			$cart_container .= '</table><div class="clear"></div>';
			$cart_container .= '<a href="'.$view.'" class="button left"><span>'.$this->language->get('text_view').'</span></a>';
			$cart_container .= '<a href="'.$checkout.'" class="button right"><span>'.$this->language->get('text_checkout').'</span></a>';
		} else {
			$cart_container .= '<p style="text-align:center; color:#FFF;">' . $this->language->get('text_empty') . '</p>';
		}
		$cart_button = $this->language->get('heading_title').'&nbsp;&nbsp;'.$i.' piece(s)&nbsp;&nbsp;'.$total['text'];
		$json = array('cart_container' => $cart_container, 'cart_button' => $cart_button);
		$this->response->setOutput(json_encode($json), $this->config->get('config_compression'));
	}
}
?>