<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stock extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'stock_model'
		));		 
	}



	public function procedure(){

        $data['stockinfo'] = $this->stock_model->stock();
		$data['module'] = "stock";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
		}

		// stock History Report

	public function stock_history_report(){

        $data['stockhis'] = $this->stock_model->stock_history();
		$data['module'] = "stock";
		$data['page']   = "stock_history";   
		echo Modules::run('template/layout', $data); 
		}


}
