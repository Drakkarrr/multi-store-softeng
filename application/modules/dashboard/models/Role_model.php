<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Role_model extends CI_Model {
 
    public function viewRole()
	{
		return $this->db->select('*')	
			->from('sec_role')
			->order_by('id', 'asc')
			->get()
			->result();
	}
	public function role_create($postData = array())
	{
 
   $this->db->insert('sec_role',$postData);
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



}
