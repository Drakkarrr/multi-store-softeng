<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Supplier_model extends CI_Model {
 
	private $table = "supplier";


	public function create($data = [])
	{	 
		return $this->db->insert($this->table,$data);
	}

	public function read($limit = null, $start = null)
	{
		return $this->db->select("*")->from("supplier")
			->order_by('supplier_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 

	public function findById($id = null)
	{ 
		return $this->db->select("*")->from("supplier")
			->where('supplier_id',$id) 
    		->limit($limit, $start)
			->get()
			->row();

	} 
 
	public function update($data = [])
	{
		return $this->db->where('supplier_id',$data['supplier_id'])
			->update($this->table,$data); 
	} 


	public function delete($id = null)
	{
		$this->db->where('supplier_id',$id)
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
				$list[$value->supplier_id] = $value->supplier_name;
			return $list;
		} else {
			return false; 
		}
	}
 
public function count_supplier()
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
	 public function headcode(){

        $query=$this->db->query("SELECT MAX(HeadCode) as HeadCode FROM acc_coa WHERE HeadLevel='3' And HeadCode LIKE '50202%'");
        return $query->row();

    }
    public function create_coa($data = [])
    {
        $this->db->insert('acc_coa',$data);
        return true;
    }

}
