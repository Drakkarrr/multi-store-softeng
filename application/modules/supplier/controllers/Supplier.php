<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Supplier extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'supplier_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('supplier','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('supplier/supplier/index');
        $config["total_rows"]  = $this->supplier_model->count_supplier();
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
        $data["suppliers"] = $this->supplier_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "supplier";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  

 public function form($id = null)
	{

        $coa = $this->supplier_model->headcode();
        if($coa->HeadCode!=NULL){
            $headcode=$coa->HeadCode+1;
        }
        else{
            $headcode="5020200001";
        }
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('supplier_name', display('supplier_name')  ,'required|max_length[50]');
		$this->form_validation->set_rules('phone', display('phone')  ,'max_length[30]');
		$this->form_validation->set_rules('address', display('address')  ,'max_length[200]');
	    $createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		$ids = $this->input->post('supplier_id');
		$updatedby = (!empty($ids)?$this->session->userdata('id'):'');
		$updatdate = (!empty($ids)?date('Y-m-d H:i:s'):'');
		#-------------------------------#
        $c_code = $this->input->post('supplier_code');
        $c_name = $this->input->post('supplier_name');
        $c_acc=$c_code.'-'.$c_name;

	    $data['supplier']   = (Object) $postData = [
			'supplier_id' 	   => $this->input->post('supplier_id'), 
			'supplier_name'    => $this->input->post('supplier_name'),
			'supplier_code'    => $this->input->post('supplier_code'),
			'phone'            => $this->input->post('phone'),
			'address'          => $this->input->post('address'), 
			'email'            => $this->input->post('email'),
			'contact_per_name' => $this->input->post('contact_per_name'),
			'c_p_contact'      => $this->input->post('c_p_contact'),
			'isactive'         => 1,
			'createby'         => $createby,
			'createdate'       => $createdate,
			'updateby'         => $updatedby,
			'updatedate'       => $updatdate, 
		];

        $data['aco']   = (Object) $postDatacoa = [
            'HeadCode'         => $headcode,
            'HeadName'         => $c_acc,
            'PHeadName'        => 'Account Payable',
            'HeadLevel'        => '3',
            'IsActive'         => '1',
            'IsTransaction'    => '1',
            'IsGL'             => '0',
            'HeadType'         => 'L',
            'IsBudget'         => '0',
            'IsDepreciation'   => '0',
            'DepreciationRate' => '0',
            'CreateBy'         => $createby,
            'CreateDate'       => $createdate,
        ];

		if ($this->form_validation->run()) { 

			if (empty($postData['supplier_id'])) {

        		$this->permission->method('supplier','create')->redirect();
        		// print_r($postDatacoa);exit;
                $this->supplier_model->create_coa($postDatacoa);
				if ($this->supplier_model->create($postData)) { 
					$id = $this->db->insert_id();
					$accesslog = array(
				'action_page'       =>	'Supplier',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Supplier ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('supplier/supplier/index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("supplier/supplier/form"); 

			} else {

        	$this->permission->method('supplier','update')->redirect();
            $oldname = $this->input->post('oldname');
            $c_accup=$c_code.'-'.$oldname;
            $this->db->where('HeadName',$c_accup)
			->delete('acc_coa');

          $data['aco']   = (Object) $updatecoasup = [
            'HeadCode'         => $headcode,
            'HeadName'         => $c_acc,
            'PHeadName'        => 'Account Payable',
            'HeadLevel'        => '3',
            'IsActive'         => '1',
            'IsTransaction'    => '1',
            'IsGL'             => '0',
            'HeadType'         => 'L',
            'IsBudget'         => '0',
            'IsDepreciation'   => '0',
            'DepreciationRate' => '0',
            'CreateBy'         => $createby,
            'CreateDate'       => $createdate,
        ];

				if ($this->supplier_model->update($postData)) { 
					$this->db->insert('acc_coa',$updatecoasup);
					$accesslog = array(
				'action_page'       =>	'Supplier',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Supplier ID :'.$postData['supplier_id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			       $this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("supplier/supplier/form/".$postData['supplier_id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['suppliers']   = $this->supplier_model->findById($id);
			}
			$text = 'sup-';
			$data['supplier_code'] = $text.$this->code_generators();
			$data['module'] = "supplier";
			$data['page']   = "form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

 
	public function view($id = null) 
	{ 
        $this->permission->method('supplier','read')->redirect();
        $data['title'] = display('supplier');
		$data['suppliers'] = $this->supplier_model->findById($id);
		$data['module'] = "supplier";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	}


	public function delete($id = null) 
	{ 
        $this->permission->method('supplier','delete')->redirect();

		if ($this->supplier_model->delete($id)) {
			$accesslog = array(
				'action_page'       =>	'Supplier',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Supplier ID :'.$id,
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
		redirect('supplier/supplier/index');
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

    public function isactive($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'supplier_id'     => $id,
			'isactive' => $action
		);

		if ($this->supplier_model->update($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

	public function code_generators()
	{
		
		$result = $this->db->select('supplier_code')->from('supplier')->order_by('createdate','desc')->get()->row();
		$s_code = $result->supplier_code;

		$supplier_code = substr($s_code,4);
		
		if ($supplier_code !='') {
			$supplier_code = $supplier_code + 1;	
		}else{
			$supplier_code ="1";
		}
		return $supplier_code;		
	}

}
