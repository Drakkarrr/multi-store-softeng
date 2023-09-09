<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'product_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('product','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('product/product/index');
        $config["total_rows"]  = $this->product_model->count_product();
        $config["per_page"]    = 10;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["products"] = $this->product_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "product";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  

	/// active product list
	public function active_list()
	{   
        $this->permission->method('product','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('product/product/index');
        $config["total_rows"]  = $this->product_model->count_act_product();
        $config["per_page"]    = 10;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["products"] = $this->product_model->active_list($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "product";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	} 

// inactive product list
	public function inactive_list()
	{   
        $this->permission->method('product','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('product/product/index');
        $config["total_rows"]  = $this->product_model->count_inact_product();
        $config["per_page"]    = 10;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["products"] = $this->product_model->inactive_list($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "product";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	} 
 public function form($id = null)
	{  
		$this->permission->method('product','create')->redirect();
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('product_name', display('product_name')  ,'required|max_length[50]');
	
		$this->form_validation->set_rules('product_details', display('product_details')  ,'max_length[200]');
	    $createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		$model = $this->db->select('*')->from('product_model')->where('model_name',$this->input->post('model_name'))->get()->row();
		$category = $this->db->select('*')->from('product_category')->where('category_name',$this->input->post('category_name'))->get()->row();
		$brand = $this->db->select('*')->from('product_brand')->where('brand_name',$this->input->post('brand_name'))->get()->row();
		$unit = $this->db->select('*')->from('product_unit')->where('unit_name',$this->input->post('unit_name'))->get()->row();
		$ids = $this->input->post('product_id');
		$updatedby = (!empty($ids)?$this->session->userdata('id'):'');
		$updatdate = (!empty($ids)?date('Y-m-d H:i:s'):'');
		#-------------------------------#
	       $data['product']   = (Object) $postData = [
			'product_id' 	  => $this->input->post('product_id'), 
			'product_name'    => $this->input->post('product_name'),
			'product_code'    => $this->input->post('product_code'),
			'model'           => $model->model_id,
			'category'        => $category->category_id,
			'brand'           => $brand->brand_id,
			'unit'            => $unit->unit_id,
			'product_details' => $this->input->post('product_details'),
			'purchase_price'  => $this->input->post('purchase_price'),
			'block_price'     => $this->input->post('block_price'),
			'minimum_price'   => $this->input->post('minimum_price'),
			'retail_price'    => $this->input->post('retail_price'),
			'createby'        => $createby,
			'createdate'      => $createdate,
			'updateby'        => $updatedby,
			'updatedate'      => $updatdate,
			'isactive'        => 1, 
		]; 
		if ($this->form_validation->run()) { 

			if (empty($postData['product_id'])) {

        	$this->permission->method('product','create')->redirect();
        $this->db->select('*');
		$this->db->from('product');
		$this->db->where('isactive',1);
		$this->db->where('product_code',$this->input->post('product_code'));
		//$this->db->where('product_name',$this->input->post('product_name'));
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			$this->session->set_flashdata('exception',  display('please_choose_another_p_code'));
		}else{

				if ($this->product_model->create($postData)) { 
					$id = $this->db->insert_id();
					$accesslog = array(
				'action_page'       =>	'Product',
				'action_done'	    =>	'create',
				'remarks'		    =>	'product ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('product/product/index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
			}
				redirect("product/product/form"); 

			} else {

        		$this->permission->method('product','update')->redirect();

				if ($this->product_model->update($postData)) { 
					$accesslog = array(
				'action_page'       =>	'Product',
				'action_done'	    =>	'update',
				'remarks'		    =>	'product ID :'.$postData['product_id'],
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/form/".$postData['product_id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title']   = display('update');
			$data['products']    = $this->product_model->findById($id);
			}
			$data['module']      = "product";
			$text                ='pro-';
			$data['model']       = $this->product_model->model_dropdown();
			$data['unit']        = $this->product_model->unit_dropdown();
			$data['category']    = $this->product_model->category_dropdown();
			$data['brand']       = $this->product_model->brand_dropdown();
			$data['product_code']= $text.$this->code_generator();
			$data['page']        = "form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

	public function delete($id = null) 
	{ 
        $this->permission->method('product','delete')->redirect();

		if ($this->product_model->delete($id)) {
			#set success message
			$accesslog = array(
				'action_page'       =>	'Product',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'product ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('product/product/index');
	}


    /*
    |----------------------------------------------
    |        id genaretor
    |----------------------------------------------     
    */
    public function randID()
    {
        $result = ""; 
        $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

        $charArray = str_split($chars);
        for($i = 0; $i < 7; $i++) {
                $randItem = array_rand($charArray);
                $result .="".$charArray[$randItem];
        }
        return "P".$result;
    }

    public function isactive($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'product_id'     => $id,
			'isactive' => $action
		);

		if ($this->product_model->update($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
	// category information
	 public function categry_form($id = null)
	{ 
		$this->permission->method('product','create')->redirect();
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('category_name', display('category_name')  ,'required|max_length[50]');
		#-------------------------------#
	       $data['category']   = (Object) $postData = [
			'category_id' 	  => $this->input->post('category_id'), 
			'category_name'    => $this->input->post('category_name'),
			'isactive'        => 1, 
		]; 
		if ($this->form_validation->run()) { 

			if (empty($postData['category_id'])) {

        		$this->permission->method('product','create')->redirect();

				if ($this->product_model->create_category($postData)) { 
					$id = $this->db->insert_id();
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('product/product/category_index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/categry_form"); 

			} else {

        		$this->permission->method('product','update')->redirect();

				if ($this->product_model->update_catagory($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/categry_form/".$postData['category_id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['categorys']   = $this->product_model->findById_category($id);
			}
			$data['module'] = "product";
			$data['page']   = "categry_form";   
			echo Modules::run('template/layout', $data); 
		}   
	}


public function delete_category($id = null) 
	{ 
        $this->permission->method('product','delete')->redirect();

		if ($this->product_model->delete_category($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('product/product/category_index');
	}

	public function category_index()
	{   
        $this->permission->method('product','read')->redirect();
		$data['title']    = display('category_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('product/product/category_index');
        $config["total_rows"]  = 1;
        $config["per_page"]    = 25;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["categorys"] = $this->product_model->read_category($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "product";
		$data['page']   = "category_list";   
		echo Modules::run('template/layout', $data); 
	}  


	   public function isactive_category($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'category_id'     => $id,
			'isactive'        => $action
		);

		if ($this->product_model->update_catagory($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
	// Product model information

	 public function model_form($id = null)
	{ 
		$this->permission->method('product','create')->redirect();
		$data['title'] = display('add_model');
		#-------------------------------#
		$this->form_validation->set_rules('model_name', display('model_name')  ,'required|max_length[50]');
		#-------------------------------#
	       $data['model']   = (Object) $postData = [
			'model_id' 	  => $this->input->post('model_id'), 
			'model_name'    => $this->input->post('model_name'),
			'isactive'        => 1, 
		]; 
		if ($this->form_validation->run()) { 

			if (empty($postData['model_id'])) {

        		$this->permission->method('product','create')->redirect();

				if ($this->product_model->create_model($postData)) { 
					$id = $this->db->insert_id();
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('product/product/model_index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/model_form"); 

			} else {

        		$this->permission->method('product','update')->redirect();

				if ($this->product_model->update_model($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/model_form/".$postData['model_id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['models']   = $this->product_model->findById_model($id);
			}
			$data['module'] = "product";
			$data['page']   = "model_form";   
			echo Modules::run('template/layout', $data); 
		}   
	}


public function delete_model($id = null) 
	{ 
        $this->permission->method('product','delete')->redirect();

		if ($this->product_model->delete_model($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('product/product/model_index');
	}

	public function model_index()
	{   
        $this->permission->method('product','read')->redirect();
		$data['title']    = display('model_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('product/product/model_index');
        $config["total_rows"]  = 1;
        $config["per_page"]    = 25;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["models"] = $this->product_model->read_model($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "product";
		$data['page']   = "model_list";   
		echo Modules::run('template/layout', $data); 
	}  


	   public function isactive_model($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'model_id'        => $id,
			'isactive'        => $action
		);

		if ($this->product_model->update_model($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
	//product brand information

	 public function brand_form($id = null)
	{
	 $this->permission->method('product','create')->redirect();
		$data['title'] = display('add_brand');
		#-------------------------------#
		$this->form_validation->set_rules('brand_name', display('brand_name')  ,'required|max_length[50]');
		#-------------------------------#
	       $data['brand']   = (Object) $postData = [
			'brand_id' 	  => $this->input->post('brand_id'), 
			'brand_name'    => $this->input->post('brand_name'),
			'isactive'        => 1, 
		]; 
		if ($this->form_validation->run()) { 

			if (empty($postData['brand_id'])) {

        		$this->permission->method('product','create')->redirect();

				if ($this->product_model->create_brand($postData)) { 
					$id = $this->db->insert_id();
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('product/product/brand_index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/brand_form"); 

			} else {

        		$this->permission->method('product','update')->redirect();

				if ($this->product_model->update_brand($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/brand_form/".$postData['brand_id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['brands']   = $this->product_model->findById_brand($id);
			}
			$data['module'] = "product";
			$data['page']   = "brand_form";   
			echo Modules::run('template/layout', $data); 
		}   
	}


public function delete_brand($id = null) 
	{ 
        $this->permission->method('product','delete')->redirect();

		if ($this->product_model->delete_brand($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('product/product/brand_index');
	}

	public function brand_index()
	{   
        $this->permission->method('product','read')->redirect();
		$data['title']    = display('brand_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('product/product/brand_index');
        $config["total_rows"]  = 1;
        $config["per_page"]    = 25;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["brands"] = $this->product_model->read_brand($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "product";
		$data['page']   = "brand_list";   
		echo Modules::run('template/layout', $data); 
	}  


	   public function isactive_brand($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'brand_id'        => $id,
			'isactive'        => $action
		);

		if ($this->product_model->update_brand($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
	// unit mesurement information

	 public function unit_form($id = null)
	{ 
		$this->permission->method('product','create')->redirect();
		$data['title'] = display('add_unit');
		#-------------------------------#
		$this->form_validation->set_rules('unit_name', display('unit_name')  ,'required|max_length[50]');
		#-------------------------------#
	       $data['unit']   = (Object) $postData = [
			'unit_id' 	  => $this->input->post('unit_id'), 
			'unit_name'    => $this->input->post('unit_name'),
			'isactive'        => 1, 
		]; 
		if ($this->form_validation->run()) { 

			if (empty($postData['unit_id'])) {

        		$this->permission->method('product','create')->redirect();

				if ($this->product_model->create_unit($postData)) { 
					$id = $this->db->insert_id();
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('product/product/unit_index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/unit_form"); 

			} else {

        		$this->permission->method('product','update')->redirect();

				if ($this->product_model->update_unit($postData)) { 
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("product/product/unit_form/".$postData['unit_id']);  
			}
 

		} else { 
			if(!empty($id)) {
				$data['title'] = display('update');
				$data['units']   = $this->product_model->findById_unit($id);
			}
			$data['module'] = "product";
			$data['page']   = "unit_form";   
			echo Modules::run('template/layout', $data); 
		}   
	}


public function delete_unit($id = null) 
	{ 
        $this->permission->method('product','delete')->redirect();

		if ($this->product_model->delete_unit($id)) {
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('product/product/unit_index');
	}

	public function unit_index()
	{   
        $this->permission->method('product','read')->redirect();
		$data['title']    = display('unit_list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('product/product/unit_index');
        $config["total_rows"]  = 1;
        $config["per_page"]    = 25;
        $config["uri_segment"] = 4;
        $config["last_link"] = "Last"; 
        $config["first_link"] = "First"; 
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';  
        $config['full_tag_open'] = "<ul class='pagination col-xs pull-right'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["units"] = $this->product_model->read_unit($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "product";
		$data['page']   = "unit_list";   
		echo Modules::run('template/layout', $data); 
	}  


	   public function isactive_unit($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'unit_id'        => $id,
			'isactive'        => $action
		);

		if ($this->product_model->update_unit($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
	// product code generate
	public function code_generator()
	{
		
		$result = $this->db->select('*')->from('product')->order_by('product_id','desc')->get()->row();
		$p_code = $result->product_code;

		$product_code = substr($p_code,4);
		
		if ($product_code !='') {
			$product_code = $product_code + 1;	
		}else{
			$product_code ="1001";
		}
		return $product_code;		
	}

	// product update from list info
	public function update_product(){
		$this->permission->method('product','update')->redirect();
	    $pid         = $this->input->post('product_id');
		$p_code      = $this->input->post('product_code');
		$p_name      = $this->input->post('product_name');
		$p_model     = $this->input->post('model');
		$p_unit      = $this->input->post('unit');
		$p_category  = $this->input->post('category');
		$p_brand     = $this->input->post('brand');
		$p_pur_price = $this->input->post('purchase_p');
		$p_min_p     = $this->input->post('minim_p');
		$p_ret_p     = $this->input->post('retail_p');
		$p_bl_p      = $this->input->post('block_p');
        $p_dtails    = $this->input->post('product_details');
        $p_isac      = $this->input->post('isactive');
		for ($i=0, $n=count($pid); $i < $n; $i++) {
			$product_co   = $p_code[$i];
			$product_name = $p_name[$i];
			$product_id   = $pid[$i];
			$product_m    = $p_model[$i];
			$product_u    = $p_unit[$i];
			$product_c    = $p_category[$i];
			$product_b    = $p_brand[$i];
			$product_pp   = $p_pur_price[$i];
			$product_mp   = $p_min_p[$i];
			$product_rp   = $p_ret_p[$i];
			$product_bp   = $p_bl_p[$i];
			$product_dt   = $p_dtails[$i];
			$product_isa  = $p_isac[$i];
			$data = array(
				'product_id'        =>	$product_id,
				'product_name'		=>	$product_name,
				'product_code'		=>	$product_co,
				'category'	        =>	$product_c,
				'model'             =>  $product_m,
				'unit'              =>  $product_u,
				'brand'             =>  $product_b,
				'product_details'   =>  $product_dt,
				'purchase_price'    =>  $product_pp,
				'minimum_price'     =>  $product_mp,
				'retail_price'      =>  $product_rp,
				'block_price'       =>  $product_bp,
				'isactive'          =>  $product_isa,
			);  

			$this->db->where_in('product_id', $product_id)->update('product', $data);
		}
		  $this->session->set_flashdata('message', display('save_successfully'));
                    redirect($_SERVER['HTTP_REFERER']);
		}


}
