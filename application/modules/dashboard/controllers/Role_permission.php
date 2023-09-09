<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Role_permission extends MX_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'role_permission_model',
 			'module_model', 
 			'user_model'
 		));
 		
		if (! $this->session->userdata('isAdmin'))
			redirect('login');
 	}
 
	public function index()
	{
		$data['title']      = display('role_permission_list');
		$data['module'] 	= "dashboard";  
		$data['page']   	= "module/permission_list";   
		$data['role_permission'] = $this->role_permission_model->read();
		echo Modules::run('template/layout', $data); 
	}

	public function view($id)
	{
		$data['title']      = display('user_permission');
		$data['module']     = "dashboard";  
		$data['page']       = "module/permission_view"; 
		$data['rolename']   = $this->role_permission_model->view_role_name($id);
		$data['permission'] = $this->role_permission_model->single($id);
		echo Modules::run('template/layout', $data);
	}
/// module permission create ///
	public function create()
	{
		$data['title'] = display('add_role_permission');
		/*-----------------------------------*/ 
		$this->form_validation->set_rules('role_id', display('username'),'required|numeric|max_length[11]');
		/*-----------------------------------*/
		$data['role_permission'] = (object)array(
			'role_id' => $this->input->post('role_id'),
		);
		/*-----------------------------------*/ 
		$fk_module_id  = $this->input->post('fk_module_id'); 
		$create  	   = $this->input->post('create');
		$read  		   = $this->input->post('read');
		$update  	   = $this->input->post('update');
		$delete  	   = $this->input->post('delete');
 
		for($i=0; $i < sizeof($fk_module_id); $i++) {
			for($j=0; $j < sizeof($fk_module_id[$i]); $j++ ) { 
				$dataStore[$i] = array(
					'role_id'   => $this->input->post('role_id'),
					'fk_module_id' => $fk_module_id[$i][$j], 
					'create'       => (!empty($create[$i][$j])?$create[$i][$j]:0), 
					'read'         => (!empty($read[$i][$j])?$read[$i][$j]:0), 
					'update'       => (!empty($update[$i][$j])?$update[$i][$j]:0), 
					'delete'       => (!empty($delete[$i][$j])?$delete[$i][$j]:0), 
				); 
			}
		} 

		/*-----------------------------------*/
		if ($this->form_validation->run()) {

			if ($this->role_permission_model->create($dataStore)) {
				$id = $this->db->insert_id();
				$accesslog = array(
				'action_page'       =>	'Role Permission',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Role id :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
				$this->session->set_flashdata('message', display('role_permission_added_successfully'));
			} else {
				$this->session->set_flashdata('exception', display('please_try_again'));
			}
			redirect("dashboard/role_permission/create/");

		} else {
			$data['module'] = "dashboard";  
			$data['page']   = "module/permission_form"; 
			$data['module_list'] = $this->module_model->dropdown();
			$data['user_list'] = $this->user_model->role_list();
			echo Modules::run('template/layout', $data);
		}
	}

  

	public function edit($id = null)
	{
		$data['title'] = display('update_role_permission');
		/*-----------------------------------*/ 
		$this->form_validation->set_rules('role_id', display('username'),'required|numeric|max_length[11]');
		/*-----------------------------------*/
		$data['role_permission'] = (object)array(
			'role_id' => $this->input->post('role_id'),
		);
		/*-----------------------------------*/ 
		$fk_module_id  = $this->input->post('fk_module_id'); 
		$create  	   = $this->input->post('create');
		$read  		   = $this->input->post('read');
		$update  	   = $this->input->post('update');
		$delete  	   = $this->input->post('delete');
 
		for($i=0; $i < sizeof($fk_module_id); $i++) {
			for($j=0; $j < sizeof($fk_module_id[$i]); $j++ ) { 
				$dataStore[$i] = array(
					'role_id'   => $this->input->post('role_id'),
					'fk_module_id' => $fk_module_id[$i][$j], 
					'create'       => (!empty($create[$i][$j])?$create[$i][$j]:0), 
					'read'         => (!empty($read[$i][$j])?$read[$i][$j]:0), 
					'update'       => (!empty($update[$i][$j])?$update[$i][$j]:0), 
					'delete'       => (!empty($delete[$i][$j])?$delete[$i][$j]:0), 
				); 
			}
		} 

		/*-----------------------------------*/
		if ($this->form_validation->run()) {

			// delete previous permission
			if ($this->role_permission_model->create($dataStore)) {
				$accesslog = array(
				'action_page'       =>	'Role Permission',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Role id :'.$this->input->post('role_id'),
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
				$this->session->set_flashdata('message', display('update_successfully'));
			} else {
				$this->session->set_flashdata('exception', display('please_try_again'));
			}
			redirect("dashboard/role_permission/edit/$id");

		} else {
			$data['module'] = "dashboard";  
			$data['page']   = "module/permission_edit"; 
			$data['module_list'] = $this->module_model->dropdown();
			$data['user_list'] = $this->user_model->role_list();
			$data['permission'] = $this->role_permission_model->permission_edit($id);
			echo Modules::run('template/layout', $data);
		}
	}



	public function delete($id = null)
	{
		if ($this->role_permission_model->delete($id)) {
			$accesslog = array(
				'action_page'       =>	'Role Permission',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Role id :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			$this->session->set_flashdata('message', display('delete_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect("dashboard/role_permission/index");
	}
	################# Role Part #################
	public function role_view()
	{   
        $this->permission->module('dashboard','read')->redirect();

		$data['title']    = display('role_setup');  ;
		$data['roles']   = $this->role_permission_model->viewRole();
		$data['module']   = "dashboard";
		$data['page']     = "module/role_view";   
		echo Modules::run('template/layout', $data); 
	} 

public function create_role($id = null)
	{ 
		$data['title'] = display('list_Role_setup');
		#-------------------------------#
		$this->form_validation->set_rules('name',display('name'),'max_length[30]');
		$this->form_validation->set_rules('isactive',display('isactive'),'max_length[30]');
		
	    $name = $this->input->post('name');
	    $isactive = $this->input->post('isactive');
	    $create_by = $this->session->userdata('id');
		$create_date = date('Y-m-d h:i:s');
		#-------------------------------#
		$data['role_data'] = (Object)$postData = [
		             'id'                 => $this->input->post('id'),
					'name'                => $name,
					'isactive' 	          => $isactive,
					'createby'            => $create_by,
					'createdate'          => $create_date
				
				];    

		if ($this->form_validation->run()) {

			if (empty($postData['id'])) {

				if ($this->role_permission_model->role_create($postData)){ 
					$id = $this->db->insert_id();
					$accesslog = array(
				'action_page'       =>	'Role',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Role id :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('exception', display('please_try_again'));
					redirect('dashboard/role_permission/role_view/');
				} else {
					$this->session->set_flashdata('message',  display('save_successfully'));
				}
				redirect("dashboard/role_permission/role_view"); 

			} else {

				if ($this->role_permission_model->update_role($postData)) { 
					$accesslog = array(
				'action_page'       =>	'Role',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Role id :'.$postData['id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("dashboard/role_permission/create_role/".$postData['id']);  
			}
 


		}else {
			$data['title']    = display('create');
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['role']   = $this->role_permission_model->findById($id);
			}
			$data['module']   = "dashboard";
			$data['page']     = "module/role_setupform"; 
			$data['roles']   = $this->role_permission_model->viewRole();
			echo Modules::run('template/layout', $data);   
			
		}   
	}
public function delete_Rolesetup($id = null) 
	{ 
        $this->permission->module('dashboard','delete')->redirect();

		if ($this->role_permission_model->Rolesetup_delete($id)) {
			#set success message
			$accesslog = array(
				'action_page'       =>	'Role',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Role id :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));

		}
		redirect("dashboard/role_permission/role_view");
	}

// active and inactive role form here
  public function isactive($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'id'     => $id,
			'isactive' => $action
		);

		if ($this->role_permission_model->update_role($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
	################ ONCHANGE SELECTED ROLE PERMISSION #############################
	public function select_rolepermission($id){
      $permittedinfo = $this->role_permission_model->permission_edit($id);
		echo json_encode($permittedinfo);
	}

}
