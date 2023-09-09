<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Returns extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'return_model'
		));		 
	}

	
	// Return Form 
	public function return_form() 
	{ 
        $this->permission->method('return','create')->redirect();
        $data['title'] = display('return_form');
		$data['module'] = "return";
		$data['supplier'] =  $this->return_model->supplier();
		$data['page']   = "return_form";   
		echo Modules::run('template/layout', $data); 
	}
	// Sales Return form
	public function sales_return(){
		  $invoice_no = $this->input->post('invoice_no');
		  $this->form_validation->set_rules('customer_id', display('customer_id')  ,'max_length[50]');
          $query = $this->db->select('invoice_no')->from('sales_parent')->where('invoice_no',$invoice_no)->get();
        if ($query->num_rows() == 0) {
            $this->session->set_flashdata('exception',display('please_input_correct_invoice_no'));
               redirect('return/returns/return_form/');
        }
    
        $data['title']        = display('sales_return');
		$data['return']       = $this->return_model->sales_return($invoice_no);
		$data['return_info']  = $this->return_model->sales_return_info($invoice_no);
		$data['module']   = "return";
		$data['page']     = "sales_return_form";   
		echo Modules::run('template/layout', $data);
}
// sales return insert
public function sales_return_insert(){
	 $this->permission->method('return','create')->redirect();
		$this->form_validation->set_rules('customer_id', display('customer_id')  ,'max_length[50]');
		     if ($this->form_validation->run()) { 
				if ($this->return_model->insert_salse_return()) { 
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('return/returns/sales_return_list/');
				}else{
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("return/returns/return_form");
		}else{
			$this->session->set_flashdata('exception',  display('please_try_again'));
			redirect("return/returns/return_form");
		 }

}
// purchase return 
public function purchase_return(){
		$supplier_id = $this->input->post('supplier_id');
        $data['title']     = display('purchase_return');
		$data['pur_return'] = $this->return_model->pur_return_info($supplier_id);
		$data['module']    = "return";
		$data['page']     = "purchase_list";   
		echo Modules::run('template/layout', $data);
}
// purchase Return form
public function purchase_return_form($voucher_no = null)
    {  
        $this->permission->method('return','create')->redirect();
		$this->form_validation->set_rules('supplier_id', display('supplier_id')  ,'max_length[50]');
		     if ($this->form_validation->run()) { 
				if ($this->return_model->pur_return_insert()) { 
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('return/returns/purchase_return_list/');
				}else{
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("return/returns/return_form");
		}else{ 
        $data['title']    = display('purchase_return');
		$data['return']  = $this->return_model->purchase_return($voucher_no);
		$data['retnr']    = $this->return_model->purchase_returninfo($voucher_no);
		$data['supplier'] = $this->return_model->supplier();
		$data['module']   = "return";
		$data['page']     = "purchase_return_form";   
		echo Modules::run('template/layout', $data);
    }
}
   // sales return list
   public function sales_return_list()
	{   
        $this->permission->method('return','read')->redirect();
		$data['title']    = display('sale_return_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('return/returns/sales_return_list');
        $config["total_rows"]  = $this->return_model->count_sa_return();
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
        $data["s_return"] = $this->return_model->s_return_list($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "return";
		$data['page']   = "s_return_list";   
		echo Modules::run('template/layout', $data); 
	}  
	// Purchase Return list
public function purchase_return_list()
	{   
        $this->permission->method('return','read')->redirect();
		$data['title']    = display('purchase_return_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('return/returns/purchase_return_list');
        $config["total_rows"]  = $this->return_model->count_pa_return();
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
        $data["p_return"] = $this->return_model->pur_return_list($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "return";
		$data['page']   = "p_return_list";   
		echo Modules::run('template/layout', $data); 
	}  

	public function purchase_return_view($preturn_id = null){
        $data['title']   = display('purchase_return_view');
		$data['details'] = $this->return_model->p_return_view($preturn_id);
		$data['info']    = $this->return_model->p_return_view_info($preturn_id);
		$data['module']  = "return";
		$data['page']    = "view";   
		echo Modules::run('template/layout', $data);
}
// Sales Return view
public function sales_return_view($sreturn_id = null){
        $data['title']   = display('sales_return_view');
		$data['details'] = $this->return_model->s_return_view($sreturn_id);
		$data['info']    = $this->return_model->s_return_view_info($sreturn_id);
		$data['module']  = "return";
		$data['page']    = "sales_return_view";   
		echo Modules::run('template/layout', $data);
}
}
