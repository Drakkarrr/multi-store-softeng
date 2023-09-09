<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model {
 
	private $table = "product";


	public function create($data = [])
	{	 
		return $this->db->insert($this->table,$data);
	}

	public function read($limit = null, $start = null)
	{
		return $this->db->select("*")->from("product")
			->order_by('product_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 
	
//product count
	public function count_product()
	{
		$this->db->select('*');
		$this->db->from('product');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	// active product list
	public function active_list($limit = null, $start = null)
	{
		return $this->db->select("*")->from("product")
		    ->where('isactive',1)
			->order_by('product_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 
	public function count_act_product()
	{
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('isactive', 1); 
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	// active product list
	public function inactive_list($limit = null, $start = null)
	{
		return $this->db->select("*")->from("product")
		    ->where('isactive',0)
			->order_by('product_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 
	public function count_inact_product()
	{
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('isactive', 0); 
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}

	public function findById($id = null)
	{ 
		return $this->db->select("*")->from("product")
			->where('product_id',$id) 
    		->limit($limit, $start)
			->get()
			->row();

	} 
 
	public function update($data = [])
	{
		return $this->db->where('product_id',$data['product_id'])
			->update($this->table,$data); 
	} 


	public function delete($id = null)
	{
		$this->db->where('product_id',$id)
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
				$list[$value->id] = $value->name;
			return $list;
		} else {
			return false; 
		}
	}
 // model dropdown info
	public function model_dropdown()
	{
		$data = $this->db->select("*")
			->from('product_model')
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->model_name] = $value->model_name;
			return $list;
		} else {
			return false; 
		}
	}
	// category dropdown
	public function category_dropdown()
	{
		$data = $this->db->select("*")
			->from('product_category')
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->category_name] = $value->category_name;
			return $list;
		} else {
			return false; 
		}
	}
	/// unit drop down
	public function unit_dropdown()
	{
		$data = $this->db->select("*")
			->from('product_unit')
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->unit_name] = $value->unit_name;
			return $list;
		} else {
			return false; 
		}
	}
// brand list 
	public function brand_dropdown()
	{
		$data = $this->db->select("*")
			->from('product_brand')
			->where('isactive', 1)  
			->get()
			->result();

		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->brand_name] = $value->brand_name;
			return $list;
		} else {
			return false; 
		}
	}
 //product categry info
		public function create_category($data = [])
	{	 
		return $this->db->insert('product_category',$data);
	}

	public function read_category($limit = null, $start = null)
	{
		return $this->db->select("*")->from("product_category")
			->order_by('category_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 

	public function findById_category($id = null)
	{ 
		return $this->db->select("*")->from("product_category")
			->where('category_id',$id) 
    		->limit($limit, $start)
			->get()
			->row();

	} 
 
	public function update_catagory($data = [])
	{
		return $this->db->where('category_id',$data['category_id'])
			->update('product_category',$data); 
	} 


	public function delete_category($id = null)
	{
		$this->db->where('category_id',$id)
			->delete('product_category');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

// model information
		public function create_model($data = [])
	{	 
		return $this->db->insert('product_model',$data);
	}

	public function read_model($limit = null, $start = null)
	{
		return $this->db->select("*")->from("product_model")
			->order_by('model_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 

	public function findById_model($id = null)
	{ 
		return $this->db->select("*")->from("product_model")
			->where('model_id',$id) 
    		->limit($limit, $start)
			->get()
			->row();

	} 
 
	public function update_model($data = [])
	{
		return $this->db->where('model_id',$data['model_id'])
			->update('product_model',$data); 
	} 


	public function delete_model($id = null)
	{
		$this->db->where('model_id',$id)
			->delete('product_model');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
	// product brand information
	public function create_brand($data = [])
	{	 
		return $this->db->insert('product_brand',$data);
	}

	public function read_brand($limit = null, $start = null)
	{
		return $this->db->select("*")->from("product_brand")
			->order_by('brand_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 

	public function findById_brand($id = null)
	{ 
		return $this->db->select("*")->from("product_brand")
			->where('brand_id',$id) 
    		->limit($limit, $start)
			->get()
			->row();

	} 
 
	public function update_brand($data = [])
	{
		return $this->db->where('brand_id',$data['brand_id'])
			->update('product_brand',$data); 
	} 


	public function delete_brand($id = null)
	{
		$this->db->where('brand_id',$id)
			->delete('product_brand');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
	// Unit mesurement information
	public function create_unit($data = [])
	{	 
		return $this->db->insert('product_unit',$data);
	}

	public function read_unit($limit = null, $start = null)
	{
		return $this->db->select("*")->from("product_unit")
			->order_by('unit_id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 

	public function findById_unit($id = null)
	{ 
		return $this->db->select("*")->from("product_unit")
			->where('unit_id',$id) 
    		->limit($limit, $start)
			->get()
			->row();

	} 
 
	public function update_unit($data = [])
	{
		return $this->db->where('unit_id',$data['unit_id'])
			->update('product_unit',$data); 
	} 


	public function delete_unit($id = null)
	{
		$this->db->where('unit_id',$id)
			->delete('product_unit');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
}
