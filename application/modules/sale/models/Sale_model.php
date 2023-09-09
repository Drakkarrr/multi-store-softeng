<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Sale_model extends CI_Model {
 
	public function create()
	{	 
 
        $pq = $this->input->post('product_quantity');
        $sale_id = date('YmdHis');
        $payment_id = date('YmdHs');
	    $invoice_no = $this->input->post('invoice_no');
		$p_id = $this->input->post('product_id');

		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		$gurrantor = $this->input->post('gurrantor_id');
		$gurrantor1=array_shift($gurrantor);
		$gurrantor2=array_pop($gurrantor);
		$installmentamnt= $this->input->post('installment_price');
    	$remainamt= $this->input->post('remaining_amnt');
		$installamnt = (!empty($installmentamnt)? $this->input->post('installment_price'):0);
		$pack_pr= $this->input->post('package_price');
		$package_price = (!empty($pack_pr)? $this->input->post('package_price'):0);
		
		#----------sales entry---------------------#
	   $postparentData = array(
	   	 'sale_id'              =>  $sale_id,
			'invoice_no'			      =>	$invoice_no,
			'customer_id'		        =>	$this->input->post('customer_id'),
			'sale_type_id'	        =>	$this->input->post('sale_type'),
			'store_id'              =>  $this->session->userdata('store_id'),
			'salesman'		          =>	$createby,
			'sales_date'		        =>	$this->input->post('salesdate'),
			'sales_time'            =>  date('H:i:s'),
			'gurrantor_1'           =>  $gurrantor1,
			'gurrantor_2'           =>  $gurrantor2,
			'advance_amnt'          =>  $this->input->post('paid_amount'),
			'lease_id'              =>  $this->input->post('lease_id'),
			'inquiry_officer'       =>  $this->input->post('inquiry'),
			'remaining_amnt'        =>  $remainamt,
			'installment_amnt'      =>  $installamnt,
			'package_price'         =>  $package_price,
			'total_amnt'            =>  $this->input->post('grand_total_price'),
		); 

	 $this->db->insert('sales_parent',$postparentData);
	  
        ///print_r( $postparentData);exit;
	// Find the acc COAID for the store	
	$store_info = $this->db->select('*')->from('store')->where('store_id',$this->session->userdata('store_id'))->get()->row();
	//print_r($store_info);
	$Store_Code = 'Cash-'.$store_info->store_code.'-'.$store_info->store_name;	
	//echo $Store_Code;
	$store_HeadCode = $this->db->select('*')->from('acc_coa')->where('HeadName',$Store_Code)->get()->row();
	//print_r($store_HeadCode);
	$cusifo = $this->db->select('*')->from('customer')->where('customer_id',$this->input->post('customer_id'))->get()->row();
	$headn = $cusifo->customer_code.'-'.$cusifo->customer_name;
	$coainfo = $this->db->select('*')->from('acc_coa')->where('HeadName',$headn)->get()->row();
	$customer_headcode = $coainfo->HeadCode;
	
	if($this->input->post('sale_type')==1){
// Cash sale credit
	  $cc = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  30101,
      'Narration'      =>  'Cash sale credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $this->input->post('grand_total_price'),
      'StoreID'        =>  $this->session->userdata('store_id'),
      'IsPosted'       =>  1,
      'CreateBy'       =>  $createby,
      'CreateDate'     =>  $createdate,
      'IsAppove'       =>  1
    ); 
      // $this->db->insert('acc_transaction',$cc);
// Cash in hand debit
	        $cdv = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $store_HeadCode->HeadCode,
      'Narration'      =>  'Cash in hand debit For Invoice No'.$invoice_no,
      'Debit'          =>  $this->input->post('grand_total_price'),
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
	//  print_r($cdv); exit;
	   $this->db->insert('acc_transaction',$cdv);
          // Cost of sale debit
 	$cosdr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  403,
      'Narration'      =>  'Cost of sale debit For Invoice No'.$invoice_no,
      'Debit'          =>  $sumval,
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$cosdr);

       ///Inventory credit
       $coscr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  10107,
      'Narration'      =>  'Inventory credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $sumval,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$coscr);
	   
	// Customer Transactions
	//Customer debit for Product Value
 	$cosdr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Customer debit for Product For Invoice No'.$invoice_no,
      'Debit'          =>  $this->input->post('grand_total_price'),
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$cosdr);

       ///Customer credit for Paid Amount
       $coscr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Customer credit for Paid Amount For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $this->input->post('grand_total_price'),
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$coscr);
   }

    $prinfo  = $this->db->select('product_id,Avg(product_rate) as product_rate')->from('purchase_receive_details')->where_in('product_id',$p_id)->group_by('product_id')->get()->result();
    $sell_avg = [];
    $i=0;
    foreach ($prinfo as $avg) {
      $sell_avg [] =  $avg->product_rate*$pq[$i];
      $i++;
    }
   $sumval = array_sum($sell_avg);
  
