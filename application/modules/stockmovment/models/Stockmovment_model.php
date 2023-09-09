<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Stockmovment_model extends CI_Model {
 

	public function create($data = [])
	{	 
		return $this->db->insert('stock_movement',$data);
	}

	public function read($limit = null, $start = null)
	{
		$this->db->from('stock_movement');
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('is_approved',1);
		}
		$this->db->order_by('movement_id', 'desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
	} 
//Stockmovment count
	public function count_Stockmovment()
	{
		
		$this->db->select('*');
		$this->db->from('stock_movement');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}

	public function findById($id = null)
	{ 
		return $this->db->select("stock_movement.*,store.*,user.firstname,user.lastname")->from("stock_movement")
		    ->join('store','stock_movement.from_store_id=store.store_id')
		    ->join('user','stock_movement.proposal_by=user.id')
			->where('movement_id',$id) 
			->get()
			->row();

	} 
	public function sdetails_view($id = null){
		return $this->db->select("stock_movement_details.*,product.product_name,product.product_code")->from("stock_movement_details")
		    ->join('product','stock_movement_details.product_id=product.product_id')
			->where('movement_id',$id) 
			->get()
			->result_array();
	}
 
	public function update($data = [])
	{
		return $this->db->where('movement_id',$data['movement_id'])
			->update('stock_movement',$data); 
	} 


public function issued($data = [])
	{
	    //print_r($data);exit;
		return $this->db->where('movement_id',$data['movement_id'])
			->update('stock_movement',$data); 
	} 

	public function delete($id)
	{
	    //print_r($id);exit;
		 $this->db->where('movement_id',$id)
            ->delete('stock_movement');
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
	} 

	public function dropdown()
	{
		$data = $this->db->select("*")
			->from($this->table)
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->name;
			return $list;
		} else {
			return false; 
		}
	}
 
	public function proposal_product_search($product_name){
		$query=$this->db->select('*')
				->from('product')
				->like('product_name', $product_name, 'both')
				->group_by('product_id')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}

	public function get_proposal_product($product_id){
		
        $pro_price = $this->db->select('*')->from('product')->where('isactive',1)->where('product_id',$product_id)->get()->row();
        $product_name = $pro_price->product_code;
		$data2 = array(
			'product_code'          => $product_name,
			);

		return $data2;
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

	public function second_store_list()
	{
		return $data = $this->db->select("*")
			->from('store')
			->where('isactive', 1)  
			->get()
			->result();
	}
// movement receive form data 
 public function receive_move_data($id){
 	return $this->db->select('*')
 	                ->from('stock_movement')
 	                ->where('movement_id',$id)
 	                ->get()
 	                ->row();                
 }

 public function receive_details_data($id){
 	return $this->db->select('stock_movement_details.*,product.*')
 	                ->from('stock_movement_details')
 	                ->join('stock_movement','stock_movement_details.movement_id = stock_movement.movement_id')
 	                ->join('product','stock_movement_details.product_id=product.product_id')
 	                ->where('stock_movement_details.movement_id',$id)
 	                ->where('stock_movement_details.issue_qty',0)
 	                ->get()
 	                ->result_array(); 
 }

 // stockmovement sent stock information
 public function send_stock($data =[])
	{	 
		//print_r($data);exit;
		 $this->db->where('movement_id',$data['movement_id'])
			->update('stock_movement',$data); 
       

           $pro_id = $this->input->post('product_id');
			$recv = $this->input->post('total_qntt');
			$pro_qty = $this->input->post('pro_qntt');
			$issue = $this->input->post('issue_qntt');
		for ($i=0, $n=count($pro_id); $i < $n; $i++) {
			$product_id       = $pro_id[$i];
			$recive = $recv[$i];
			$proposal_qty =   $pro_qty[$i];
			$issueqty = $issue[$i];
			$move = array(
				'movement_id'       =>	$data['movement_id'],
				'product_id'		=>	$product_id,
				'proposal_qty'      =>  $proposal_qty,
				'issue_qty'	        =>	$recive,
				'received_qty'      =>   $recive,
			);
			//print_r($move);exit;
		
			if(!empty($pro_id))
			{
				 $this->db->where('movement_id',$data['movement_id'])
				 ->where('product_id',$product_id)
			     ->update('stock_movement_details',$move); 
				//$this->db->insert('stock_movement_details',$move_details);
			}
		}
		$accesslog = array(
				'action_page'       =>	'stockmovement ',
				'action_done'	    =>	'create',
				'remarks'		    =>	'movemet received',
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
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

	public function receive_details_byuser($id){
 	return $this->db->select('stock_movement_details.*,product.*')
 	                ->from('stock_movement_details')
 	                ->join('stock_movement','stock_movement_details.movement_id = stock_movement.movement_id')
 	                ->join('product','stock_movement_details.product_id=product.product_id')
 	                ->where('stock_movement_details.movement_id',$id)
 	                ->where('stock_movement_details.received_qty',0)
 	                ->get()
 	                ->result_array(); 
 }

}
