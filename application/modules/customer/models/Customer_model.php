<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_model extends CI_Model {
 
	private $table = "customer";


	public function create($data = [])
	{	 
		 $this->db->insert($this->table,$data);
		return true;
	}

	public function read($limit = null, $start = null)
	{
	 $this->db->select('*');
		$this->db->from('customer');
		$this->db->where('isactive',1);
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('store_id',$this->session->userdata('store_id'));
		}
		$this->db->order_by('customer_id', 'desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 

	public function findById($id = null)
	{ 
		return $this->db->select("*")->from("customer")
			->where('customer_id',$id) 
    		->limit($limit, $start)
			->get()
			->row();

	} 
 
	public function update($data = [])
	{
		return $this->db->where('customer_id',$data['customer_id'])
			->update($this->table,$data); 
	} 


	public function delete($id = null)
	{
		$this->db->where('customer_id',$id)
			->delete($this->table);

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
				$list[$value->customer_id] = $value->customer_name;
			return $list;
		} else {
			return false; 
		}
	}
 

public function count_customer()
	{
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('isactive', 1);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
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

	public function headcode(){
        $query=$this->db->query("SELECT MAX(HeadCode) as HeadCode FROM acc_coa WHERE HeadLevel='4' And HeadCode LIKE '1020301%'");
        return $query->row();

    }
    public function create_coa($data = [])
    {
        $this->db->insert('acc_coa',$data);
        return true;
    }

}
