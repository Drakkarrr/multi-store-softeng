<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stockmovment extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'Stockmovment_model'
		));		 
	}
 
	public function index()
	{   
        $this->permission->method('stockmovment','read')->redirect();
		$data['title']    = display('list'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('stockmovment/Stockmovment/index');
        $config["total_rows"]  = $this->Stockmovment_model->count_Stockmovment();
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
        $data["stockmovments"] = $this->Stockmovment_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "stockmovment";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  

 public function form($id = null)
	{ 
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('from_store', display('from_store')  ,'max_length[50]');
	    $createby=$this->session->userdata('id');
	    $storefor=$this->session->userdata('store_id');
		$createdate=date('Y-m-d H:i:s');
		
		#-------------------------------#
	       $data['Stockmovment']   = (Object) $postData = [ 
			'proposal_code'        => $this->input->post('proposal_code'), 
			'for_store_id'         =>  $this->input->post('for_store'),
			'from_store_id'        => $this->input->post('from_store'),
			'proposal_datetime'    => $this->input->post('proposal_datetime'),
			'proposal_by'          => $createby
		]; 

		if ($this->form_validation->run()) { 
//print_r($postData);exit;
			
        		$this->permission->method('stockmovment','create')->redirect();

				if ($this->Stockmovment_model->create($postData)) { 
					$id = $this->db->insert_id();
		// stock movement details
			$pro_id = $this->input->post('product_id');
			$pro_qty = $this->input->post('proposal_qty');
			
		for ($i=0, $n=count($pro_id); $i < $n; $i++) {
			
			$product_id       = $pro_id[$i];
			$product_quantity = $pro_qty[$i];
			$move_details = array(
				'movement_id'       =>	$id,
				'product_id'		=>	$product_id,
				'proposal_qty'	    =>	$product_quantity,
				
			);

			if(!empty($pro_id))
			{
				$this->db->insert('stock_movement_details',$move_details);
			}
		}
					$accesslog = array(
				'action_page'       =>	'Stockmovment',
				'action_done'	    =>	'create',
				'remarks'		    =>	'Stockmovment ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('stockmovment/Stockmovment/index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("stockmovment/Stockmovment/form"); 


		} else { 
			
			$data['module'] = "stockmovment";
			$text='p-';
			$data['proposal_code'] = $text.$this->number_generator();
			$data['store'] = $this->Stockmovment_model->store_list();
			$data['storesnd'] = $this->Stockmovment_model->second_store_list();
			$data['page']   = "form";   
			echo Modules::run('template/layout', $data); 
		}   
	}


// stock movement issue
	public function issue($id = null)
	{ 
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('from_store', display('from_store')  ,'max_length[50]');
	    $createby=$this->session->userdata('id');
	    $storefor=$this->session->userdata('store_id');
		$createdate=date('Y-m-d H:i:s');
		$is_approved =$this->session->userdata('isAdmin');
		#-------------------------------#
	       $data['Stockmovment']   = (Object) $postData = [ 
	       	'movement_id'          => $this->input->post('movement_id'), 
			'proposal_code'        => $this->input->post('proposal_code'), 
			'for_store_id'         =>  $this->input->post('for_store'),
			'from_store_id'        => $this->input->post('from_store'),
			'proposal_datetime'    => $this->input->post('proposal_datetime'),
			'proposal_by'          => $this->input->post('proposal_by'),
			'issue_by'             => $createby,
			'for_warehouse'        => 0,
			'from_warehouse'       => 0,
			'issue_code'           => $this->input->post('issue_code'),
			'issue_datetime'       => $createdate,
			'issue_remarks'        => $this->input->post('remark'),
			'is_issued'            => 1,
			'is_approved'          => $is_approved,
		]; 

	
		if ($this->form_validation->run()) { 
		    //	print_r($postData);exit;
	
        		$this->permission->method('stockmovment','update')->redirect();

				if ($this->Stockmovment_model->issued($postData)) { 
				
					$id = $this->input->post('movement_id');

		// stock movement details
			$pro_id = $this->input->post('product_id');
			$isu_qty = $this->input->post('total_qntt');
			$pro_qty = $this->input->post('prosal_qty');
		for ($i=0, $n=count($pro_id); $i < $n; $i++) {
			$product_id       = $pro_id[$i];
			$product_quantity = $isu_qty[$i];
			$proposal_qty =   $pro_qty[$i];
			$move_details = array(
				'movement_id'       =>	$id,
				'product_id'		=>	$product_id,
				'proposal_qty'      =>  $proposal_qty,
				'issue_qty'	        =>	$product_quantity,
				'received_qty'      =>   0,
			);
		
		
			if(!empty($pro_id))
			{
				 $this->db->where('movement_id',$id)
				 ->where('product_id',$product_id)
			     ->update('stock_movement_details',$move_details); 
				//$this->db->insert('stock_movement_details',$move_details);
			}
		}
		
					$accesslog = array(
				'action_page'       =>	'Stockmovment',
				'action_done'	    =>	'issue',
				'remarks'		    =>	'Stockmovment ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
					$this->session->set_flashdata('message', display('save_successfully'));
					redirect('stockmovment/Stockmovment/index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("stockmovment/Stockmovment/form"); 


		} else { 
			$data['module'] = "stockmovment";
			$data['store']         = $this->Stockmovment_model->store_list();
			$data['move_data']     = $this->Stockmovment_model->receive_move_data($id);
			$text='is-';
			$data['issue_code']    = $text.$id;
			$data['move_details']  = $this->Stockmovment_model->receive_details_data($id);
			$data['page']          = "issue_form";   
			echo Modules::run('template/layout', $data); 
		}   
	}
	public function delete($id = null) 
	{ 
        $this->permission->method('stockmovment','delete')->redirect();
		if ($this->Stockmovment_model->delete($id)) {
		     $this->db->where('movement_id',$id)
            ->delete('stock_movement_details');
			#set success message
			$accesslog = array(
				'action_page'       =>	'Stockmovment',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'Stockmovment ID :'.$id,
				'user_name'			=>	 $this->session->userdata('id'),
				'entry_date'	    =>	date('Y-m-d H:i:s')
			);
			$this->db->insert('accesslog',$accesslog);
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('stockmovment/Stockmovment/index');
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
			'Stockmovment_id'     => $id,
			'isactive' => $action
		);

		if ($this->Stockmovment_model->update($postData)) {
			$this->session->set_flashdata('message', display('update_successfully'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

	// product auto complete
	public function proposal_product(){

		$product_name 	= $this->input->post('product_name');
       	$product_info 	= $this->Stockmovment_model->proposal_product_search($product_name);

		$list[''] = '';
		foreach ($product_info as $value) {
			$json_product[] = array('label'=>$value['product_name'],'value'=>$value['product_id']);
		} 
		
        echo json_encode($json_product);
	}
// auto select value
		public function retrieve_product_data()
	{	
		$product_id = $this->input->post('product_id');
		$product_info = $this->Stockmovment_model->get_proposal_product($product_id);

		echo json_encode($product_info);
	}
public function number_generator()
	{
		
		$result = $this->db->select('MAX(movement_id) as proposal_code')->from('stock_movement')->get()->row();
		$proposal_code = $result->proposal_code;
		if (!empty($proposal_code)) {
			$proposal_code = $proposal_code + 1;	
		}else{
			$proposal_code ="0001";
		}
		return $proposal_code;		
	}
	// issue generator
	public function issue_generator()
	{
		
		$result = $this->db->select('*')->from('stock_movement')->order_by('proposal_datetime','desc')->get()->row();
		$iss_code = $result->movement_id;

		if ($iss_code !='') {
			$issue_code = $iss_code;	
		}else{
			$issue_code ="1";
		}
		return $issue_code;		
	}
// view detail s
	public function view($id = null) 
	{ 
        $this->permission->method('stockmovment','read')->redirect();
        $data['title'] = display('details');
		$data['moved'] =  $this->Stockmovment_model->findById($id);
		$data['movedtails'] = $this->Stockmovment_model->sdetails_view($id);
		$data['module'] = "stockmovment";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	}


 public function receive_form($id = null)
	{ 

		$this->form_validation->set_rules('for_store', display('for_store')  ,'max_length[50]');
	    $createby=$this->session->userdata('id');
	    $storefor=$this->session->userdata('store_id');
		$createdate=date('Y-m-d H:i:s');
		
		#-------------------------------#
	       $data['Stockmovment']   = (Object) $postData = [ 
	       	'movement_id'          => $this->input->post('movement_id'), 
			'proposal_code'        => $this->input->post('proposal_code'), 
			'for_store_id'         => $this->input->post('for_store'),
			'from_store_id'        => $this->input->post('from_store'),
			'proposal_by'          => $this->input->post('proposal_by'),
			'issue_by'             => $this->input->post('issue_by'),
			'for_warehouse'        => 0,
			'from_warehouse'       => 0,
			'issue_code'           => $this->input->post('issue_code'),
			'issue_remarks'        => $this->input->post('remark'),
			'is_issued'            => 1,
			'is_received'          => 1,
			'is_proposed'          =>1,
			'receive_by'           =>$createby,
			'receive_datetime'     => $createdate,
		]; 

		     if ($this->form_validation->run()) { 
				if ($this->Stockmovment_model->send_stock($postData)) { 
					$this->session->set_flashdata('message', display('send_successfully'));
					redirect('stockmovment/Stockmovment/index/');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("stockmovment/Stockmovment/receive_form/$id");
		} else { 
			
			$data['module'] = "stockmovment";
			$data['store']         = $this->Stockmovment_model->store_list();
			$data['move_data']     = $this->Stockmovment_model->receive_move_data($id);
			$data['move_details']  = $this->Stockmovment_model->receive_details_byuser($id);
			$data['page']          = "receive_form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

	//isapproved by super admin
 public function isapproved($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'movement_id' => $id,
			'is_approved' => $action
		);

		if ($this->Stockmovment_model->update($postData)) {
			$this->session->set_flashdata('message', display('successfully_approved'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}
	
	public function checkstock(){
	    $product_id = $this->input->post('product_id');
	    $qty = $this->input->post('qty');
	    $store_id = $this->input->post('store_id');
	    $id = 0;   
        $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem,@cat_id,@brand_id,@model_id)");

     $stock = $this->db->select('tmp_store_stock.*,sum(tmp_store_stock.InQty) as InQty,sum(tmp_store_stock.OutQty) as OutQty')
                          ->from('tmp_store_stock')
                          ->where('StoreID',$store_id)
                          ->where('ProdID',$product_id)
                          ->get()
                          ->row();
            $stock_qty = $stock->InQty-$stock->OutQty;
            
            if($stock_qty >= $qty){
                $data['status'] = 'true';
            }else{
                $data['status'] = 'false';
            }
            $data['stock'] = $stock_qty;
            echo json_encode($data);
	}

}
