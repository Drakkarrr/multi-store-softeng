<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
 
	public function create($data = array())
	{
		return $this->db->insert('user', $data);
	}

	public function read()
	{
		return $this->db->select("
				user.*, 
				CONCAT_WS(' ', firstname, lastname) AS fullname 
			")
			->from('user')
			->order_by('id', 'desc')
			->get()
			->result();
	}

	public function single($id = null)
	{
		return $this->db->select('*')
			->from('user')
			->where('id', $id)
			->get()
			->row();
	}

	public function update($data = array())
	{
		return $this->db->where('id', $data["id"])
			->update("user", $data);
	}

	public function delete($id = null)
	{
		return $this->db->where('id', $id)
			->where_not_in('is_admin',1)
			->delete("user");
	}

	
 
// user role 
	public function role_list()
	{
		$data = $this->db->select("id,name")
			->from("sec_role")
			->where('isactive', 1)
			->where('id >', 1)
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
	// store list for user
	public function store_list()
	{
		$data = $this->db->select('store_id,store_name')
			->from("store")
			->where('isactive', 1)
			->order_by('store_id','asc')
			->get()
			->result();
		$list = array();
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->store_id] = $value->store_name;
			return $list;
		} else {
			return false; 
		}
	}
############################# user role ###############################
	 public function viewRole()
	{
		return $this->db->select('sec_userrole.*,sec_role.name,user.firstname')	
			->from('sec_userrole')
			->join('user','user.id=sec_userrole.user_id')
			->join('sec_role','sec_role.id=sec_userrole.roleid')
			->order_by('sec_userrole.id', 'desc')
			->group_by('sec_userrole.user_id')
			->get()
			->result();
	}

	public function role_create($postData = array())
	{
 
  $this->db->insert('sec_userrole',$postData);
	}

	public function Rolesetup_delete($id = null)
	{
		$this->db->where('id',$id)
			->delete('sec_userrole');
		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	}  

		public function dropdown()
	{
		$data = $this->db->select("id, CONCAT_WS(' ', firstname, lastname) AS fullname")
			->from("user")
			->where('status', 1)
			->where_not_in('is_admin', 1)
			->get()
			->result();
		$list[''] = display('select_option');
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->fullname;
			return $list;
		} else {
			return false; 
		}
	}
	public function findById($id = null)
	{
		return $this->db->select("*")
			->from('sec_userrole')
			->where('id',$id) 
			->get()
			->row();
	} 
 
	public function update_role()
	{
		$this->db->where('user_id',$this->input->post('user_id'))
			->delete('sec_userrole');

        $user_id = $this->input->post('user_id');
	    $roleid = $this->input->post('roles');
	    $create_by = $this->session->userdata('id');
		$create_date = date('Y-m-d h:i:s');
		for ($i=0, $n=count($roleid); $i < $n; $i++) {
			$role_id     = $roleid[$i];
			$data = array(
				'user_id'           =>	$user_id,
				'roleid'		    =>	$role_id,
				'createby'	        =>	$create_by,
				'createdate'	    =>	$create_date
			);

			
				$this->db->insert('sec_userrole',$data);
		}
	return true;
	}  

	public function user_roles($id = null)
	{
		return $this->db->select("*")
			->from('sec_role')
			->where('id >',1)
			->get()
			->result_array();
	}  

}