//********* Cash sale end. start Credit sale *****/
  if($this->input->post('sale_type')==2){


// Credit Sale 
       	// Customer credit for paid amount 
	        $crsdb = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CRIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Customer Credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         => $this->input->post('paid_amount'),
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$crsdb);

// Customer Debit for Remaining amount
	        $crscr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CRIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Customer Debit For Invoice No'.$invoice_no,
      'Debit'          =>  $this->input->post('grand_total_price'), // -$this->input->post('paid_amount')
      'Credit'         => 0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
	        $this->db->insert('acc_transaction',$crscr);
	       // Cash in Hand debit for Paid amnt
 $crdrcashinhand = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CRIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $store_HeadCode->HeadCode,
      'Narration'      =>  'Cash in Hand For Invoice No'.$invoice_no,
      'Debit'          =>  $this->input->post('paid_amount'),
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$crdrcashinhand);
       // store credit 
       $crestore = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CRIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  30102,
      'Narration'      =>  'Store credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $this->input->post('grand_total_price'),
      'StoreID'        =>  $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
 $this->db->insert('acc_transaction',$crestore);
//Cost of sale Debit
  $creditcostsdr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  403,
      'Narration'      =>  'Cost of sale Debit For Invoice No'.$invoice_no,
      'Debit'          =>  $sumval,
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 

// Inventory account Credit
       $this->db->insert('acc_transaction',$creditcostsdr);
       $creditcoscr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  10107,
      'Narration'      =>  'Inventory Credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $sumval,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$creditcoscr);

       }
  /***** End Credit sale. start lease sale  *****/     
       if($this->input->post('sale_type')==3){
       	//Customer Accounts credit for paid amount
       	$leassdb = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  $coainfo->HeadName.' Credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         => $this->input->post('paid_amount'),
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$leassdb);

// Customer Debit for Total amount
	        $leasecr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  $coainfo->HeadName.' Debit of Total Package Price For Invoice#'.$invoice_no,
      'Debit'          =>  $package_price,
      'Credit'         => 0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
	        $this->db->insert('acc_transaction',$leasecr);
	       // Cash in Hand debit for Paid amnt
 $leasecashinhand = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $store_HeadCode->HeadCode,
      'Narration'      =>  'Cash In Hand Debit For Lease Invoice No'.$invoice_no,
      'Debit'          =>  $this->input->post('paid_amount'),
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$leasecashinhand);
       // store credit 
       $leasestore = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  30102,
      'Narration'      =>  'Store Credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $package_price,
      'StoreID'        =>  $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
 $this->db->insert('acc_transaction',$leasestore);
