<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lease extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'lease_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('lease','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('lease/lease/index');
        $config["total_rows"]  = $this->lease_model->count_lease();
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
        $data["leases"] = $this->lease_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "lease";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  
//puchase data insert process
      public function form()
	      { 
	      	$this->permission->method('lease','create')->redirect();
		   $this->form_validation->set_rules('pakage_name', display('pakage_name')  ,'max_length[250]');
		
		     if ($this->form_validation->run()) { 
				if ($this->lease_model->create()) { 
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('lease/lease/index/');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("lease/lease/form");
 

		} else { 
			
			$data['title']   = display('create');	
			$data['module']  = "lease";
			$data['product'] = $this->lease_model->product();
			$data['store']   = $this->lease_model->store();
			$data['page']    = "form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

 
	public function view($id = null) 
	{ 
        $this->permission->method('lease','read')->redirect();
        $data['title'] = display('lease');
		$data['leases']  = $this->lease_model->findById($id);
		$data['pmap'] = $this->lease_model->lease_pmap_details($id);
		$data['stmap'] = $this->lease_model->lease_storemap_details($id);
		$data['module'] = "lease";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	}


	public function delete($id = null) 
	{ 
        $this->permission->method('lease','delete')->redirect();

		if ($this->lease_model->delete($id)) {
			$accesslog = array(
				'action_page'       =>	'Lease ',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Lease Id'.'-'.$id,
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
		redirect('lease/lease/index');
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


//isapproved by super admin
 public function isactive($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'lease_id'     => $id,
			'isactive' => $action
		);

		if ($this->lease_model->update($postData)) {
			$this->session->set_flashdata('message', display('successfully_approved'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

  
	//lease update form
	 public function lease_up_form($lease_id = null)
    {  
$this->permission->method('lease','update')->redirect();
		$this->form_validation->set_rules('pakage_name', display('pakage_name')  ,'max_length[50]');
		     if ($this->form_validation->run()) { 
				if ($this->lease_model->update_lease()) { 
					$this->session->set_flashdata('message', display('update_successfully'));
					redirect('lease/lease/index/');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("lease/lease/form");
		} else { 
        $data['title']    = display('update');
		$data['lease_info'] = $this->lease_model->leaseupinfo($lease_id);
		$data['strmap']    = $this->lease_model->storemap($lease_id);
		$data['prdmap']    = $this->lease_model->productmap($lease_id);
		$data['product']  = $this->lease_model->product();
		$data['store']    = $this->lease_model->store();
		$data['module']   = "lease";
		$data['page']     = "lease_update_form";   
		echo Modules::run('template/layout', $data);
    }
}

public function number_generator()
	{
		$this->db->select_max('invoice_no', 'invoice_no');
		$query = $this->db->get('leases_parent');	
		$result = $query->result_array();	
		$invoice_no = $result[0]['invoice_no'];
		if ($invoice_no !='') {
			$invoice_no = $invoice_no + 1;	
		}else{
			$invoice_no = 1000;
		}
		return $invoice_no;		
	}

}
