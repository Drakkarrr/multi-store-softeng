<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MX_Controller {
 	
 	public function __construct()
 	{
 		parent::__construct();
 		$this->load->model(array(
 			'user_model'  
 		));
 		
		if (! $this->session->userdata('isAdmin'))
			redirect('login');
 	}
 
	public function index()
	{ 
		$data['title']      = display('user_list');
		$data['module'] 	= "dashboard";  
		$data['page']   	= "user/list";   
		$data['user'] = $this->user_model->read();
		echo Modules::run('template/layout', $data); 
	}
 

    public function email_check($email, $id)
    { 
        $emailExists = $this->db->select('email')
            ->where('email',$email) 
            ->where_not_in('id',$id) 
            ->get('user')
            ->num_rows();

        if ($emailExists > 0) {
            $this->form_validation->set_message('email_check', 'The {field} is already registered.');
            return false;
        } else {
            return true;
        }
    } 

 
	public function form($id = null)
	{ 
		$data['title']    = display('add_user');
		/*-----------------------------------*/
		$this->form_validation->set_rules('firstname', display('firstname'),'required|max_length[50]');
		$this->form_validation->set_rules('lastname', display('lastname'),'required|max_length[50]');
		#------------------------#
		if (!empty($id)) {   
       		$this->form_validation->set_rules('email', display('email'), "required|valid_email|max_length[100]");
       		/*---#callback fn not supported#---*/ 
       		// $this->form_validation->set_rules('email', 'Email Address', "required|valid_email|max_length[100]|callback_email_check[$id]|trim"); 
		} else {
			$this->form_validation->set_rules('email', display('email'),'required|valid_email|is_unique[user.email]|max_length[100]');
		}
		#------------------------#
		$this->form_validation->set_rules('password', display('password'),'required|max_length[32]|md5');
		$this->form_validation->set_rules('about', display('about'),'max_length[1000]');
		$this->form_validation->set_rules('status', display('status'),'required|max_length[1]');
		/*-----------------------------------*/
        $config['upload_path']          = './assets/img/user/';
        $config['allowed_types']        = 'gif|jpg|png'; 

        $this->load->library('upload', $config);
 
        if ($this->upload->do_upload('image')) {  
            $data = $this->upload->data();  
            $image = $config['upload_path'].$data['file_name']; 

			$config['image_library']  = 'gd2';
			$config['source_image']   = $image;
			$config['create_thumb']   = false;
			$config['maintain_ratio'] = TRUE;
			$config['width']          = 115;
			$config['height']         = 90;
			$this->load->library('image_lib', $config);
			$this->image_lib->resize();
			$this->session->set_flashdata('message', display('image_upload_successfully'));
        }
		/*-----------------------------------*/
		$data['user'] = (object)$userLevelData = array(
			'id' 		  => $this->input->post('id'),
			'firstname'   => $this->input->post('firstname'),
			'lastname' 	  => $this->input->post('lastname'),
			'email' 	  => $this->input->post('email'),
			'password' 	  => md5($this->input->post('password')),
			'about' 	  => $this->input->post('about',true),
			'store_id' 	  => $this->input->post('store_id',true),
			'is_admin'    => $this->input->post('user_role',true),
			'image'   	  => (!empty($image)?$image:$this->input->post('old_image')),
			'last_login'  => null,
			'last_logout' => null,
			'ip_address'  => null,
			'status'      => $this->input->post('status')
		);

		/*-----------------------------------*/
		if ($this->form_validation->run()) {

	        if (empty($userLevelData['image'])) {
				$this->session->set_flashdata('exception', $this->upload->display_errors()); 
	        }

			if (empty($userLevelData['id'])) {
				if ($this->user_model->create($userLevelData)) {
					$id = $this->db->insert_id();
					$accesslog = array(
				'action_page'       =>	'User',
				'action_done'	    =>	'create',
				'remarks'		    =>	'User ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));
				}
				redirect("dashboard/user/form/");

			} else {
				if ($this->user_model->update($userLevelData)) {
					$accesslog = array(
				'action_page'       =>	'User',
				'action_done'	    =>	'update',
				'remarks'		    =>	'User ID :'.$userLevelData['id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception', display('please_try_again'));
				}

				redirect("dashboard/user/form/$id");
			}


		} else {
			$data['module'] = "dashboard";  
			$data['page']   = "user/form"; 
			$data['store']   = $this->user_model->store_list();
			$data['role_list']   = $this->user_model->role_list();
			if(!empty($id))
			$data['user']   = $this->user_model->single($id);
			echo Modules::run('template/layout', $data);
		}
	}

	public function delete($id = null)
	{ 
		if ($this->user_model->delete($id)) {
			$accesslog = array(
				'action_page'       =>	'User',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'User ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			$this->session->set_flashdata('message', display('delete_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect("dashboard/user/index");
	}
	################################ user role start #########################
	public function user_role_view()
	{   
        $this->permission->module('dashboard','read')->redirect();

		$data['title']    = display('user_role_setup'); 
		$data['roles']   = $this->user_model->viewRole();
		$data['module']   = "dashboard";
		$data['page']     = "user/role_view";   
		echo Modules::run('template/layout', $data); 
	} 

public function create_user_role($id = null)
	{ 
		$data['title'] = display('list_Role_setup');
		#-------------------------------#
		$this->form_validation->set_rules('user_id',display('user_id'),'required');
		$this->form_validation->set_rules('roleid',display('roleid'),'required|max_length[30]');
		
	    $user_id = $this->input->post('user_id');
	    $roleid = $this->input->post('roleid');
	    $create_by = $this->session->userdata('id');
		$create_date = date('Y-m-d h:i:s');
		#-------------------------------#
		$data['role_data'] = (Object) $postData = [
		            'id'           => $this->input->post('id'),
					'user_id'      => $user_id,
					'roleid' 	   => $roleid,
					'createby'     => $create_by,
					'createdate'   => $create_date
				];    
	  if ($this->form_validation->run()){
				
              if (empty($postData['id'])) {

        		$this->permission->method('dashboard','create')->redirect();
                
				if ($this->user_model->role_create($postData)) { 
					$id = $this->db->insert_id();
					$accesslog = array(
				'action_page'       =>	'User Role',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Role id :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('exception',  display('please_try_again'));
				} else {
					
					$this->session->set_flashdata('message', display('save_successfully'));
				}
				redirect("dashboard/user/user_role_view");

			} else {

        		$this->permission->method('dashboard','update')->redirect();

				if ($this->user_model->update_role($postData)) { 
					$accesslog = array(
				'action_page'       =>	'User Role',
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
				redirect("dashboard/user/create_user_role/".$postData['id']);  
			}

		} else {
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['role']   = $this->user_model->findById($id);
			}
			$data['module']    = "dashboard";
			$data['user_list'] = $this->user_model->dropdown();
			$data['role_list'] = $this->user_model->role_list();
			$data['roles']     = $this->user_model->viewRole();
			$data['page']      = "user/role_setupform"; 
			
			echo Modules::run('template/layout', $data);   
			
		}   
	}

	################### Update User Role Permission #####################
	public function update_user_role($id = null)
	{ 
		$data['title'] = display('list_Role_setup');
		#-------------------------------#
		$this->form_validation->set_rules('user_id',display('user_id'),'required');
		
	  if ($this->form_validation->run()){
				
       $this->permission->method('dashboard','update')->redirect();

				if ($this->user_model->update_role()) { 
					$accesslog = array(
				'action_page'       =>	'User Role',
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
				redirect("dashboard/user/create_user_role/".$postData['id']);  
		

		} else {
		
			$data['title'] = display('update');
			$data['role']   = $this->user_model->user_roles();
			$data['user']   = $this->user_model->single($id);
			$data['module']    = "dashboard";
			$data['page']      = "user/role_setupform_update"; 
			
			echo Modules::run('template/layout', $data);   
			
		}   
	}
public function delete_Rolesetup($id = null) 
	{ 
        $this->permission->module('dashboard','delete')->redirect();

		if ($this->user_model->Rolesetup_delete($id)) {
			$accesslog = array(
				'action_page'       =>	'User Role',
				'action_done'	    =>	'update',
				'remarks'		    =>	'Role id :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));

		}
		redirect("dashboard/user/user_role_view");
	}

	public function select_to_rol($id){

		$role_reult = $this->db->select('sec_role.*,sec_userrole.*')
						->from('sec_userrole')
						->join('sec_role','sec_userrole.roleid=sec_role.id')
						->where('sec_userrole.user_id',$id)
						->get()
						->result();

		if ($role_reult) {
			$html = "";
			foreach ($role_reult as $role) {
				$html .= "<p class='p'>$role->name</p>";
			}
		}
		echo json_encode($html);
	}
}