// Cost of Sale
  $leasecostsdr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  403,
      'Narration'      =>  'Cost Of Sale Debit For Invoice No'.$invoice_no,
      'Debit'          =>  $sumval,
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$leasecostsdr);
       //Inventory credit
       $leasecoscr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  10107,
      'Narration'      =>  'Inventory Credit For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $sumval,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$leasecoscr);
       }
	      #------------payment collection------------------#
	      $paidamt = $this->input->post('paid_amount');
	      if(!empty($paidamt)){
	      	$pamnt = $this->input->post('paid_amount');
	      }else{
	      	$pamnt = $this->input->post('grand_total_price');
	      }
	      $payment = array(
	   	      'sale_id'       =>  $sale_id,
			'invoice_no'		     	=>	$invoice_no,
			'customer_id'		      =>	$this->input->post('customer_id'),
			'receive_amnt'	      =>	$pamnt,
			'due_amnt'            =>  $this->input->post('remaining_amnt'),
			'receive_by'		      =>	$createby,
			'receive_date'		    =>	$this->input->post('salesdate'),
		); 

	      $this->db->insert('payment_collection',$payment);

	      #---------------sale details ---------------#
	      // gurrantor maping
	   
	      	$gr_id = $this->input->post('gurrantor_id');
	      	for ($i=0, $n=count($gr_id); $i < $n; $i++) {
	      		$gurrntid=$gr_id[$i];
	      	$customr_gurrrantormap= array(
                    'lease_id'     => $this->input->post('lease_id'),
                    'customer_id'  => $this->input->post('customer_id'),
                    'gurrantor_id' => $gurrntid,
					);
			
			 if(!empty($gr_id))
			{
				 $this->db->insert('customer_gurrantor_map',$customr_gurrrantormap);
			}
			}
	      
		$rate = $this->input->post('product_rate');
		$quantity = $this->input->post('product_quantity');
		$t_price = $this->input->post('total_price');
    $lease_u_price = $this->input->post('lease_unit_rate');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_quantity = $quantity[$i];
			$product_rate = $rate[$i];
			$product_id = $p_id[$i];
      $lease_price = $lease_u_price[$i];
			$detailsdata = array(
				'sale_id'         =>	$sale_id,
				'product_id'		  =>	$product_id,
				'qty'			        =>	$product_quantity,
				'sell_price'	    =>	$product_rate,
				'sale_type_id'    =>  $this->input->post('sale_type'),
        'lease_unit_price'=> $lease_price,
			);

			if(!empty($quantity))
			{
				$this->db->insert('sale_details',$detailsdata);
			}
		}
		$accesslog = array(
				'action_page'       =>	'Sales',
				'action_done'	    =>	'create',
				'remarks'		    =>	'invoice_no'.'-'.$invoice_no.' '.'total amount'.'-'.$this->input->post('grand_total_price'),
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
	}

	// cash sale list
	public function read($limit = null, $start = null)
	{
		$this->db->select('*');
		$this->db->from('sales_parent');
		$this->db->where('sale_type_id',1);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('store_id',$this->session->userdata('store_id'));
		}
		$this->db->order_by('sales_date', 'desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 
	// cash sale list
	public function credit_sale($limit = null, $start = null)
	{
		$this->db->select('*');
		$this->db->from('sales_parent');
		$this->db->where('sale_type_id',2);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('store_id',$this->session->userdata('store_id'));
		}
		$this->db->order_by('sales_date', 'desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 
	// lease sale list
	public function lease_sale($limit = null, $start = null)
	{
		$this->db->select('*');
		$this->db->from('sales_parent');
		$this->db->where('sale_type_id',3);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('store_id',$this->session->userdata('store_id'));
		}
		$this->db->order_by('sales_date', 'desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 

	public function findById($id = null)
	{ 
		$this->db->select('sales_parent.*,customer.customer_name,payment_collection.receive_amnt,payment_collection.due_amnt');
		$this->db->from('sales_parent');
		$this->db->join('customer','sales_parent.customer_id=customer.customer_id');
		$this->db->join('payment_collection','sales_parent.sale_id=payment_collection.sale_id');
		$this->db->where('sales_parent.sale_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->row();	
		}
		return false;

	} 
	public function sdetails_view($id = null)
	{ 
		$this->db->select('product.product_name,sale_details.*');
		$this->db->from('sale_details');
		$this->db->join('product','sale_details.product_id=product.product_id');
		$this->db->where('sale_details.sale_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;

	} 
	//cash sale
	public function count_sale()
	{
		$this->db->select('*');
		$this->db->from('sales_parent');
		$this->db->where('sale_type_id',1);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	//cash credit sale
	public function count_credit_sale()
	{
		$this->db->select('*');
		$this->db->from('sales_parent');
		$this->db->where('sale_type_id',2);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}

	//cash lease sale
	public function count_lease_sale()
	{
		$this->db->select('*');
		$this->db->from('sales_parent');
		$this->db->where('sale_type_id',3);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
 
	public function update($data = [])
	{
		return $this->db->where('po_no',$data['po_no'])
			->update('purchase_order',$data); 
	} 


	public function delete($id = null)
	{
		$this->db->where('sale_id',$id)
			->delete('sales_parent');
			$this->db->where('sale_id',$id)
			->delete('sale_details');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

	public function customer()
	{
    $this->db->select('*');
    $this->db->from('customer');
    $this->db->where('isactive',1);
    if($this->session->userdata('isAdmin')==0){
    $this->db->where('store_id',$this->session->userdata('store_id'));
    }
    $data = $this->db->get()->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->customer_id] = $value->customer_name;
			return $list;
		} else {
			return false; 
		}
	}
	// credit customer
	public function cr_customer()
	{
		$data = $this->db->select("*")
			->from('customer')
			->where('isactive', 1) 
			->where('type >', 1)  
			->where('store_id',$this->session->userdata('store_id')) 
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->customer_id] = $value->customer_name;
			return $list;
		} else {
			return false; 
		}
	}
	// lease customer
 public function ls_customer()
	{
		 $this->db->select("*");
		$this->db->from('customer');
		$this->db->where('isactive',1);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('store_id',$this->session->userdata('store_id'));
			}
		$data = $this->db->get()->result();
		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->customer_id] = $value->customer_name;
			return $list;
		} else {
			return false; 
		}
	}
