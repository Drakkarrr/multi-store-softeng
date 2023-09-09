<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Store_model extends CI_Model {
 
	private $table = "store";


	public function create($data = [])
	{	 
		return $this->db->insert($this->table,$data);
	}

	public function read($limit = null, $start = null)
	{
		return $this->db->select("*")->from($this->table)
			->order_by('store_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 
 public function findById($store_id = null)
	{
		return $this->db->select("*")
			->from($this->table)
			->where('store_id',$store_id) 
			->get()
			->row();
	} 
 
	public function update($postData = [])
	{
		return $this->db->where('store_id',$postData['store_id'])
			->update($this->table,$postData); 
	} 



	public function delete($store_id = null)
	{
		$this->db->where('store_id',$store_id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
	public function count_store()
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
	// Coa information
 public function headcode(){

        $query=$this->db->query("SELECT MAX(HeadCode) as HeadCode FROM acc_coa WHERE HeadLevel='2' And HeadCode LIKE '401%'");
        return $query->row();

    }
public function cash_headcode(){

        $query=$this->db->query("SELECT MAX(HeadCode) as HeadCode FROM acc_coa WHERE HeadLevel='4' And HeadCode LIKE '1020101%'");
        return $query->row();

    }	
    public function create_coa($data = [])
    {
        $this->db->insert('acc_coa',$data);
        return true;
    }
}
