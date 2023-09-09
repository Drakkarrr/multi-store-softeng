<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MX_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();

 		$this->load->model(array(
 			'home_model' 
 		)); 

		if (! $this->session->userdata('isLogIn'))
			redirect('login');
 	}
 
	public function index()
	{   
		$data['title']           = "Home";
		#page path 
		$data['total_user']      = $this->home_model->total_user();
		$data['active_user']     = $this->home_model->active_user();
		$data['total_customer']  = $this->home_model->total_customer();
		$data['cash_customer']   = $this->home_model->cash_customer();
		$data['credit_customer'] = $this->home_model->credit_customer();
		$data['lease_customer']  = $this->home_model->lease_customer();
		$data['total_store']     = $this->home_model->total_store();
		$data['active_store']    = $this->home_model->active_store();
		$data['total_product']   = $this->home_model->total_product();
		$data['active_product']  = $this->home_model->active_product();
		$data['total_cashsale']  = $this->home_model->total_cash_sale();
		$data['total_creditsale']= $this->home_model->total_credit_sale();
		$data['total_leasesale'] = $this->home_model->total_lease_sale();
		$data['stockqty']        = $this->home_model->stock_qty();
		$data['total_stock']     = $this->home_model->stock_value();
		$data['piechart']        = $this->home_model->piecharinfo();
		$data['over_due']        = $this->home_model->overdue_analysis();
		$data['sales_per']       = $this->home_model->monthly_sales_performance();
		$data['module']          = "dashboard";  
		$data['page']            = "home/home";  
		echo Modules::run('template/layout', $data); 
	}

	public function profile()
	{
		$data['title']  = "Profile";
		$data['module'] = "dashboard";  
		$id = $this->session->userdata('id');
		$data['user']   = $this->home_model->profile($id);
		$data['page']   = "home/profile";  
		echo Modules::run('template/layout', $data);  
	}

	public function setting()
	{ 
		$data['title']    = "Profile Setting";
		$id = $this->session->userdata('id');
		/*-----------------------------------*/
		$this->form_validation->set_rules('firstname', 'First Name','required|max_length[50]');
		$this->form_validation->set_rules('lastname', 'Last Name','required|max_length[50]');
		#------------------------#
       	$this->form_validation->set_rules('email', 'Email Address', "required|valid_email|max_length[100]");
       	/*---#callback fn not supported#---*/ 
       	// $this->form_validation->set_rules('email', 'Email Address', "required|valid_email|max_length[100]|callback_email_check[$id]|trim"); 
		#------------------------#
		$this->form_validation->set_rules('password', 'Password','required|max_length[32]|md5');
		$this->form_validation->set_rules('about', 'About','max_length[1000]');
		/*-----------------------------------*/
        $config['upload_path']          = './assets/img/user/';
        $config['allowed_types']        = 'gif|jpg|png'; 

        $this->load->library('upload', $config);
 
        if ($this->upload->do_upload('image')) {  
            $data = $this->upload->data();  
            $image = $config['upload_path'].$data['file_name']; 

			$config['image_library']  = 'gd2';
			$config['source_image']   = $image;
			$config['create_thumb']   = false;
			$config['maintain_ratio'] = TRUE;
			$config['width']          = 115;
			$config['height']         = 90;
			$this->load->library('image_lib', $config);
			$this->image_lib->resize();
			$this->session->set_flashdata('message', "Image Upload Successfully!");
        }
		/*-----------------------------------*/
		$data['user'] = (object)$userData = array(
			'id' 		  => $this->input->post('id'),
			'firstname'   => $this->input->post('firstname'),
			'lastname' 	  => $this->input->post('lastname'),
			'email' 	  => $this->input->post('email'),
			'password' 	  => md5($this->input->post('password')),
			'about' 	  => $this->input->post('about',true),
			'image'   	  => (!empty($image)?$image:$this->input->post('old_image')) 
		);

		/*-----------------------------------*/
		if ($this->form_validation->run()) {

	        if (empty($userData['image'])) {
				$this->session->set_flashdata('exception', $this->upload->display_errors()); 
	        }

			if ($this->home_model->setting($userData)) {

				$this->session->set_userdata(array(
					'fullname'   => $this->input->post('firstname'). ' ' .$this->input->post('lastname'),
					'email' 	  => $this->input->post('email'),
					'image'   	  => (!empty($image)?$image:$this->input->post('old_image'))
				));


				$this->session->set_flashdata('message', display('update_successfully'));
			} else {
				$this->session->set_flashdata('exception',  display('please_try_again'));
			}
			redirect("dashboard/home/setting");

		} else {
			$data['module'] = "dashboard";  
			$data['page']   = "home/profile_setting"; 
			if(!empty($id))
			$data['user']   = $this->home_model->profile($id);
			echo Modules::run('template/layout', $data);
		}
	}
	
}
