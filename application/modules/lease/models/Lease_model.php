<?php defined('BASEPATH') OR exit('No direct script access allowed');

class lease_model extends CI_Model {
 
	public function create()
	{	 

		
		$createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		$advance = $this->input->post('advance');
		$markup = $this->input->post('markup');
		
		#----------leases entry---------------------#
	   $postData = array(
			'package_code'			=>	$this->input->post('pakage_code'),
			'package_name'		    =>	$this->input->post('pakage_name'),
			'lease_duration'	    =>	$this->input->post('duration'),
			'advance'               =>  $advance/100,
			'markup'                =>  $markup/100,
			// 'grace_period'          =>  $this->input->post('grace_period'),
			'isactive'              =>  1,
			'createby'		        =>	$createby,
			'createdate'		    =>	$createdate,
	
		); 
	      $this->db->insert('lease',$postData);
	      $lease_id = $this->db->insert_id();


   // store maping for lease
       $store_id = $this->input->post('store_id');
		for ($i=0, $n=count($store_id); $i < $n; $i++) {
			$str_id = $store_id[$i];
			$store_map = array(
				'lease_id'          =>	$lease_id,
				'store_id'		   =>	$str_id
			);

			if(!empty($str_id))
			{
				$this->db->insert('lease_store_map',$store_map);
			}
		}
	     
	      #---------------lease details ---------------#
		$p_id = $this->input->post('product_id');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_id = $p_id[$i];
			$data = array(
				'lease_id'           =>	$lease_id,
				'product_id'		=>	$product_id
			);

			if(!empty($product_id))
			{
				$this->db->insert('lease_product_map',$data);
			}
		}
		$accesslog = array(
				'action_page'       =>	'leases',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Lease Id'.'-'.$lease_id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
	}

	
	public function read($limit = null, $start = null)
	{
		return $this->db->select("*")->from("lease")
			->order_by('lease_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 

	public function findById($id = null)
	{ 
		$this->db->select('*');
		$this->db->from('lease');
		$this->db->where('lease_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->row();	
		}
		return false;

	} 
	public function lease_pmap_details($id = null)
	{ 
		$this->db->select('lease_product_map.*,product.*');
		$this->db->from('lease_product_map');
		$this->db->join('product','lease_product_map.product_id=product.product_id');
		$this->db->where('lease_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;

	} 
	public function lease_storemap_details($id = null)
	{ 
		$this->db->select('lease_store_map.*,store.store_name');
		$this->db->from('lease_store_map');
		$this->db->join('store','lease_store_map.store_id=store.store_id');
		$this->db->where('lease_id',$id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;

	} 
	
	public function count_lease()
	{
		$this->db->select('*');
		$this->db->from('lease');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
 
	public function update($data = [])
	{
		return $this->db->where('lease_id',$data['lease_id'])
			->update('lease',$data); 
	} 


	public function delete($id = null)
	{
		$this->db->where('lease_id',$id)
			->delete('lease');
			$this->db->where('lease_id',$id)
			->delete('lease_product_map');
			$this->db->where('lease_id',$id)
			->delete('lease_store_map');

		if ($this->db->affected_rows()) {
			return true;
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

	//update_order
	public function update_lease()
	{	 

		$updateby=$this->session->userdata('id');
		$updated=date('Y-m-d H:i:s');
		$lease_id = $this->input->post('lease_id');
		$advance = $this->input->post('advance');
		$markup = $this->input->post('markup');

		#----------leases entry---------------------#
	   $postData = array(
	   	       'lease_id'           =>  $lease_id,
			'package_code'			=>	$this->input->post('pakage_code'),
			'package_name'		    =>	$this->input->post('pakage_name'),
			'lease_duration'	    =>	$this->input->post('duration'),
			'advance'               =>  $advance/100,
			'markup'                =>  $markup/100,
			// 'grace_period'          =>  $this->input->post('grace_period'),
			'isactive'              =>  1,
			'updateby'		        =>	$updateby,
			'updatedate'		    =>	$updated,
	
		); 
	      $this->db->where('lease_id',$lease_id)
			->update('lease',$postData); 
	    
       $this->db->where('lease_id',$lease_id)
			    ->delete('lease_store_map');
			    $this->db->where('lease_id',$lease_id)
			->delete('lease_product_map');

   // store maping for lease
        $store_id = $this->input->post('store_id');
		for ($i=0, $n=count($store_id); $i < $n; $i++) {
			$str_id = $store_id[$i];
			$store_map = array(
				'lease_id'          =>	$lease_id,
				'store_id'		   =>	$str_id
			);

			if(!empty($str_id))
			{
				
				$this->db->insert('lease_store_map',$store_map);
			}
		}
	     
	      #---------------lease details ---------------#
		$p_id = $this->input->post('product_id');
		for ($i=0, $n=count($p_id); $i < $n; $i++) {
			$product_id = $p_id[$i];
			$data = array(
				'lease_id'          =>	$lease_id,
				'product_id'		=>	$product_id
			);

			if(!empty($product_id))
			{
				
				$this->db->insert('lease_product_map',$data);
			}
		}
		$accesslog = array(
				'action_page'       =>	'leases',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Lease Id'.'-'.$lease_id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
		$this->db->insert('accesslog',$accesslog);
		return true;
	}

	// product list
	public function product()
	{
		$data = $this->db->select("*")
			->from('product')
			->where('isactive', 1)  
			->get()
			->result_array();
		if (!empty($data)) {
			return $data;
		} else {
			return false; 
		}
	}

	// store list
	public function store()
	{
		$data = $this->db->select("*")
			->from('store')
			->where('isactive', 1)  
			->get()
			->result_array();
		if (!empty($data)) {
			return $data;
		} else {
			return false; 
		}
	}
	// Lease Update information
	public function leaseupinfo($lease_id)
	{
		return $this->db->select("*")->from("lease")
			->where('lease_id', $lease_id)
			->get()
			->row();
	} 
// store map updata
	public function storemap($lease_id = null)
	{ 
		$this->db->select('lease_store_map.*,store.store_name');
		$this->db->from('lease_store_map');
		$this->db->join('store','lease_store_map.store_id=store.store_id');
		$this->db->where('lease_store_map.lease_id',$lease_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;

	} 
	// product map updata
	public function productmap($lease_id = null)
	{ 
		$this->db->select('lease_product_map.*,product.product_name');
		$this->db->from('lease_product_map');
		$this->db->join('product','lease_product_map.product_id=product.product_id');
		$this->db->where('lease_product_map.lease_id',$lease_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;

	} 

	
}
