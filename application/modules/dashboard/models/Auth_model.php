<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_model extends CI_Model {


	public function checkUser($data = array())
	{
		return $this->db->select("
				user.id, 
				CONCAT_WS(' ', user.firstname, user.lastname) AS fullname,
				user.email, 
				user.image, 
				user.last_login,
				user.last_logout, 
				user.ip_address, 
				user.status, 
				user.is_admin,
				user.store_id, 
				IF (user.is_admin=1, 'Super Admin', 'User') as user_level
			")
			->from('user')
			->where('email', $data['email'])
			->where('password', md5($data['password']))
			->get();
	}

public function userPermissionadmin($id = null)
	{
		return $this->db->select("
			module.directory, 
			role_permission.fk_module_id, 
			role_permission.create, 
			role_permission.read, 
			role_permission.update, 
			role_permission.delete
			")
			->from('role_permission')
			->join('module', 'module.id = role_permission.fk_module_id', 'full')
			->where('role_permission.role_id', $id)
			->where('module.status', 1)
			->group_start()
				->where('create', 1)
				->or_where('read', 1)
				->or_where('update', 1)
				->or_where('delete', 1)
			->group_end()
			->get()
			->result();
	}

	public function userPermission($id = null)
	{
		$userrole=$this->db->select('sec_userrole.*,sec_role.isactive')->from('sec_userrole')->join('sec_role','sec_userrole.roleid=sec_role.id')->where('sec_userrole.user_id',$id)->where('sec_role.isactive',1)->get()->result();


		$roleid = [];
		foreach ($userrole as $role) {
			$roleid[] =$role->roleid;
		}
	
if(!empty($roleid)){
	return $result =  $this->db->select("

					role_permission.fk_module_id, 
					module.directory,
					IF(SUM(role_permission.create) >= 1,1,0) AS 'create', 
					IF(SUM(role_permission.read) >= 1,1,0) AS 'read', 
					IF(SUM(role_permission.update) >= 1,1,0) AS 'update', 
					IF(SUM(role_permission.delete) >= 1,1,0) AS 'delete'
				")
				->from('role_permission')
				->join('module', 'module.id = role_permission.fk_module_id', 'full')
				->where_in('role_permission.role_id',$roleid)
				->where('module.status', 1)
				->group_by('role_permission.fk_module_id')
				->group_start()
					->where('create', 1)
					->or_where('read', 1)
					->or_where('update', 1)
					->or_where('delete', 1)
				->group_end()
				
				->get()
				->result();
			}else{

			return $this->db->select("
			module.directory, 
			role_permission.fk_module_id, 
			role_permission.create, 
			role_permission.read, 
			role_permission.update, 
			role_permission.delete
			")
			->from('role_permission')
			->join('module', 'module.id = role_permission.fk_module_id', 0)
			->where('role_permission.role_id', 0)
			->where('module.status', 1)
			->group_start()
				->where('create', 1)
				->or_where('read', 1)
				->or_where('update', 1)
				->or_where('delete', 1)
			->group_end()
			->get()
			->result();
			}



	}


	public function last_login($id = null)
	{
		return $this->db->set('last_login', date('Y-m-d H:i:s'))
			->set('ip_address', $this->input->ip_address())
			->where('id',$this->session->userdata('id'))
			->update('user');
	}

	public function last_logout($id = null)
	{
		return $this->db->set('last_logout', date('Y-m-d H:i:s'))
			->where('id', $this->session->userdata('id'))
			->update('user');
	}

}
 