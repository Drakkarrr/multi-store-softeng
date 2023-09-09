<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Return_model extends CI_Model {
 

	// Sale return form info
	public function sales_return($invoice_no = null){
		$this->db->select('product.*,sale_details.*');
		$this->db->from('sale_details');
		$this->db->join('sales_parent','sale_details.sale_id=sales_parent.sale_id');
		$this->db->join('product','sale_details.product_id=product.product_id');
		$this->db->where('sales_parent.invoice_no',$invoice_no);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
	// Sales Return info
	public function sales_return_info($invoice_no = null){
		return $sale_info = $this->db->select('sales_parent.*,store.store_name,customer.customer_name')
		                      ->from('sales_parent')
		                      ->join('store','sales_parent.store_id=store.store_id')
		                      ->join('customer','sales_parent.customer_id=customer.customer_id')
		                      ->where('sales_parent.invoice_no',$invoice_no)
		                      ->get()
		                      ->row();

	}
	// sales return insert info
	public function insert_salse_return(){
        $invoice_no =  $this->input->post('invoice_no');
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
			 $postData = array(
			'invoice_no'			=>	$invoice_no,
			'customer_id'		    =>	$this->input->post('customer_id'),
			'store_id'              =>  $this->input->post('store_id'),
			'sale_type_id'          =>  $this->input->post('sale_type_id'),
			'return_date'           =>  $this->input->post('return_date'),
			'totalamount'           =>  $this->input->post('grand_total_price'),
			'return_reason'         =>  $this->input->post('reason'),
			'createby'		        =>	$createby,
			'createdate'		    =>	$createdate
		); 

			// print_r($postData);exit;
	$this->db->insert('sales_return',$postData);
	     $id = $this->db->insert_id();

	     $p_id = $this->input->post('product_id');
		$rate = $this->input->post('product_rate');
		$quantity = $this->input->post('total_qntt');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_quantity = $quantity[$i];
			$product_rate = $rate[$i];
			$product_id = $p_id[$i];
			$data = array(
				'sreturn_id'        => $id,
				'product_id'		=>	$product_id,
				'qty'			    =>	$product_quantity,
				'product_rate'	    =>	$product_rate
			);
			$this->db->insert('sales_return_details',$data);
	}

		$prinfo  = $this->db->select('product_id,Avg(product_rate) as product_rate')->from('purchase_receive_details')->where_in('product_id',$p_id)->group_by('product_id')->get()->result();
		$sell_avg = [];
		$i=0;
		foreach ($prinfo as $avg) {
			$sell_avg [] =  $avg->product_rate*$pq[$i];
			$i++;
		}
	 $sumval = array_sum($sell_avg);

$cusifo = $this->db->select('*')->from('customer')->where('customer_id',$this->input->post('customer_id'))->get()->row();
  $headn = $cusifo->customer_code.'-'.$cusifo->customer_name;
  $coainfo = $this->db->select('*')->from('acc_coa')->where('HeadName',$headn)->get()->row();
  $customer_headcode = $coainfo->HeadCode;
  // customer Debit
	        $cusDebit = array(
      'VNo'            =>  $id,
      'Vtype'          =>  'RT',
      'VDate'          =>  $createdate,
      'COAID'          =>  $customer_headcode,
      'Narration'      =>  'Receive For '.$id,
      'Debit'          =>  $this->input->post('grand_total_price'),
      'Credit'         =>  0,
      'StoreID'        =>  $this->input->post('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
	        //print_r($cusDebit);exit;
       $this->db->insert('acc_transaction',$cusDebit);
// Cost of sale credit
       $coscr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'RT',
      'VDate'          =>  $createdate,
      'COAID'          =>  403,
      'Narration'      =>  'RT For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $sumval,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       $this->db->insert('acc_transaction',$coscr);
// Inventory debit
          $inventorydr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'RT',
      'VDate'          =>  $createdate,
      'COAID'          =>  10107,
      'Narration'      =>  'RT For Invoice No'.$invoice_no,
      'Debit'          =>  $sumval,
      'Credit'         =>  0,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 

       $this->db->insert('acc_transaction',$inventorydr);
// Cash in hand credit
        $cashincr = array(
      'VNo'            =>  $invoice_no,
      'Vtype'          =>  'CIV',
      'VDate'          =>  $createdate,
      'COAID'          =>  1020101,
      'Narration'      =>  'CIV For Invoice No'.$invoice_no,
      'Debit'          =>  0,
      'Credit'         =>  $this->input->post('grand_total_price'),
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
	        $this->db->insert('acc_transaction',$cashincr);
	return true;
}
public function supplier()
	{
		$data = $this->db->select("*")
			->from('supplier')
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->supplier_id] = $value->supplier_name;
			return $list;
		} else {
			return false; 
		}
	}
	// purchase return info
	public function pur_return_info($supplier_id = null){
		return $this->db->select("purchase_receive.*,supplier.*")
		    ->from("purchase_receive")
		    ->join('supplier','purchase_receive.supplier_id=supplier.supplier_id')
			->order_by('purchase_receive.receive_date', 'desc')
			->where('purchase_receive.supplier_id',$supplier_id)
			->group_by('purchase_receive.voucher_no')
			->get()
			->result();
	}

	public function purchase_return($voucher_no)
	{
		$this->db->select('product.*,purchase_receive_details.*,store.store_name');
		$this->db->from('purchase_receive_details');
		$this->db->join('purchase_receive','purchase_receive_details.receive_id=purchase_receive.receive_id');
		$this->db->join('product','purchase_receive_details.product_id=product.product_id');
		$this->db->join('store','purchase_receive_details.store_id=store.store_id');
		$this->db->where('purchase_receive.voucher_no',$voucher_no);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}

	public function purchase_returninfo($voucher_no)
	{
		$this->db->select('purchase_receive.*,supplier.*');
		$this->db->from('purchase_receive');
		$this->db->join('supplier','purchase_receive.supplier_id=supplier.supplier_id');
		$this->db->where('purchase_receive.voucher_no',$voucher_no);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->row();	
		}
		return false;
	}
	// purchase return insert
	public function pur_return_insert(){
       $po_no =  $this->input->post('po_no');
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
			 $postData = array(
			'po_no'			        =>	$po_no,
			'supplier_id'		    =>	$this->input->post('supplier_id'),
			'return_date'           =>  $this->input->post('return_date'),
			'totalamount'           =>  $this->input->post('grand_total_price'),
			'return_reason'         =>  $this->input->post('reason'),
			'createby'		        =>	$createby,
			'createdate'		    =>	$createdate
		); 
$grand_total_price=$this->input->post('grand_total_price');
			 // print_r($postData);exit;
	$this->db->insert('purchase_return',$postData);
	     $id = $this->db->insert_id();
         $str_id = $this->input->post('store_id');
	     $p_id = $this->input->post('product_id');
	     $pq = $this->input->post('total_qntt');
	      $pinfo  = $this->db->select('product_id,Avg(product_rate) as product_rate')->from('purchase_receive_details')->where_in('product_id',$p_id)->group_by('product_id')->get()->result();
		$sell_avg = [];
		$i=0;
		foreach ($pinfo as $avg) {
			$sell_avg [] =  $avg->product_rate*$pq[$i];
			$i++;
		}
	 $sumpr = array_sum($sell_avg);
		$rate = $this->input->post('product_rate');
		$quantity = $this->input->post('total_qntt');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_quantity = $quantity[$i];
			$product_rate = $rate[$i];
			$product_id = $p_id[$i];
			$store_id = $str_id[$i];
			$data = array(
				'preturn_id'        => $id,
				'product_id'		=>	$product_id,
				'qty'			    =>	$product_quantity,
				'store_id'          =>  $store_id,
				'product_rate'	    =>	$product_rate,
			);
        
			$this->db->insert('purchase_return_details',$data);
	}
$supinfo =$this->db->select('*')->from('supplier')->where('supplier_id',$this->input->post('supplier_id'))->get()->row();
$sup_head = $supinfo->supplier_code.'-'.$supinfo->supplier_name;

$sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();
//print_r($sup_coa->HeadCode);exit;
// supplier debit
	    $supdr = array(
      'VNo'            =>  $po_no,
      'Vtype'          =>  'PO',
      'VDate'          =>  $createdate,
      'COAID'          =>  $sup_coa->HeadCode,
      'Narration'      =>  'P Return For '.$po_no,
      'Debit'          =>  $grand_total_price,
      'Credit'         =>  0,
      'StoreID'        =>  $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
	       //print_r($supdr);exit;
       $this->db->insert('acc_transaction',$supdr);
// inventory credit
   
    ///Inventory credit
       $coscr = array(
      'VNo'            =>  $po_no,
      'Vtype'          =>  'PO',
      'VDate'          =>  $createdate,
      'COAID'          =>  10107,
      'Narration'      =>  'Purchase Return For PO No'.$po_no,
      'Debit'          =>  0,
      'Credit'         =>  $grand_total_price,
      'StoreID'        => $this->session->userdata('store_id'),
      'IsPosted'       => 1,
      'CreateBy'       => $createby,
      'CreateDate'     => $createdate,
      'IsAppove'       => 1
    ); 
       //print_r($coscr);exit;
       $this->db->insert('acc_transaction',$coscr);
	return true;
	}

	public function s_return_list($limit = null, $start = null)
	{
		$this->db->select('sales_return.*,customer.customer_name,store.store_name');
		$this->db->from('sales_return');
		$this->db->join('customer','sales_return.customer_id=customer.customer_id');
		$this->db->join('store','sales_return.store_id=store.store_id');
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('sales_return.store_id',$this->session->userdata('store_id'));
		}
		$this->db->order_by('sales_return.sreturn_id','desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 

	public function count_sa_return()
	{
		$this->db->select('*');
		$this->db->from('sales_return');
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('store_id',$this->session->userdata('store_id'));
		}
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	//purchase return list
 
 public function pur_return_list($limit = null, $start = null)
	{

		$this->db->select('purchase_return.*,supplier.supplier_name');
		$this->db->from('purchase_return');
		$this->db->join('supplier','purchase_return.supplier_id=supplier.supplier_id');
		$this->db->join('purchase_return_details','purchase_return.preturn_id=purchase_return_details.preturn_id');
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('purchase_return_details.store_id',$this->session->userdata('store_id'));
		}
		$this->db->group_by('purchase_return.preturn_id');
		$this->db->order_by('purchase_return.preturn_id', 'desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 

	public function count_pa_return()
	{
		$this->db->select('*');
		$this->db->from('purchase_return');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	// purchase return view
	public function p_return_view($preturn_id = null){
		return $info = $this->db->select('purchase_return_details.*,store.store_name,product.*')
		                        ->from('purchase_return_details')
		                        ->join('store','purchase_return_details.store_id=store.store_id')
		                        ->join('product','purchase_return_details.product_id=product.product_id')
		                        ->where('purchase_return_details.preturn_id',$preturn_id)
		                        ->get()
		                        ->result_array();

	}
	public function p_return_view_info($preturn_id = null){
		return $this->db->select("purchase_return.*,supplier.supplier_name")
					    ->from("purchase_return")
					    ->join('supplier','purchase_return.supplier_id=supplier.supplier_id')
						->where('purchase_return.preturn_id',$preturn_id)
						->get()
						->row();

	}
	// sales return view
	public function s_return_view($sreturn_id = null){
		return $info = $this->db->select('sales_return_details.*,product.*')
		                        ->from('sales_return_details')
		                        ->join('product','sales_return_details.product_id=product.product_id')
		                        ->where('sales_return_details.sreturn_id',$sreturn_id)
		                        ->get()
		                        ->result_array();

	}

	public function s_return_view_info($sreturn_id = null){
		        return $this->db->select("sales_return.*,customer.customer_name,store.store_name")
					    ->from("sales_return")
					    ->join('customer','sales_return.customer_id=customer.customer_id')
					    ->join('store','sales_return.store_id=store.store_id')
					    ->where('sales_return.sreturn_id',$sreturn_id)
						->get()
						->row();

	}
}
