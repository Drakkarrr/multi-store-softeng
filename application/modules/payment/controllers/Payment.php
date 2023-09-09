<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payment extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'payment_model'
		));	
		
		// Find the acc COAID for the store	
		$store_info = $this->db->select('*')->from('store')->where('store_id',$this->session->userdata('store_id'))->get()->row();
		$Store_Code = 'Cash-'.$store_info->store_code.'-'.$store_info->store_name;	
		$store_HeadCode = $this->db->select('*')->from('acc_coa')->where('HeadName',$Store_Code)->get()->row();
	 	$store_COAID = $store_HeadCode->HeadCode;
	}
 
	public function index()
	{   
		 $this->permission->module('payment','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('payment/payment/index');
        $config["total_rows"]  = $this->payment_model->count_payment();
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
        $data["payments"] = $this->payment_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
		$data['module'] = "payment";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	} 
// recovery list
	public function recovery_list()
	{   
		 $this->permission->module('payment','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('payment/payment/recovery_list');
        $config["total_rows"]  = $this->payment_model->count_recovery_payment();
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
        $data["payments"] = $this->payment_model->recovery_list($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
		$data['module'] = "payment";
		$data['page']   = "recovery_view";   
		echo Modules::run('template/layout', $data); 
	} 

 
	public function view($id = null)
	{  
        $this->permission->module('payment','read')->redirect();

		$data['title'] = display('payment_information');
		#-------------------------------#
		#check payment is already checked  
		if ($this->payment_model->check_exists($id) === true) {
			//update checked and checked_by field
			$this->payment_model->update([
				'id'         => $id,
				'checked' 	 => 1,
				'checked_by' => $this->session->userdata('id'),
			]);
		}
		#-------------------------------#
		$data['payment'] = $this->payment_model->read_by_id($id);

		$data['module'] = "payment";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	} 


	public function create($id = null)
	{ 
		$this->permission->module('payment','create')->redirect();
		$data['title'] = display('payment');
		#-------------------------------#
		$this->form_validation->set_rules('customer_id',display('customer_id')  ,'required');
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d');

		$cusifo = $this->db->select('*')->from('customer')->where('customer_id',$this->input->post('customer_id'))->get()->row();
		$headn = $cusifo->customer_code.'-'.$cusifo->customer_name;
		$coainfo = $this->db->select('*')->from('acc_coa')->where('HeadName',$headn)->get()->row();
		$customer_headcode = $coainfo->HeadCode;
		#-------------------------------#
		$data['payment_data'] = (Object) $postData = [
			    'id'         => $this->input->post('id'),
				'invoice_no'   => $this->input->post('invoice_no'),
				'customer_id'  => $this->input->post('customer_id'),
				'receive_amnt'    => $this->input->post('paid_amnt'),
			     'receive_date'    => $createdate,
				'receive_by'    => $createby
			]; 
		#-------------------------------#
		if ($this->form_validation->run()) { 

			if (empty($postData['id'])) {

        		$this->permission->method('payment','create')->redirect();

				if ($this->payment_model->create($postData)) { 
					$id = $this->db->insert_id();
		//Store cashinhand Debit
		$cashinhand = array(
		  'VNo'            =>  $this->input->post('invoice_no'),
		  'Vtype'          =>  'RECVIV',
		  'VDate'          =>  $createdate,
		  'COAID'          =>  $store_COAID,
		  'Narration'      =>  'Credit Receive For Invoice No'.$this->input->post('invoice_no'),
		  'Debit'          =>  $this->input->post('paid_amnt'),
		  'Credit'         =>  0,
		  'StoreID'        => $this->session->userdata('store_id'),
		  'IsPosted'       => 1,
		  'CreateBy'       => $createby,
		  'CreateDate'     => $createdate,
		  'IsAppove'       => 1
		); 
		  $this->db->insert('acc_transaction',$cashinhand);
		  // Customer Credit 
		  $customerrcbdb = array(
		  'VNo'            =>  $this->input->post('invoice_no'),
		  'Vtype'          =>  'RECVIV',
		  'VDate'          =>  $createdate,
		  'COAID'          =>  $customer_headcode,
		  'Narration'      =>  'Credit Paid For Invoice No'.$this->input->post('invoice_no'),
		  'Debit'          =>  0,
		  'Credit'         => $this->input->post('paid_amnt'),
		  'StoreID'        => $this->session->userdata('store_id'),
		  'IsPosted'       => 1,
		  'CreateBy'       => $createby,
		  'CreateDate'     => $createdate,
		  'IsAppove'       => 1
		); 
		   $this->db->insert('acc_transaction',$customerrcbdb);
		   
		$accesslog = array(
				'action_page'       =>	'payment',
				'action_done'	    =>	'create',
				'remarks'		    =>	'payment ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
		$this->session->set_flashdata('message', display('save_successfully'));
	} 
	else {
		$this->session->set_flashdata('exception',  display('please_try_again'));
	}
				redirect("payment/payment/create");

			} else {

        		$this->permission->method('payment','update')->redirect();

				if ($this->payment_model->update($postData)) { 
					$accesslog = array(
				'action_page'       =>	'payment',
				'action_done'	    =>	'update',
				'remarks'		    =>	'payment ID :'.$postData['id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("payment/payment/create/".$postData['id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['payment']   = $this->payment_model->findById($id);
			}
			   $data['module'] = "payment";
			   $data['page']   = "form";     
			echo Modules::run('template/layout', $data); 
		}   
	}


	public function delete($id = null) 
	{ 
        $this->permission->module('payment','delete')->redirect();

		if ($this->payment_model->delete($id)) {
			#set success message
			$accesslog = array(
				'action_page'       =>	'payment',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'payment ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('payment/payment/index');
	}
	 

	 public function isactive($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'id'     => $id,
			'isactive' => $action
		);

		if ($this->payment_model->update($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

	// payment information
	public function invoice_search(){

		$invoice_no 	= $this->input->post('invoice_no');
       	$invoice_info 	= $this->payment_model->invoice_src($invoice_no);
		$list[''] = '';
		foreach ($invoice_info as $value) {
			$json_invoice[] = array('label'=>$value['invoice_no'],'value'=>$value['invoice_no']);
		} 
		
        echo json_encode($json_invoice);
	}

		public function retrieve_invoice_data()
	{	
		$invoice_no = $this->input->post('invoice_no');
		$invoice_info = $this->payment_model->get_invoice_data($invoice_no);

		echo json_encode($invoice_info);
	}
	//recovery_create
	public function recovery_create($id = null)
	{ 
		$this->permission->module('payment','create')->redirect();
		$data['title'] = display('recovery_received');
		#-------------------------------#
		$this->form_validation->set_rules('customer_id',display('customer_id')  ,'required');
		$createby=$this->session->userdata('id');
  
		if(!empty($this->input->post('leasefull_paid'))){
			$receive_amount = $this->input->post('final_installment');
		}else{
			$receive_amount = $this->input->post('paid_amnt');
		}
		$createdate=date('Y-m-d');
		#-------------------------------#
		$data['payment_data'] = (Object) $postData = [
			    'id'           => $this->input->post('id'),
				'invoice_no'   => $this->input->post('invoice_no'),
				'customer_id'  => $this->input->post('customer_id'),
				'receive_amnt' =>$receive_amount,
			    'receive_date' => $createdate,
				'receive_by'   => $createby,
				'is_installment'=> 1
			]; 


// Recovery first Date
			$inf = $this->db->select('sales_parent.*,payment_collection.*,sum(receive_amnt) as totalreceive')
			                ->from('sales_parent')
			                ->join('payment_collection','sales_parent.invoice_no=payment_collection.invoice_no')
			                ->where('sales_parent.invoice_no',$this->input->post('invoice_no'))
			                ->where('payment_collection.is_installment',1)
			                ->get()
			                ->row();
		   $salesdate = strtotime($inf->sales_date);
           $istallduration = '+'.$acc['lease_duration'].' '.'month';
           $firstinstallment = date("Y-m-d", strtotime("+1 month", $salesdate));
           $nummonth = "+".$acc['lease_duration']." "."month";
           $lastinstallment = date("Y-m-d", strtotime($nummonth, $salesdate));
           $currentdate = date('Y-m-d');
           $date1=$inf->sales_date;
           $date2=date('Y-m-d');
           $date_diff=strtotime($date2)-strtotime($date1);
           $total_acc = floor(($date_diff)/2628000);
           $overdues = ($total_acc*$inf->installment_amnt)-$inf->totalreceive;
// if(!empty($this->input->post('invoice_no'))){
//  print_r($overdues);exit;
// 			}
           if($this->input->post('paid_amnt')-$this->input->post('installment_amount')>0){
           	$surplus =$this->input->post('paid_amnt')-$this->input->post('installment_amount');
           }else{
           		$surplus =0;
           }
           
			 $customer_recovery = [
			    'customer_id'  => $this->input->post('customer_id'),
				'installment'  => $this->input->post('installment_amount'),
				'recovery'     => $this->input->post('paid_amnt'),
				'surplus'      => $this->input->post('paid_amnt')-$this->input->post('installment_amount'),
			    'Deficit'      => $this->input->post('installment_amount')-$this->input->post('paid_amnt'),
				'Overdue'      => $overdues-$this->input->post('paid_amnt'),
				'Invoice_no' => $this->input->post('invoice_no'),
				'store_id'   => $inf->store_id,
				'surplus'    => $surplus,
				'Deficit'    => $this->input->post('installment_amount')-$this->input->post('paid_amnt')
			]; 
			//$this->db->insert('customer_overdue',$customer_recovery);
		#-------------------------------#
			$lease_settled = array(
			'invoice_no'        => $this->input->post('invoice_no'),
			'is_lease_settled'  => 1
		);
			if(!empty($this->input->post('leasefull_paid')) OR $this->input->post('paid_amnt')==$this->input->post('final_installment')){
			$this->db->where('invoice_no',$this->input->post('invoice_no'))
			->update('sales_parent',$lease_settled); 
			}

		if ($this->form_validation->run()) { 
			//print_r($receive_amount);exit;

			$cusifo = $this->db->select('*')->from('customer')->where('customer_id',$this->input->post('customer_id'))->get()->row();
			$headn = $cusifo->customer_code.'-'.$cusifo->customer_name;
			$coainfo = $this->db->select('*')->from('acc_coa')->where('HeadName',$headn)->get()->row();
			$customer_headcode = $coainfo->HeadCode;

			if (empty($postData['id'])) {

        		$this->permission->method('payment','create')->redirect();

				if ($this->payment_model->create($postData)) { 
					$id = $this->db->insert_id();
	
 // Store Cash in Hand Debit 
	$leasecashinhand = array(
      'VNo'            =>  $this->input->post('invoice_no'),
      'Vtype'          =>  'RECVIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $store_COAID,
      'Narration'      =>  'Recovery Receive For Invoice No'.$this->input->post('invoice_no'),
      'Debit'          =>  $receive_amount,
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
      $this->db->insert('acc_transaction',$leasecashinhand);
      // Customer Credit 
	        $lscustomerrcbdb = array(
      'VNo'            =>  $this->input->post('invoice_no'),
      'Vtype'          =>  'RECVIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Recovery Paid For Invoice No'.$this->input->post('invoice_no'),
      'Debit'          =>  0,
      'Credit'         => $receive_amount,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$lscustomerrcbdb);

    // if Lease Settlement is checked
    if(!empty($this->input->post('leasefull_paid'))){
    // Discount account Credit 
	$dcc = array(
      'VNo'            =>  $this->input->post('invoice_no'),
      'Vtype'          =>  'RECVIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  404,
      'Narration'      =>  'Settlement Discount For Invoice# '.$this->input->post('invoice_no').' to '.$customer_headcode,
      'Debit'          =>  0,
      'Credit'         => $this->input->post('installment_discount'),
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
    
    // Discounted Amnt Credited to Customer Balance
     $dc = array(
      'VNo'            =>  $this->input->post('invoice_no'),
      'Vtype'          =>  'RECVIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Discounted Amount Credited to Customer Balance For Invoice# '.$this->input->post('invoice_no'),
      'Debit'          =>  0,
      'Credit'         => $this->input->post('installment_discount'),
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
     
       $this->db->insert('acc_transaction',$dcc);
       $this->db->insert('acc_transaction',$dc);

       }
					$accesslog = array(
				'action_page'       =>	'recovery',
				'action_done'	    =>	'create',
				'remarks'		    =>	'payment ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("payment/payment/recovery_create");

			} else {

        		$this->permission->method('payment','update')->redirect();

				if ($this->payment_model->update($postData)) { 
					$accesslog = array(
				'action_page'       =>	'recovery',
				'action_done'	    =>	'update',
				'remarks'		    =>	'payment ID :'.$postData['id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("payment/payment/recovery_create/".$postData['id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['payment']   = $this->payment_model->findById($id);
			}
			   $data['module'] = "payment";
			   $data['page']   = "recovery_form";     
			echo Modules::run('template/layout', $data); 
		}   
	}

	// lease invoice auto suggestion
	public function lease_invoice_search(){

		$invoice_no 	= $this->input->post('invoice_no');
       	$invoice_info 	= $this->payment_model->ls_invoice_src($invoice_no);
		$list[''] = '';
		foreach ($invoice_info as $value) {
			$json_invoice[] = array('label'=>$value['invoice_no'],'value'=>$value['invoice_no']);
		} 
		
        echo json_encode($json_invoice);
	}
	// auto retrieve recovery data
		public function retrieve_recovery_data()
	{	
		$invoice_no = $this->input->post('invoice_no');
		$invoice_info = $this->payment_model->get_recovery_data($invoice_no);

		echo json_encode($invoice_info);
	}
	// date between information for recovery
	public function date_between_recovery(){
	    $data["payments"] = $this->payment_model->monthly_installment_report();
	    $data['total']  = $this->payment_model->calculate_grand_total_amount();
		$data['module'] = "payment";
		$data['page']   = "recovery_monthly_report";   
		echo Modules::run('template/layout', $data); 
		}



// date between information for recovery
	public function overdue_info(){
	    $this->permission->module('payment','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('payment/payment/overdue_info');
        $config["total_rows"]  = $this->payment_model->count_customer_overdue();
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
        $data["links"] = $this->pagination->create_links(); 
		$data['module'] = "payment";
		$data['y']    = date('Y');
		$data['m']     = 7;
		$data['d']     = 25;
		$data['info']  = $this->payment_model->customer_over_due_info($config["per_page"], $page);
		$data['page']   = "overdue_customer_report";   
		echo Modules::run('template/layout', $data); 
		}



}
