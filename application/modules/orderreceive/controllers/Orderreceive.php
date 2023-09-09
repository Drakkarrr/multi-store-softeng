<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Orderreceive extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'Orderreceive_model'
		));		 
	}
 
	
}
