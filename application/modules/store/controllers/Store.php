<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Store extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'store_model'
		));		 
	}
 
	public function index()
	{   
		 $this->permission->module('store','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('store/store/index');
        $config["total_rows"]  = $this->store_model->count_store();
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
        $data["stores"] = $this->store_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
		$data['module'] = "store";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	} 

 
	public function view($store_id = null)
	{  
        $this->permission->module('store','read')->redirect();

		$data['title'] = display('store_information');
		#-------------------------------#
		#check store is already checked  
		if ($this->store_model->check_exists($store_id) === true) {
			//update checked and checked_by field
			$this->store_model->update([
				'store_id' => $store_id,
				'checked' 	 => 1,
				'checked_by' => $this->session->userdata('id'),
			]);
		}
		#-------------------------------#
		$data['store'] = $this->store_model->read_by_id($store_id);

		$data['module'] = "store";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	} 


	public function create($store_id = null)
	{
        $coa = $this->store_model->headcode();
        if($coa->HeadCode!=NULL){
            $headcode=$coa->HeadCode+1;
        }
        else{
            $headcode="40100001";
        }
		$coa = $this->store_model->cash_headcode();
        if($coa->HeadCode!=NULL){
            $cash_headcode=$coa->HeadCode+1;
        }
        else{
            $cash_headcode="1020101000001";
        }


		$data['title'] = display('store');
		#-------------------------------#
		$this->form_validation->set_rules('store_name',display('store_name'),'required|max_length[250]');
		$this->form_validation->set_rules('store_code',display('store_code')  ,'required');
		$this->form_validation->set_rules('store_phone',display('store_phone')  ,'max_length[20]');
		$this->form_validation->set_rules('store_address',display('store_address') ,'required');
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		#-------------------------------#

        $s_code = $this->input->post('store_code');
        $s_name = $this->input->post('store_name');
        $c_acc=$s_code.'-'.$s_name;

		$data['store_data'] = (Object) $postData = [
			    'store_id'   => $this->input->post('store_id'),
				'store_name' => $this->input->post('store_name'),
				'store_code' => $this->input->post('store_code'),
				'store_phone'=> $this->input->post('store_phone'),
			    'store_address' => $this->input->post('store_address'),
				'createby'   => $createby,
				'createdate' => $createdate,
				'isactive'   => 1
			];

        $data['aco']   = (Object) $postData1 = [
            'HeadCode'         => $headcode,
            'HeadName'         => $c_acc,
            'PHeadName'        => 'Store Expenses',
            'HeadLevel'        => '2',
            'IsActive'         => '1',
            'IsTransaction'    => '1',
            'IsGL'             => '0',
            'HeadType'         => 'E',
            'IsBudget'         => '0',
            'IsDepreciation'   => '0',
            'DepreciationRate' => '0',
            'CreateBy'         => $createby,
            'CreateDate'       => $createdate,
        ];
		$cash_acc = 'Cash-'.$c_acc;
		$data['aco2']   = (Object) $postData2 = [
            'HeadCode'         => $cash_headcode,
            'HeadName'         => $cash_acc,
            'PHeadName'        => 'Cash In Hand',
            'HeadLevel'        => '4',
            'IsActive'         => '1',
            'IsTransaction'    => '1',
            'IsGL'             => '0',
            'HeadType'         => 'A',
            'IsBudget'         => '0',
            'IsDepreciation'   => '0',
            'DepreciationRate' => '0',
            'CreateBy'         => $createby,
            'CreateDate'       => $createdate,
        ];

		#-------------------------------#
		if ($this->form_validation->run()) { 

			if (empty($postData['store_id'])) {

        		$this->permission->method('store','create')->redirect();

                $this->store_model->create_coa($postData1);
				$this->store_model->create_coa($postData2);
				
				if ($this->store_model->create($postData)) { 
					$id = $this->db->insert_id();
					$accesslog = array(
				'action_page'       =>	'Store',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Store ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			        $this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("store/Store/create");

			} else {

        		$this->permission->method('store','update')->redirect();

				if ($this->store_model->update($postData)) { 
					$accesslog = array(
				'action_page'       =>	'Store',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Store ID :'.$postData['store_id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("store/Store/create/".$postData['store_id']);  
			}
 

		} else { 
			if(!empty($store_id)) {
				$data['title'] = display('update');
				$data['store']   = $this->store_model->findById($store_id);
			}
			   $data['module'] = "store";
			   $data['page']   = "form";     
			echo Modules::run('template/layout', $data); 
		}   
	}


	public function delete($store_id = null) 
	{ 
        $this->permission->module('store','delete')->redirect();

		if ($this->store_model->delete($store_id)) {
			#set success message
			$accesslog = array(
				'action_page'       =>	'Store',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Store ID :'.$store_id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('store/Store/index');
	}
	 

	 public function isactive($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'store_id'     => $id,
			'isactive' => $action
		);

		if ($this->store_model->update($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

}
