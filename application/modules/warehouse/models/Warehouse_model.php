<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Warehouse_model extends CI_Model {
 
	private $table = "warehouse";


	public function create($data = [])
	{	 
		return $this->db->insert($this->table,$data);
	}

public function read($limit = null, $start = null)
	{
		return $this->db->select("*")->from($this->table)
			->order_by('warehouse_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 

 public function findById($warehouse_id = null)
	{
		return $this->db->select("*")
			->from($this->table)
			->where('warehouse_id',$warehouse_id) 
			->get()
			->row();
	} 
 
	public function update($postData = [])
	{
		return $this->db->where('warehouse_id',$postData['warehouse_id'])
			->update($this->table,$postData); 
	} 



	public function delete($warehouse_id = null)
	{
		$this->db->where('warehouse_id',$warehouse_id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

	public function count_warehouse()
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

}