// gurrantor list
   public function ls_gurrantor()
  {
     $this->db->select("*");
    $this->db->from('gurrantor');
    $this->db->where('isactive',1);
    $data = $this->db->get()->result();
    $list[''] = display('select_option');
    if (!empty($data)) {
      foreach($data as $value)
        $list[$value->gurrantor_id] = $value->gurrantor_name;
      return $list;
    } else {
      return false; 
    }
  }
	public function generator($lenth)
	{
		$number=array("1","2","3","4","5","6","7","8","9");
	
		for($i=0; $i<$lenth; $i++)
		{
			$rand_value=rand(0,8);
			$rand_number=$number["$rand_value"];
		
			if(empty($con))
			{ 
			$con=$rand_number;
			}
			else
			{
			$con="$con"."$rand_number";}
		}
		return $con;
	}

	
	//Product search item
	public function product_search_item($product_name){
		$query=$this->db->select('*')
				->from('product')
				->where('isactive',1)
				->like('product_name', $product_name, 'after')
				->group_by('product_id')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
	// lease product search query
	//Product search item
	public function lease_product_search_item($product_name,$lease_id){
		$query=$this->db->select('product.*,lease_product_map.lease_id')
				->from('product')
				->join('lease_product_map','product.product_id=lease_product_map.product_id')
				->where('lease_product_map.lease_id',$lease_id)
				->where('product.isactive',1)
				->like('product.product_name', $product_name, 'after')
				->group_by('product.product_id')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
	// stock available qty
	public function get_total_product($product_id){
	$id = 0;   
        $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem,@cat_id,@brand_id,@model_id)");
		$this->db->select('sum(tmp_store_stock.InQty) as qty');
		$this->db->from('tmp_store_stock');
		$this->db->where('tmp_store_stock.ProdID',$product_id);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('tmp_store_stock.StoreID',$this->session->userdata('store_id'));
		}
		$pur = $this->db->get()->row();

		$this->db->select('sum(tmp_store_stock.OutQty) as sqty');
		$this->db->from('tmp_store_stock');
		$this->db->where('tmp_store_stock.ProdID',$product_id);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('tmp_store_stock.StoreID',$this->session->userdata('store_id'));
		}
		$sal = $this->db->get()->row();		     
						     
		//$sal= $this->db->select('sum(qty) as sqty')->from('sale_details')->where('product_id',$product_id)->get()->row();
        $pro_price = $this->db->select('*')->from('product')->where('product_id',$product_id)->get()->row();
		$available_quantity = $pur->qty-$sal->sqty;
        $price = $pro_price->retail_price;
        $minprice = $pro_price->minimum_price;
        $blocprice = $pro_price->block_price;
		$data2 = array(
			'total_product'  => $available_quantity,
			'price'          => $price,
			'minprice'       => $minprice,
			'blockprice'     => $blocprice,
			);

		return $data2;
	}
	
	// Retrive lease product info
  public function get_lease_product($product_id,$lease_id){
     

$product_package = $this->db->select('*')
                            ->from('product')
                            ->where('product_id',$product_id)
                            ->get()
                            ->row();
  $leaseinf = $this->db->select('*')
                            ->from('lease')
                            ->where('lease_id',$lease_id)
                            ->get()
                            ->row();
                            $advance = $product_package->retail_price*$leaseinf->advance;
                            $markup = ($product_package->retail_price-$advance)*$leaseinf->markup;
                            $pakprice = $product_package->retail_price+$markup;                        
//print_r($product_package);
$product_package->retail_price;
      $id = 0;   
        $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem,@cat_id,@brand_id,@model_id)");
    $this->db->select('sum(tmp_store_stock.InQty) as qty');
    $this->db->from('tmp_store_stock');
    $this->db->where('tmp_store_stock.ProdID',$product_id);
    if($this->session->userdata('isAdmin')==0){
    $this->db->where('tmp_store_stock.StoreID',$this->session->userdata('store_id'));
    }
    $pur = $this->db->get()->row();

   $this->db->select('sum(tmp_store_stock.OutQty) as sqty');
    $this->db->from('tmp_store_stock');
    $this->db->where('tmp_store_stock.ProdID',$product_id);
    if($this->session->userdata('isAdmin')==0){
    $this->db->where('tmp_store_stock.StoreID',$this->session->userdata('store_id'));
    }
    $sal = $this->db->get()->row();           
                 
    //$sal= $this->db->select('sum(qty) as sqty')->from('sale_details')->where('product_id',$product_id)->get()->row();
        $pro_price = $this->db->select('*')->from('product')->where('product_id',$product_id)->get()->row();
 // $id = 0;   
 //        $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem)");
 //    return $testquery = $this->db->select('tmp_store_stock.*,store.store_name,product.*')
 //                          ->from('tmp_store_stock')
 //                          ->join('store','tmp_store_stock.StoreID=store.store_id')
 //                          ->join('product','tmp_store_stock.ProdID=product.product_id')
 //                          ->get()
 //                          ->result_array();






    $available_quantity = $pur->qty-$sal->sqty;
        $price = $pro_price->retail_price;
        $minprice = $pro_price->minimum_price;
        $blocprice = $pro_price->block_price;
    $data2 = array(
      'total_product'  => $available_quantity,
      'price'          => $pakprice,
      'minprice'       => $minprice,
      'blockprice'     => $blocprice,
      'adv'            => $advance,
      'retprice'       => $product_package->retail_price,
      );

    return $data2;
  }

	//sales update
	public function update_sale()
	{	 
        $sale_id =  $this->input->post('sale_id');
	    $invoice_no = $this->input->post('invoice_no');
	    $salesman  =$this->input->post('sales_man');
		$p_id = $this->input->post('product_id');
		$updateby=$this->session->userdata('id');
		$updatedate=date('Y-m-d H:i:s');
		
		#----------sales entry---------------------#
	   $postData = array(
	   	      'sale_id'             =>  $sale_id,
			'invoice_no'			=>	$invoice_no,
			'customer_id'		    =>	$this->input->post('customer_id'),
			'sale_type_id'	        =>	$this->input->post('sale_type'),
			'store_id'              =>  $this->session->userdata('store_id'),
			'salesman'		        =>	$salesman,
			'sales_date'		    =>	$this->input->post('salesdate'),
			'sales_time'            =>  date('H:i:s'),
			'advance_amnt'          =>  $this->input->post('advance_amount'),
			'lease_id'              =>  $this->input->post('lease_id'),
			'inquiry_officer'       =>  $this->input->post('inquiry'),
			'total_amnt'            =>  $this->input->post('grand_total_price'),
			'updateby'              =>  $updateby,
			'updatedate'            =>  $updatedate,
		); 
	      $this->db->where('sale_id',$sale_id)
			->update('sales_parent',$postData); 
	      #------------payment collection------------------#
	      $paidamt = $this->input->post('paid_amount');
		  $pamnt = (!empty($paidamt)? $this->input->post('paid_amount'):$this->input->post('grand_total_price'));
	      $payment = array(
	   	      'sale_id'             =>  $sale_id,
			'invoice_no'			=>	$invoice_no,
			'customer_id'		    =>	$this->input->post('customer_id'),
			'receive_amnt'	        =>	$pamnt,
			'due_amnt'              =>  $this->input->post('remaining_amnt'),
			'receive_by'		    =>	$updateby,
			'payment_date'		    =>	$this->input->post('salesdate'),
		); 

	       $this->db->where('sale_id',$sale_id)
			->update('payment_collection',$payment); 

	      #---------------sale details ---------------#

         $this->db->where('sale_id',$sale_id)
			->delete('sale_details');

		$rate = $this->input->post('product_rate');
		$quantity = $this->input->post('product_quantity');
		$t_price = $this->input->post('total_price');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_quantity = $quantity[$i];
			$product_rate = $rate[$i];
			$product_id = $p_id[$i];
			$data = array(
				'sale_id'           =>	$sale_id,
				'product_id'		=>	$product_id,
				'qty'			    =>	$product_quantity,
				'sell_price'	    =>	$product_rate,
				'sale_type_id'      =>  $this->input->post('sale_type')
			);

			if(!empty($quantity))
			{
				$this->db->insert('sale_details',$data);
			}
		}
		$accesslog = array(
				'action_page'       =>	'Sales',
				'action_done'	    =>	'update',
				'remarks'		    =>	'invoice_no'.'-'.$invoice_no.' '.'total amount'.'-'.$this->input->post('grand_total_price'),
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
	}


	//lease 
	public function leaseinf()
	{
		$this->db->select("lease.*,lease_store_map.store_id");
		$this->db->from('lease');
		$this->db->join('lease_store_map','lease.lease_id=lease_store_map.lease_id');
		$this->db->where('lease.isactive', 1);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('lease_store_map.store_id',$this->session->userdata('store_id'));
			}
		$data = $this->db->get()->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->lease_id] = $value->package_name;
			return $list;
		} else {
			return false; 
		}
	}
