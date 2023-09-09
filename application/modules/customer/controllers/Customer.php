<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'customer_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('customer','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('customer/customer/index');
        $config["total_rows"]  = $this->customer_model->count_customer();;
        $config["per_page"]    = 25;
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
        $data["customers"] = $this->customer_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "customer";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  

 public function form($id = null)
 {
         $coa = $this->customer_model->headcode();
           if($coa->HeadCode!=NULL){
                $headcode=$coa->HeadCode+1;
           }else{
                $headcode="1020301000001";
            }



        $c_code = $this->input->post('customer_code');
        $c_name = $this->input->post('name');
        $c_acc=$c_code.'-'.$c_name;

  $this->permission->method('customer','create')->redirect();
  $data['title'] = display('add');
  #-------------------------------#
  $this->form_validation->set_rules('name', display('name')  ,'required|max_length[50]');
  $this->form_validation->set_rules('store_id', display('store_id')  ,'max_length[30]');
  $this->form_validation->set_rules('job_designation', display('job_designation')  ,'max_length[100]');
  $this->form_validation->set_rules('customer_cnic', 'customer_cnic', 'is_unique[customer.customer_cnic]');
  $this->form_validation->set_rules('isactive', display('isactive') ,'required'); 
     $createby=$this->session->userdata('id');
  $createdate=date('Y-m-d H:i:s');
  $ids = $this->input->post('customer_id');
  $updatedby = (!empty($ids)?$this->session->userdata('id'):'');
  $updatdate = (!empty($ids)?date('Y-m-d H:i:s'):'');
  #-------------------------------#
   $data['customer']   = (Object) $postData = [
   'customer_id'     => $this->input->post('customer_id'), 
   'customer_code'    => $this->input->post('customer_code'),
   'customer_name'    => $this->input->post('name'),
   'type'             => $this->input->post('customer_type'),
   'customer_phone'   => $this->input->post('customer_phone'),
   'store_id'         => $this->input->post('store_id'), 
   'job_designation'  => $this->input->post('job_designation'), 
   'customer_address' => $this->input->post('customer_address'), 
   'customer_cnic'    => $this->input->post('customer_cnic'),
   'business_address' => $this->input->post('business_address'),  
   'isactive'         => $this->input->post('isactive'),
   'createby'         => $createby,
   'createdate'       => $createdate,
   'updateby'         => $updatedby,
   'updatedate'       => $updatdate, 
  ];

        $data['aco']  = (Object) $postData1 = [
             'HeadCode'         => $headcode,
             'HeadName'         => $c_acc,
             'PHeadName'        => 'Customer Receivable',
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

  if ($this->form_validation->run()) { 

   if (empty($postData['customer_id'])) {

          $this->permission->method('customer','create')->redirect();
          //if($this->input->post('customer_type')==2 || $this->input->post('customer_type')==3){
                $this->customer_model->create_coa($postData1);
            //  }
    if ($this->customer_model->create($postData)) { 
     $id = $this->db->insert_id();
     $accesslog = array(
    'action_page'       => 'Customer',
    'action_done'     => 'create',
    'remarks'      => $id,
    'user_name'   =>  $this->session->userdata('id'),
    'entry_date'     => date('Y-m-d H:i:s')
   );
  $this->db->insert('accesslog',$accesslog);
     $this->session->set_flashdata('message', display('save_successfully'));
     redirect('customer/customer/view/'. $id);
    } else {
     $this->session->set_flashdata('exception',  display('please_try_again'));
    }
    redirect("customer/customer/form"); 

   } else {

    $this->permission->method('customer','update')->redirect();

    if ($this->customer_model->update($postData)) { 
     $accesslog = array(
    'action_page'       => 'Customer',
    'action_done'     => 'update',
    'remarks'      => 'customer ID :'.$postData['customer_id'],
    'user_name'   =>  $this->session->userdata('id'),
    'entry_date'     => date('Y-m-d H:i:s')
   );
   $this->db->insert('accesslog',$accesslog);
     $this->session->set_flashdata('message', display('update_successfully'));
    } else {
     $this->session->set_flashdata('exception',  display('please_try_again'));
    }
    redirect("customer/customer/form/".$postData['customer_id']);  
   }
 

  } else { 
   if(!empty($id)) {
    $data['title'] = display('update');
    $data['customers']   = $this->customer_model->findById($id);
   }
   $data['module'] = "customer";
   $data['store']  = $this->customer_model->store_list();
   $data['page']   = "form";   
   echo Modules::run('template/layout', $data); 
   }   
 }

 
	public function view($id = null) 
	{ 
        $this->permission->method('customer','read')->redirect();
        $data['title'] = display('customer');
		$data['customers'] = $this->customer_model->findById($id);
		$data['module'] = "customer";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	}


	public function delete($id = null) 
	{ 
        $this->permission->method('customer','delete')->redirect();

		if ($this->customer_model->delete($id)) {
			$accesslog = array(
				'action_page'       =>	'Customer',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'customer ID :'.$id,
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
		redirect('customer/customer/index');
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
			'customer_id'     => $id,
			'isactive' => $action
		);

		if ($this->customer_model->update($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
		public function customer_code($id){

		$result = $this->db->select('*')->from('customer')->where('type',$id)->order_by('createdate','desc')->get()->row();
		$customer_code = $result->customer_code;

		$ccode = substr($customer_code,3);
		$cdata['c_code'] = $ccode+1; 
        $cdata['type'] =$id;

		echo json_encode($cdata);
	}

	

}
