<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Purchase_order extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'purchase_order_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('purchase_order','read')->redirect();
		$data['title']    = display('oreder_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('purchase_order/purchase_order/index');
        $config["total_rows"]  = $this->purchase_order_model->count_order();
        $config["per_page"]    = 10;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["purchase_orders"] = $this->purchase_order_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "purchase_order";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  
//puchase data insert process
      public function form()
	      { 
	      $this->permission->method('purchase_order','create')->redirect();
		   $this->form_validation->set_rules('supplier_id', display('supplier_id')  ,'max_length[50]');
		
		     if ($this->form_validation->run()) { 
				if ($this->purchase_order_model->create()) { 
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('purchase_order/purchase_order/index/');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("purchase_order/purchase_order/form");
 

		} else { 
			
			$data['title']    = display('create');	
			$data['module']   = "purchase_order";
			$data['supplier'] =  $this->purchase_order_model->supplier();
			$data['warehouse'] =  $this->purchase_order_model->warehouse_list();
			$data['store'] =  $this->purchase_order_model->store_list();
			$data['page']     = "form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

 
	public function view($id = null) 
	{ 
        $this->permission->method('purchase_order','read')->redirect();
        $data['title'] = display('purchase_order');
		$data['purchase_orders'] = $this->purchase_order_model->findById($id);
		$data['poreder'] = $this->purchase_order_model->oreder_view($id);
		$data['hd_office'] = $this->purchase_order_model->head_office();
		$data['module'] = "purchase_order";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	}


	public function delete($id = null) 
	{ 
        $this->permission->method('purchase_order','delete')->redirect();

		if ($this->purchase_order_model->delete($id)) {
			$accesslog = array(
				'action_page'       =>	'purchase order',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Orde Id'.'-'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('purchase_order/purchase_order/index');
	}


    /*
    |----------------------------------------------
    |        id genaretor
    |----------------------------------------------     
    */
    public function randID()
    {
        $result = ""; 
        $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

        $charArray = str_split($chars);
        for($i = 0; $i < 7; $i++) {
                $randItem = array_rand($charArray);
                $result .="".$charArray[$randItem];
        }
        return "P".$result;
    }

   
// product auto complete
	public function product_search(){

		$product_name 	= $this->input->post('product_name');
       	$product_info 	= $this->purchase_order_model->product_search_item($product_name);

		$list[''] = '';
		foreach ($product_info as $value) {
			$json_product[] = array('label'=>$value['product_name'].'('.$value['product_code'].')','value'=>$value['product_id']);
		} 
		
        echo json_encode($json_product);
	}
//product info ajax data
	public function retrieve_product_data()
	{	
		$product_id = $this->input->post('product_id');
		$product_info = $this->purchase_order_model->get_total_product($product_id);

		echo json_encode($product_info);
	}

	//location autocomplete ajax data
	public function location_search()
	{	$location 	= $this->input->post('location');
       	$location_info 	= $this->purchase_order_model->search_location($location);
        $warehouse 	= $this->purchase_order_model->search_warehouse($location);
		$list[''] = '';
		foreach ($location_info as $value) {
			$json_location[] = array('label'=>$value['store_name'],'value'=>$value['store_id']);
		} 
		foreach ($warehouse as $ware) {
			$json_warehouse[] = array('label'=>$ware['warehouse_name'],'value'=>$ware['warehouse_id']);
		} 
        echo json_encode($json_location);
	}
	// reaceive product


     public function receive_form($order_id = null)
    {  
        $this->permission->method('purchase_order','read')->redirect();
		$this->form_validation->set_rules('supplier_id', display('supplier_id')  ,'max_length[50]');
		     if ($this->form_validation->run()) { 
				if ($this->purchase_order_model->receive()) { 
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('purchase_order/purchase_order/receive_list/');
				}else{
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("purchase_order/purchase_order/receive_form");
		}else{ 
        $data['title']    = display('receive');
        $sup_inf = $this->db->select('*')->from('purchase_order')->where('po_no',$order_id)->get()->row();

		$data['receive']  = $this->purchase_order_model->order_receive($order_id);
		$data['order']    = $this->purchase_order_model->purchase_orderinfo($order_id);
		$data['supplier'] = $this->purchase_order_model->supplier_specific($sup_inf->supplier_id);
		$data['warehouse']= $this->purchase_order_model->warehouse_list();
		$data['store']    = $this->purchase_order_model->store_list();
		$data['module']   = "purchase_order";
		$data['page']     = "order_receive_form";   
		echo Modules::run('template/layout', $data);
    }
}

//isapproved by super admin
 public function isapproved($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'po_no'     => $id,
			'isapproved' => $action
		);

		if ($this->purchase_order_model->update($postData)) {
			$this->session->set_flashdata('message', display('successfully_approved'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

// receive info list
public function receive_list()
	{   
        $this->permission->method('purchase_order','read')->redirect();
		$data['title']    = display('receive_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('purchase_order/purchase_order/receive_list');
        $config["total_rows"]  = $this->purchase_order_model->count_receive();
        $config["per_page"]    = 10;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["purchase_orders"] = $this->purchase_order_model->receive_list($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "purchase_order";
		$data['page']   = "receive_list";   
		echo Modules::run('template/layout', $data); 
	}  
	//order update form
	 public function order_up_form($order_id = null)
    { 
    	$this->permission->method('purchase_order','update')->redirect();
		$this->form_validation->set_rules('supplier_id', display('supplier_id')  ,'max_length[50]');
		     if ($this->form_validation->run()) { 
				if ($this->purchase_order_model->update_order()) { 
					$this->session->set_flashdata('message', display('update_successfully'));
					redirect('purchase_order/purchase_order/index/');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("purchase_order/purchase_order/index");
		} else { 
        $data['title']    = display('update');
		$data['order_up'] = $this->purchase_order_model->order_receive($order_id);
		$data['order']    = $this->purchase_order_model->purchase_orderinfo($order_id);
		$data['supplier'] = $this->purchase_order_model->supplier();
		$data['warehouse']= $this->purchase_order_model->warehouse_list();
		$data['store']    = $this->purchase_order_model->store_list();
		$data['module']   = "purchase_order";
		$data['page']     = "order_update_form";   
		echo Modules::run('template/layout', $data);
    }
}
  // Product receive delete 
    public function receive_delete($id = null) 
	{ 
        $this->permission->method('purchase_order','delete')->redirect();

		if ($this->purchase_order_model->delete_receive($id)) {
			$accesslog = array(
				'action_page'       =>	'purchase Receive',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Receive Id'.'-'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('purchase_order/purchase_order/receive_list');
	}
	//receive view

	public function receive_view($id = null) 
	{ 
        $this->permission->method('purchase_order','read')->redirect();
        $data['title'] = display('purchase_receive');
		$data['purchase_orders'] = $this->purchase_order_model->receive_veiw($id);
		$data['poreder'] = $this->purchase_order_model->oreder_receive($id);
		$data['module'] = "purchase_order";
		$data['page']   = "receive_view";   
		echo Modules::run('template/layout', $data); 
	}

}