// inquiry list 
	public function inquiry()
	{
		$this->db->select("*");
		$this->db->from('user');
		$this->db->where('status',1);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('store_id',$this->session->userdata('store_id'));
			}
		$data = $this->db->get()->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->firstname.' '.$value->lastname;
			return $list;
		} else {
			return false; 
		}
	}
	// store information
	public function storinfo($id = null)
	{ 
		$this->db->select('*');
		$this->db->from('store');
		$this->db->where('store_id',$this->session->userdata('store_id'));
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->row();	
		}
		return false;

	} 


	public function create_gurrantor($data = [])
	{	 
		 $this->db->insert('gurrantor',$data);
		return true;
	}
// customer create
	public function create_customer($data = [])
	{	 
		 $this->db->insert('customer',$data);
		return true;
	}
	// Coa Insert data
public function create_coa($data = [])
	{
		 $this->db->insert('acc_coa',$data);
		 return true;
	}

	//Check Coa  headcode
	public function headcode(){

        $query=$this->db->query("SELECT MAX(HeadCode) as HeadCode FROM acc_coa WHERE HeadLevel='4' And HeadCode LIKE '1020301%'");
        return $query->row();

    }

    // lease sale Update 
    public function lease_update()
  {  
  	// Find the acc COAID for the store	
	$store_info = $this->db->select('*')->from('store')->where('store_id',$this->session->userdata('store_id'))->get()->row();
	$Store_Code = 'Cash-'.$store_info->store_code.'-'.$store_info->store_name;	
	$store_HeadCode = $this->db->select('*')->from('acc_coa')->where('HeadName',$Store_Code)->get()->row();
	// Find the acc COAID for the customer	
	$cusifo = $this->db->select('*')->from('customer')->where('customer_id',$this->input->post('customer_id'))->get()->row();
	$headn = $cusifo->customer_code.'-'.$cusifo->customer_name;
	$coainfo = $this->db->select('*')->from('acc_coa')->where('HeadName',$headn)->get()->row();
	$customer_headcode = $coainfo->HeadCode;
	
    $pq = $this->input->post('product_quantity');
    $sale_id =  $this->input->post('sale_id');
    $payment_id = date('YmdHs');
    $invoice_no = $this->input->post('invoice_no');
    $p_id = $this->input->post('product_id');
    $prinfo  = $this->db->select('product_id,Avg(product_rate) as product_rate')->from('purchase_receive_details')->where_in('product_id',$p_id)->group_by('product_id')->get()->result();
    $sell_avg = [];
    $i=0;
    foreach ($prinfo as $avg) {
      $sell_avg [] =  $avg->product_rate*$pq[$i];
      $i++;
    }
   $sumval = array_sum($sell_avg);

    $createby=$this->session->userdata('id');
    $createdate=date('Y-m-d H:i:s');
    $gurrantor1=$this->input->post('gurrantor_1');
    $gurrantor2=$this->input->post('gurrantor_2');
    $installmentamnt= $this->input->post('installment_price');
    $remainamt= $this->input->post('remaining_amnt');
    $installamnt = (!empty($installmentamnt)? $this->input->post('installment_price'):0);
    $pack_pr= $this->input->post('package_price');
    $package_price = (!empty($pack_pr)? $this->input->post('package_price'):0);
    
    #----------sales entry---------------------#
     $postData = array(
      'sale_id'               =>  $sale_id,
      'invoice_no'            =>  $invoice_no,
      'customer_id'           =>  $this->input->post('customer_id'),
      'sale_type_id'          =>  $this->input->post('sale_type'),
      'store_id'              =>  $this->session->userdata('store_id'),
      'salesman'              =>  $createby,
      'sales_date'            =>  $this->input->post('salesdate'),
      'sales_time'            =>  date('H:i:s'),
      'gurrantor_1'           =>  $gurrantor1,
      'gurrantor_2'           =>  $gurrantor2,
      'advance_amnt'          =>  $this->input->post('paid_amount'),
      'lease_id'              =>  $this->input->post('lease_id'),
      'inquiry_officer'       =>  $this->input->post('inquiry'),
      'remaining_amnt'        =>  $remainamt,
      'installment_amnt'      =>  $installamnt,
      'package_price'         =>  $package_price,
      'total_amnt'            =>  $this->input->post('grand_total_price'),
    ); 

   $this->db->where('VNo',$invoice_no)
            ->delete('acc_transaction');
    $this->db->where('sale_id',$sale_id)
            ->delete('sales_parent');
    $this->db->where('sale_id',$sale_id)
            ->delete('sale_details');
    $this->db->where('invoice_no',$invoice_no)
            ->delete('payment_collection');
    $this->db->insert('sales_parent',$postData);
    //Lease Sale for Accounts
        $leassdb = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Customer Debit For Lease Sale Invoice No'.$invoice_no,
      'Debit'          =>  $this->input->post('paid_amount'),
      'Credit'         => 0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$leassdb);

