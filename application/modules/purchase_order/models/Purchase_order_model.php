<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Purchase_order_model extends CI_Model {
 
	public function create()
	{	 
	    $po_no = date('YmdHis');
		$p_id = $this->input->post('product_id');
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
	
			 $postData = array(
			'po_no'			        =>	$po_no,
			'supplier_id'		    =>	$this->input->post('supplier_id'),
			'total_amnt'	        =>	$this->input->post('grand_total_price'),
			'store_id'              =>  0,
			'warehouse_id'          =>  0,
			'createby'		        =>	$createby,
			'createdate'		    =>	$createdate,
			'isapproved'            =>  0
		); 

			
	$this->db->insert('purchase_order',$postData);


		#-------------------------------#
        $st_id = $this->input->post('store_id');
		$rate = $this->input->post('product_rate');
		$quantity = $this->input->post('product_quantity');
		$t_price = $this->input->post('total_price');
		$dis     = $this->input->post('discount');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_quantity = $quantity[$i];
			$product_rate = $rate[$i];
			$product_id = $p_id[$i];
			$discount   = $dis[$i];
			$store_id = $st_id[$i];
			$data = array(
				'row_id'            =>	$this->generator(15),
				'po_no'		        =>	$po_no,
				'product_id'		=>	$product_id,
				'order_qty'			=>	$product_quantity,
				'product_rate'	    =>	$product_rate,
				'discount'          =>  $discount,
				'store_id'          =>  $store_id,
			);

			if(!empty($quantity))
			{
				$this->db->insert('purchase_order_details',$data);
			}
		}
		$accesslog = array(
				'action_page'       =>	'purchase order',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Orde Id'.'-'.$po_no.' '.'total amount'.'-'.$this->input->post('grand_total_price'),
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
	}

	//product receive information
	public function receive()
	{	 
        $recv_id = date('YmdHis');
		$p_id = $this->input->post('product_id');
		$receive_by=$this->session->userdata('id');
		$receive_date=date('Y-m-d');
		
		#-------------------------------#
	   $postData = array(
	   	    'receive_id'            =>  $recv_id,
			'po_no'			        =>	$this->input->post('po_no'),
			'supplier_id'		    =>	$this->input->post('supplier_id'),
			'store_id'              =>  0,
			'warehouse_id'          =>  0,
			'voucher_no'            =>  $this->number_generator(),
			'receive_by'		    =>	$receive_by,
			'receive_date'		    =>	$receive_date
		); 
	      $this->db->insert('purchase_receive',$postData);

		$rate = $this->input->post('product_rate');
		$quantity = $this->input->post('product_quantity');
		$s_id = $this->input->post('store_id');
		$dis = $this->input->post('discount');
		$product_total = $this->input->post('total_price');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_quantity = $quantity[$i];
			$product_rate = $rate[$i];
			$product_id = $p_id[$i];
			$store_id = $s_id[$i];
			$discount =  $dis[$i];
			$data = array(
				'receive_id'        =>	$recv_id,
				'product_id'		=>	$product_id,
				'receive_qty'		=>	$product_quantity,
				'product_rate'	    =>	$product_rate,
				'store_id'          =>  $store_id,
				'discount'          =>  $discount
			);

			if(!empty($quantity) && $quantity>0)
			{
				$this->db->insert('purchase_receive_details',$data);
			}
		}
		// Acc transaction
		for ($i=0, $n=count($s_id); $i < $n; $i++) {
			$store_id = $s_id[$i];
			$total = $product_total[$i];
	  
			$receive_transection = array(
					'VNo'            =>  $this->input->post('po_no'),
					'Vtype'          =>  'PO',
					'VDate'          =>  $receive_date,
					'COAID'          =>  10107,
					'Narration'      =>  'PO Receive Receive No '.$recv_id,
					'Debit'          =>  $total,
					'Credit'         =>  0,
					'StoreID'        => $store_id,
					'IsPosted'       => 1,
					'CreateBy'       => $receive_by,
					'CreateDate'     => $receive_date,
					'IsAppove'       => 1
				); 
			$this->db->insert('acc_transaction',$receive_transection);
   }
   		$supinfo =$this->db->select('*')->from('supplier')->where('supplier_id',$this->input->post('supplier_id'))->get()->row();
		$sup_head = $supinfo->supplier_code.'-'.$supinfo->supplier_name;
		$sup_coa = $this->db->select('*')->from('acc_coa')->where('HeadName',$sup_head)->get()->row();

	  //  Supplier credit
	  $poCredit = array(
		  'VNo'            =>  $this->input->post('po_no'),
		  'Vtype'          =>  'PO',
		  'VDate'          =>  $receive_date,
		  'COAID'          =>  $sup_coa->HeadCode,
		  'Narration'      =>  'PO received For PO No.'.$this->input->post('po_no').' Receive No.'.$recv_id,
		  'Debit'          =>  0,
		  'Credit'         =>  $this->input->post('grand_total_price'),
		  'StoreID'        =>  $this->session->userdata('store_id'),
		  'IsPosted'       =>  1,
		  'CreateBy'       =>  $receive_by,
		  'CreateDate'     =>  $receive_date,
		  'IsAppove'       =>  1
    	); 
	        //print_r($poCredit);exit;
       $this->db->insert('acc_transaction',$poCredit);

		$accesslog = array(
				'action_page'       =>	'purchase order receive',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Order Id'.'-'.$po_no.' '.'total amount'.'-'.$this->input->post('grand_total_price'),
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
	}


	public function read($limit = null, $start = null)
	{
		$this->db->select('purchase_order.*,purchase_order_details.*');
		$this->db->from('purchase_order');
		$this->db->join('purchase_order_details','purchase_order.po_no=purchase_order_details.po_no');
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('purchase_order_details.store_id',$this->session->userdata('store_id'));
		}
		$this->db->order_by('purchase_order.createdate','desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 


	public function findById($id = null)
	{ 
		$this->db->select('product.*,purchase_order_details.*,store.*');
		$this->db->from('purchase_order_details');
		$this->db->join('store','purchase_order_details.store_id = store.store_id');
		$this->db->join('product','purchase_order_details.product_id=product.product_id');
		$this->db->where('purchase_order_details.po_no',$id);
		$this->db->group_by('purchase_order_details.store_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;

	} 
	public function oreder_view($id = null)
	{ 
		$this->db->select('purchase_order.*,supplier.*');
		$this->db->from('purchase_order');
		$this->db->join('supplier','purchase_order.supplier_id=supplier.supplier_id');
		$this->db->where('purchase_order.po_no',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->row();	
		}
		return false;

	} 
	public function count_order()
	{
		$this->db->select('*');
		$this->db->from('purchase_order');
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
		$this->db->where('po_no',$id)
			->delete('purchase_order');
			$this->db->where('po_no',$id)
			->delete('purchase_order_details');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
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
	public function supplier_specific($sup_id= null)
	{
		$data = $this->db->select("*")
			->from('supplier')
			->where('supplier_id',$sup_id)
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
 //warehouse dropdown
	public function warehouse_list()
	{
		$data = $this->db->select("*")
			->from('warehouse')
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->warehouse_id] = $value->warehouse_name;
			return $list;
		} else {
			return false; 
		}
	}

//store dropdown
	public function store_list()
	{
		$data = $this->db->select("*")
			->from('store')
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->store_id] = $value->store_name;
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
				->like('product_name', $product_name, 'after')
				->group_by('product_id')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}

//ajax loction data
	//Product search item
	public function search_location($location){
		$query=$this->db->select('*')
				->from('store')
				->where('isactive',1)
				->like('store_name', $location, 'after')
				->group_by('store_id')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}

	//warehouse search 
	public function search_warehouse($location){
		$query=$this->db->select('*')
				->from('warehouse')
				->where('isactive',1)
				->like('warehouse_name', $location, 'after')
				->group_by('warehouse_id')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
	// stock available qty
	public function get_total_product($product_id){
		$pur= $this->db->select('sum(receive_qty) as qty')->from('purchase_receive_details')->where('product_id',$product_id)->get()->row();
		$sal= $this->db->select('sum(qty) as sqty')->from('sale_details')->where('product_id',$product_id)->get()->row();
		$available_quantity = $pur->qty-$sal->sqty;
        $pro_price = $this->db->select('product.*,product_unit.unit_name')->from('product')
        ->join('product_unit','product.unit=product_unit.unit_id')
        ->where('product.product_id',$product_id)->get()->row();
        $price = $pro_price->purchase_price;
		$data2 = array(
			'total_product'  => $available_quantity,
			'price'          => $price,
			'product_code'   => $pro_price->product_code,
			'um'             => $pro_price->unit_name,
			);

		return $data2;
	}
	// receive product info

	public function order_receive($order_id)
	{
		$this->db->select('product.*,purchase_order_details.*,store.store_name,product_unit.unit_name');
		$this->db->from('purchase_order_details');
		$this->db->join('product','purchase_order_details.product_id=product.product_id');
		$this->db->join('product_unit','product.unit=product_unit.unit_id');
		$this->db->join('store','purchase_order_details.store_id=store.store_id');
		$this->db->where('purchase_order_details.po_no',$order_id);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('purchase_order_details.store_id',$this->session->userdata('store_id'));
		}
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}

	//purchase order info
 public function purchase_orderinfo($order_id)
	{
		$this->db->select('purchase_order.*,supplier.*');
		$this->db->from('purchase_order');
		$this->db->join('supplier','purchase_order.supplier_id=supplier.supplier_id');
		$this->db->where('purchase_order.po_no',$order_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->row();	
		}
		return false;
	}

	public function number_generator()
	{
		$this->db->select_max('voucher_no', 'voucher_no');
		$query = $this->db->get('purchase_receive');	
		$result = $query->result_array();	
		$voucher_no = $result[0]['voucher_no'];
		if ($voucher_no !='') {
			$voucher_no = $voucher_no + 1;	
		}else{
			$voucher_no = 1000;
		}
		return $voucher_no;		
	}
//receive list
	public function receive_list($limit = null, $start = null)
	{
		return $this->db->select("purchase_receive.*,purchase_receive_details.store_id,supplier.*,store.store_name")
		    ->from("purchase_receive")
		    ->join('purchase_receive_details','purchase_receive.receive_id=purchase_receive_details.receive_id')
		    ->join('store','purchase_receive_details.store_id=store.store_id')
		    ->join('supplier','purchase_receive.supplier_id=supplier.supplier_id')
		    ->group_by('purchase_receive.voucher_no')
			->order_by('purchase_receive.receive_date', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 
	
//receive count
	public function count_receive()
	{
		$this->db->select('*');
		$this->db->from('purchase_receive');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	//update_order
	public function update_order()
	{	 

        $po_no = $this->input->post('po_no');
		$p_id = $this->input->post('product_id');
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		$postData = array(
			'po_no'			        =>	$po_no,
			'supplier_id'		    =>	$this->input->post('supplier_id'),
			'total_amnt'	        =>	$this->input->post('grand_total_price'),
			'store_id'              =>  0,
			'warehouse_id'          =>  0,
			'createby'		        =>	$createby,
			'createdate'		    =>	$createdate,
			'isapproved'            =>  0
		); 

    $this->db->where('po_no',$po_no)
			->update('purchase_order',$postData);
	$this->db->where('po_no',$po_no)
			->delete('purchase_order_details');
		#-------------------------------#
        $st_id = $this->input->post('store_id');
		$rate = $this->input->post('product_rate');
		$quantity = $this->input->post('product_quantity');
		$t_price = $this->input->post('total_price');
		$dis     = $this->input->post('discount');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_quantity = $quantity[$i];
			$product_rate = $rate[$i];
			$product_id = $p_id[$i];
			$discount   = $dis[$i];
			$store_id = $st_id[$i];
			$data = array(
				'row_id'            =>	$this->generator(15),
				'po_no'		        =>	$po_no,
				'product_id'		=>	$product_id,
				'order_qty'			=>	$product_quantity,
				'product_rate'	    =>	$product_rate,
				'discount'          =>  $discount,
				'store_id'          =>  $store_id,
			);

			if(!empty($quantity))
			{
				$this->db->insert('purchase_order_details',$data);
			}
		}
		$accesslog = array(
				'action_page'       =>	'purchase Receive',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Receive Id'.'-'.$po_no.' '.'total amount'.'-'.$this->input->post('grand_total_price'),
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
	}

	//Product receive delete
	public function delete_receive($id = null)
	{
		$this->db->where('receive_id',$id)
			->delete('purchase_receive');
			$this->db->where('receive_id',$id)
			->delete('purchase_receive_details');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
	// find receive purchase id details
	public function receive_veiw($id = null)
	{ 
		$this->db->select('product.*,purchase_receive_details.*,store.store_name');
		$this->db->from('purchase_receive_details');
		$this->db->join('store','purchase_receive_details.store_id=store.store_id');
		$this->db->join('product','purchase_receive_details.product_id=product.product_id');
		$this->db->where('purchase_receive_details.receive_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;

	} 
	// order receive info
	public function oreder_receive($id = null)
	{ 
		$this->db->select('purchase_receive.*,supplier.supplier_name,user.*');
		$this->db->from('purchase_receive');
		$this->db->join('supplier','purchase_receive.supplier_id=supplier.supplier_id');
		$this->db->join('user','purchase_receive.receive_by = user.id');
		$this->db->where('purchase_receive.receive_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->row();	
		}
		return false;

	} 

	//head office address 
	public function head_office(){
		return $result = $this->db->select('*')
		         ->from('setting')
		         ->get()
		         ->row();
	}
}
