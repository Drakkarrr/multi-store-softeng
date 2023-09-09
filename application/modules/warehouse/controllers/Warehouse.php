<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Warehouse extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'warehouse_model'
		));		 
	}
 
	public function index()
	{   
		  $this->permission->module('warehouse','read')->redirect();
		$data['title']    = display('warehouse_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('warehouse/warehouse/index');
        $config["total_rows"]  = $this->warehouse_model->count_warehouse();
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
        $data["warehouses"] = $this->warehouse_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "warehouse";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	} 

 
	public function view($warehouse_id = null)
	{  
        $this->permission->module('warehouse','read')->redirect();

		$data['title'] = display('warehouse_information');
		#-------------------------------#
		#check warehouse is already checked  
		if ($this->warehouse_model->check_exists($warehouse_id) === true) {
			//update checked and checked_by field
			$this->warehouse_model->update([
				'warehouse_id' => $warehouse_id,
				'checked' 	 => 1,
				'checked_by' => $this->session->userdata('id'),
			]);
		}
		#-------------------------------#
		$data['warehouse'] = $this->warehouse_model->read_by_id($warehouse_id);

		$data['module'] = "warehouse";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	} 


	public function create($warehouse_id = null)
	{ 
		
		$data['title'] = display('warehouse');
		#-------------------------------#
		$this->form_validation->set_rules('warehouse_name',display('warehouse_name'),'required|max_length[250]');
		$this->form_validation->set_rules('warehouse_code',display('warehouse_code')  ,'required');
		$this->form_validation->set_rules('warehouse_phone',display('warehouse_phone')  ,'max_length[20]');
		$this->form_validation->set_rules('warehouse_address',display('warehouse_address') ,'required');
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		#-------------------------------#
		$data['warehouse_data'] = (Object) $postData = [
			    'warehouse_id'   => $this->input->post('warehouse_id'),
				'warehouse_name' => $this->input->post('warehouse_name'),
				'warehouse_code' => $this->input->post('warehouse_code'),
				'warehouse_phone'=> $this->input->post('warehouse_phone'),
			  'warehouse_address' => $this->input->post('warehouse_address'),
				'createby'   => $createby,
				'createdate' => $createdate,
				'isactive'   => 1
			]; 
		#-------------------------------#
		if ($this->form_validation->run()) { 

			if (empty($postData['warehouse_id'])) {

        		$this->permission->method('warehouse','create')->redirect();

				if ($this->warehouse_model->create($postData)) { 
					$id = $this->db->insert_id();
					$accesslog = array(
				'action_page'       =>	'Warehouse',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Warehouse ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("warehouse/warehouse/create");

			} else {

        		$this->permission->method('warehouse','update')->redirect();

				if ($this->warehouse_model->update($postData)) { 
					$accesslog = array(
				'action_page'       =>	'Warehouse',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Warehouse ID :'.$postData['warehouse_id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("warehouse/warehouse/create/".$postData['warehouse_id']);  
			}
 

		} else { 
			if(!empty($warehouse_id)) {
				$data['title'] = display('update');
				$data['warehouse']   = $this->warehouse_model->findById($warehouse_id);
			}
			   $data['module'] = "warehouse";
			   $data['page']   = "form";     
			echo Modules::run('template/layout', $data); 
		}   
	}


	public function delete($warehouse_id = null) 
	{ 
        $this->permission->module('warehouse','delete')->redirect();

		if ($this->warehouse_model->delete($warehouse_id)) {
			$accesslog = array(
				'action_page'       =>	'Warehouse',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Warehouse ID :'.$warehouse_id,
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
		redirect('warehouse/warehouse/index');
	}
	 

	 public function isactive($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'warehouse_id'     => $id,
			'isactive' => $action
		);

		if ($this->warehouse_model->update($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

}