// Customer Credit
          $leasecr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Customer Credit paid amount For Lease Sale Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         => $package_price,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
          $this->db->insert('acc_transaction',$leasecr);
         // Cash in Hand debit
 $leasecashinhand = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  $store_HeadCode->HeadCode,
      'Narration'      =>  'Cash in Hand debit For Lease Sale Invoice No'.$invoice_no,
      'Debit'          =>  $this->input->post('paid_amount'),
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$leasecashinhand);
       // store credit 
       $leasestore = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  30102,
      'Narration'      =>  'LSIV For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $package_price,
      'StoreID'        =>  $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
 $this->db->insert('acc_transaction',$leasestore);

  $leasecostsdr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  403,
      'Narration'      =>  'LSIV For Invoice No'.$invoice_no,
      'Debit'          =>  $sumval,
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$leasecostsdr);
       $leasecoscr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'LSIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  10107,
      'Narration'      =>  'LSIV For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $sumval,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 


       $this->db->insert('acc_transaction',$leasecoscr);

        #------------payment collection------------------#
        $paidamt = $this->input->post('paid_amount');
        if(!empty($paidamt)){
          $pamnt = $this->input->post('paid_amount');
        }else{
          $pamnt = $this->input->post('grand_total_price');
        }
        $payment = array(
      'sale_id'           =>  $sale_id,
      'invoice_no'        =>  $invoice_no,
      'customer_id'       =>  $this->input->post('customer_id'),
      'receive_amnt'      =>  $pamnt,
      'due_amnt'          =>  $this->input->post('remaining_amnt'),
      'receive_by'        =>  $createby,
      'receive_date'      =>  $this->input->post('salesdate'),
    ); 

        $this->db->insert('payment_collection',$payment);  
    $rate = $this->input->post('product_rate');
    $quantity = $this->input->post('product_quantity');
    $t_price = $this->input->post('total_price');
    $lease_u_price = $this->input->post('lease_unit_rate');
    for ($i=0, $n=count($p_id); $i < $n; $i++) {
      $product_quantity = $quantity[$i];
      $product_rate = $rate[$i];
      $product_id = $p_id[$i];
      $lease_price = $lease_u_price[$i];
      $data = array(
        'sale_id'         =>  $sale_id,
        'product_id'      =>  $product_id,
        'qty'             =>  $product_quantity,
        'sell_price'      =>  $product_rate,
        'sale_type_id'    =>  $this->input->post('sale_type'),
        'lease_unit_price'=> $lease_price,
      );

      if(!empty($quantity))
      {
        $this->db->insert('sale_details',$data);
      }
    }
    $accesslog = array(
        'action_page'       =>  'Sales',
        'action_done'     =>  'update',
        'remarks'       =>  'invoice_no'.'-'.$invoice_no.' '.'total amount'.'-'.$this->input->post('grand_total_price'),
        'user_name'     =>   $this->session->userdata('id'),
        'entry_date'      =>  date('Y-m-d H:i:s')
      );
    $this->db->insert('accesslog',$accesslog);
    return true;
  }
	
}
