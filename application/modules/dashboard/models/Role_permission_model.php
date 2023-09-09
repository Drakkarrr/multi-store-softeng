<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Role_permission_model extends CI_Model {
 
	public function create($data = array())
	{	
		$this->db->where('role_id', $data[0]['role_id'])->delete('role_permission');
		return $this->db->insert_batch('role_permission', $data);
	}

	public function read()
	{
		return $this->db->select("
				role_permission.role_id,
				sec_role.id,sec_role.name
			")
			->from('role_permission')
			->join('sec_role','sec_role.id = role_permission.role_id', 'left')
			->where('sec_role.id >',1)
			->group_by('role_permission.role_id')
			->order_by('sec_role.id','asc')
			->get()
			->result();
	}

	public function single($id = null)
	{
		return $this->db->select("
				role_permission.*,
				module.name as module_name,
				sec_role.id
			")
			->from('role_permission')
			->join('module', 'module.id = role_permission.fk_module_id', 'left')
			->join('sec_role','sec_role.id = role_permission.role_id', 'left')
			->where('role_permission.role_id', $id)
			->get()
			->result();
	}
	public function view_role_name($id = null)
	{
		return $this->db->select("*")
			->from('sec_role')
			->where('id', $id)
			->get()
			->row();
	}

	public function permission_edit($id = null)
	{
		$modules = $this->db->select("id, name")
				->from("module")
				->where("status", 1)
				->get()
				->result();

		$mod = array();
		foreach ($modules as $value) {

			$modWisPer = $this->db->select("
				role_permission.*,
				module.name as module_name 
			")
			->from('role_permission')
			->join('module', 'module.id = role_permission.fk_module_id', 'left')
			->where('role_permission.role_id', $id)
			->where('role_permission.fk_module_id', $value->id)
			->get()
			->row();

			$mod[$value->id] = (object)array(
				'name' 		   => $value->name,
				'fk_module_id' => $value->id,
				'role_id'      => $id,
				'create'       => (!empty($modWisPer->create)?$modWisPer->create:0),
				'read'         => (!empty($modWisPer->read)?$modWisPer->read:0),
				'update'       => (!empty($modWisPer->update)?$modWisPer->update:0),
				'delete'       => (!empty($modWisPer->delete)?$modWisPer->delete:0)
			);

		}
		return $mod;
	}

	public function delete($id = null)
	{
		return $this->db->where('role_id', $id)
			->delete("role_permission");
	}
 

 ######################### Role Part #########################
	 public function viewRole()
	{
		return $this->db->select('*')	
			->from('sec_role')
			->order_by('id', 'asc')
			->get()
			->result();
	}
	public function role_create($data = array())
	{
 
   $this->db->insert('sec_role',$data);
	}

	public function Rolesetup_delete($id = null)
	{
		$this->db->where('id',$id)
			->delete('sec_role');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

public function findById($id = null)
	{
		return $this->db->select("*")
			->from('sec_role')
			->where('id',$id) 
			->get()
			->row();
	} 
 
	public function update_role($postData = [])
	{
		return $this->db->where('id',$postData['id'])
			->update('sec_role',$postData); 
	} 

  
}
