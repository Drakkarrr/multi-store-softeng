<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sale extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'sale_model'
		));		 
	}
 //cash sale 
	public function index()
	{   
        $this->permission->method('sale','read')->redirect();
		$data['title']    = display('cashsale'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('sale/sale/index');
        $config["total_rows"]  = $this->sale_model->count_sale();
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
        $data["sales"] = $this->sale_model->read($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "sale";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  
	// credit sale
	public function credit_sale()
	{   
        $this->permission->method('sale','read')->redirect();
		$data['title']    = display('creditsale'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('sale/sale/index');
        $config["total_rows"]  = $this->sale_model->count_credit_sale();
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
        $data["sales"] = $this->sale_model->credit_sale($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "sale";
		$data['page']   = "list";   
		echo Modules::run('template/layout', $data); 
	}  
	// lease sale
	public function lease_sale()
	{   
        $this->permission->method('sale','read')->redirect();
		$data['title']    = display('leasesale'); 
		#-------------------------------#		
		#
        #pagination starts
        #
        $config["base_url"] = base_url('sale/sale/index');
        $config["total_rows"]  = $this->sale_model->count_lease_sale();
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
        $data["sales"] = $this->sale_model->lease_sale($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        #
        #pagination ends
        #   
		$data['module'] = "sale";
		$data['page']   = "lease_sale_list";   
		echo Modules::run('template/layout', $data); 
	}  
//puchase data insert process
      public function form()
	      { 
	      	$this->permission->method('sale','create')->redirect();
		   $this->form_validation->set_rules('customer_id', display('customer_id')  ,'max_length[50]');
		
		     if ($this->form_validation->run()) { 
				if ($this->sale_model->create()) { 
					$this->session->set_flashdata('message', display('save_successfully'));
					if($this->input->post('sale_type') ==1){
					redirect('sale/sale/index/');
				}else if($this->input->post('sale_type') ==2){
                    redirect('sale/sale/credit_sale/');
				}else{
				    redirect('sale/sale/lease_sale/');	
				}
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("sale/sale/form");
 

		} else { 
			
			$data['title']       = display('create');	
			$data['module']      = "sale";
			$data['customer']    =  $this->sale_model->customer();
			$data['cr_customer'] =  $this->sale_model->cr_customer();
			$data['ls_customer'] =  $this->sale_model->ls_customer();
			$data['leasinfo']    =  $this->sale_model->leaseinf();
			$data['inquiry']     =  $this->sale_model->inquiry();
			$data['invoice_no']  =  $this->number_generator();
			$data['page']        = "form";   
			echo Modules::run('template/layout', $data); 
		}   
	}

 
	public function view($id = null) 
	{ 
        $this->permission->method('sale','read')->redirect();
        $data['title'] = display('sale');
		$data['sales'] =  $this->sale_model->findById($id);
		$sls_inf = $this->db->select('store_id')->from('sales_parent')->where('sale_id',$id)->get()->row();
		$data['s_info'] = $this->db->select('*')->from('store')->where('store_id',$sls_inf->store_id)->get()->row();
		$data['printby'] = $this->db->select('*')->from('user')->where('id',$this->session->userdata('id'))->get()->row();
		$data['saledts'] = $this->sale_model->sdetails_view($id);
		$data['storeinfo'] = $this->sale_model->storinfo();
		$data['module'] = "sale";
		$data['page']   = "view";   
		echo Modules::run('template/layout', $data); 
	}


	public function delete($id = null) 
	{ 
        $this->permission->method('sale','delete')->redirect();

		if ($this->sale_model->delete($id)) {
			$accesslog = array(
				'action_page'       =>	'sale ',
				'action_done'	    =>	'delete',
				'remarks'		    =>	'sales id'.'-'.$id,
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
		redirect('sale/sale/index');
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

   
// product auto complete
	public function product_search(){

		$product_name 	= $this->input->post('product_name');
       	$product_info 	= $this->sale_model->product_search_item($product_name);

		$list[''] = '';
		foreach ($product_info as $value) {
			$json_product[] = array('label'=>$value['product_name'],'value'=>$value['product_id']);
		} 
		
        echo json_encode($json_product);
	}
	//lease packege Product search
	// product auto complete
	public function lease_product_search(){

		$product_name 	= $this->input->post('product_name');
		$lease_id 	    = $this->input->post('lease_id');
       	$product_info 	= $this->sale_model->lease_product_search_item($product_name,$lease_id);

		$list[''] = '';
		foreach ($product_info as $value) {
			$json_product[] = array('label'=>$value['product_name'],'value'=>$value['product_id']);
		} 
		
        echo json_encode($json_product);
	}
//product info ajax data
	public function retrieve_product_data()
	{	
		$product_id = $this->input->post('product_id');
		$product_info = $this->sale_model->get_total_product($product_id);

		echo json_encode($product_info);
	}
	//lease product data info ajax data
	public function retrieve_lease_product_data()
	{	$lease_id = $this->input->post('lease_id');
		$product_id = $this->input->post('product_id');
		$product_info = $this->sale_model->get_lease_product($product_id,$lease_id);

		echo json_encode($product_info);
	}


//isapproved by super admin
 public function isapproved($id = null, $action = null)
	{
		$action = ($action=='active'?1:0);

		$postData = array(
			'po_no'     => $id,
			'isapproved' => $action
		);

		if ($this->sale_model->update($postData)) {
			$this->session->set_flashdata('message', display('successfully_approved'));
		} else {
			$this->session->set_flashdata('exception', display('please_try_again'));
		}

		redirect($_SERVER['HTTP_REFERER']);
	}

  
	//order update form
	 public function sales_up_form($id = null)
    {  
        $this->permission->method('sale','update')->redirect();
		   $this->form_validation->set_rules('customer_id', display('customer_id')  ,'max_length[50]');
		     if ($this->form_validation->run()) { 
				if ($this->sale_model->update_sale()) { 
					$this->session->set_flashdata('message', display('update_successfully'));
					redirect('sale/sale/index');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("sale/sale/form");
		} else { 
        $data['title']    = display('update');
		$data['sales']    =  $this->sale_model->findById($id);
		$data['saledts']  =  $this->sale_model->sdetails_view($id);
		$data['customer'] =  $this->sale_model->customer();
		$data['module']   = "sale";
		$data['page']     = "sale_update_form";   
		echo Modules::run('template/layout', $data);
    }
}

// Lease Sale update
 public function lease_sales_up_form($id = null)
    {  
        $this->permission->method('sale','update')->redirect();
		   $this->form_validation->set_rules('customer_id', display('customer_id')  ,'max_length[50]');
		     if ($this->form_validation->run()) { 
				if ($this->sale_model->lease_update()) { 
					$this->session->set_flashdata('message', display('update_successfully'));
					redirect('sale/sale/lease_sale');
				} else {
					$this->session->set_flashdata('exception',  display('please_try_again'));
				}
				redirect("sale/sale/form");
		} else { 
        $data['title']    = display('update');
		$data['sales']    =  $this->sale_model->findById($id);
		$data['saledts']  =  $this->sale_model->sdetails_view($id);
		$data['customer'] =  $this->sale_model->ls_customer();
		$data['leasinfo'] =  $this->sale_model->leaseinf();
		$data['gurrantor']=  $this->sale_model->ls_gurrantor();
		$data['inquiry']  =  $this->sale_model->inquiry();
		$data['module']   = "sale";
		$data['page']     = "lease_sale_update";   
		echo Modules::run('template/layout', $data);
    }
}

public function number_generator()
	{
		$this->db->select_max('invoice_no', 'invoice_no');
		$query = $this->db->get('sales_parent');	
		$result = $query->result_array();	
		$invoice_no = $result[0]['invoice_no'];
		if ($invoice_no !='') {
			$invoice_no = $invoice_no + 1;	
		}else{
			$invoice_no = 1000;
		}
		return $invoice_no;		
	}

	// lease sale 
	public function insert_lease_sale()
	{
      $this->permission->method('sale','credit')->redirect();
		$lease_id = $this->input->post('lease_id');
		
		$lease = $this->db->select('a.*,b.product_name,b.retail_price')
						->from('lease_product_map a')
						->join('product b','a.product_id=b.product_id')
						->where('a.lease_id',$lease_id)
						->get()
						->result();

		if ($lease) {
			$tr = "";
			$sl=0;
			foreach ($lease as $leases) {
			$this->db->select('SUM(a.receive_qty) as total_purchase');
			$this->db->from('purchase_receive_details a');
			$this->db->where_in('a.product_id',$leases->product_id);
			$total_purchase = $this->db->get()->row();

			$this->db->select('SUM(b.qty) as total_sale');
			$this->db->from('sale_details b');
			$this->db->where_in('b.product_id',$leases->product_id);
			$total_sale = $this->db->get()->row();

			$available_quantity = ($total_purchase->total_purchase - $total_sale->total_sale);
				$sl++;
				$tr .= "<tr id=\"row_".$sl."\">
						<td class=\"\" style=\"width:220px\">

							 <input type=\"text\" name=\"product_name\" required class=\"form-control product_name productSelection\" value=\"$leases->product_name\"  onkeyup=\"ls_product_sale_list(".$sl.")\"  id=\"ls_product_name_".$sl."\" tabindex=\"5\" >

							 <input type=\"hidden\" class=\"autocomplete_hidden_value product_id_".$sl."\" name=\"product_id[]\" value = \"$leases->product_id\" id=\"SchoolHiddenId\"/>

                                            <input type=\"hidden\" class=\"sl\" value=\"".$sl."\"/>
						</td>
						
                    
						<td style=\"width:85px\">
							  <input type=\"text\" id=\"ls_available_quantity_".$sl."\" class=\"form-control text-right stock_ctn_".$sl."\" value = \"".$available_quantity."\" placeholder=\"0.00\" readonly/>
						</td>

						<td>
							
							  <input type=\"text\" name=\"product_quantity[]\" id=\"ls_quantity_".$sl."\" class=\"form-control text-right store_cal_".$sl."\" onkeyup=\"calculate_lssal(".$sl."),checklsqty(".$sl.");\" onchange=\"calculate_lssal(".$sl.");\" placeholder=\"0.00\" value=\"\" min=\"0\" tabindex=\"8\" required=\"required\"/>
						</td>

						<td>
						 	
						 	  <input type=\"text\" name=\"product_rate[]\" onkeyup=\"calculate_lssal(".$sl."),checklsqty(".$sl.");\" onchange=\"calculate_lssal(".$sl.");\" id=\"ls_product_rate_".$sl."\" class=\"form-control ls_product_rate_".$sl." text-right\" placeholder=\"0.00\" value='".$leases->retail_price."' min=\"0\" tabindex=\"9\" required=\"required\" />
						</td>
						<td class=\"text-right\" style=\"width:100px\">
							  <input class=\"form-control total_ls_price text-right\" type=\"text\" id=\"ls_total_price_".$sl."\" name=\"total_price[]\" value=\"0.00\"  />
						</td>

						<td>

                            <button style=\"text-align: right;\" class=\"btn btn-danger\" type=\"button\" value='".display('delete')."' onclick=\"deleteRow(this)\">"."<i class=\"fa fa-close\" aria-hidden=\"true\"></i>"."</button>
						</td>
					</tr>";
			

			}
		}
		echo $tr;
	}	

	
//entry gurantor
	public function gurantor_insert($id = null)
	{  $this->permission->method('sale','create')->redirect();
		$data['title'] = display('add');
		#-------------------------------#
		$this->form_validation->set_rules('gurrantor_name', display('gurrantor_name')  ,'required|max_length[50]');
		$this->form_validation->set_rules('store_id', display('store_id')  ,'max_length[30]');
		$this->form_validation->set_rules('job_designation', display('job_designation')  ,'max_length[100]');	
	    $createby=$this->session->userdata('id');
		$createdate=date('Y-m-d H:i:s');
		
		#-------------------------------#
	    $data['gurrantors1']   = (Object) $postData1 = [
			'gurrantor_code'    => $this->input->post('gurrantor_code_two'),
			'gurrantor_name'    => $this->input->post('gurrantor_name_two'), 
			'gurrantor_phone'   => $this->input->post('gurrantor_phone_two'),
			'store_id' 	        => $this->session->userdata('store_id'), 
			'job_designation'   => $this->input->post('job_designation_two'), 
			'gurrantor_address' => $this->input->post('gurrantor_address_two'), 
			'gurrantor_cnic'    => $this->input->post('gurrantor_cnic_two'),
			'business_address' => $this->input->post('business_address_two'),  
			'isactive'         => 1,
			'createby'         => $createby,
			'createdate'       => $createdate,
		]; 
         

         $this->db->insert('gurrantor',$postData1);

		$data['gurrantors']   = (Object) $postData2 = [
			'gurrantor_code'    => $this->input->post('gurrantor_code'),
			'gurrantor_name'    => $this->input->post('gurrantor_name'), 
			'gurrantor_phone'   => $this->input->post('gurrantor_phone'),
			'store_id' 	        => $this->session->userdata('store_id'), 
			'job_designation'   => $this->input->post('job_designation'), 
			'gurrantor_address' => $this->input->post('gurrantor_address'), 
			'gurrantor_cnic'    => $this->input->post('gurrantor_cnic'),
			'business_address' => $this->input->post('business_address'),  
			'isactive'         => 1,
			'createby'         => $createby,
			'createdate'       => $createdate,
		]; 

		
		if ($this->form_validation->run()) { 

        		$this->permission->method('sale','create')->redirect();
                
				if ($this->sale_model->create_gurrantor($postData2)) { 
					$id = $this->db->insert_id();
					
			    $sdata['id'] = $id;
			    $sdata['id2'] = $id-1;
			    $sdata['d1']  = $postData1;
			    $sdata['name'] = $this->input->post('gurrantor_name_two');
			    $sdata['name2'] = $this->input->post('gurrantor_name');
				$sdata['message'] = 'Successfully save ';
					echo json_encode($sdata);
				} else {
					$data['exception'] = 'Some thing mistake !';
	        	echo json_encode($data);

				}
			
		}else { 
			$data['exception'] = validation_errors();
	        //Json encode for user data
        	echo json_encode($data);
		}   
	}
// lease percentage lease_id wise
	public function lease_percent($id){

		$lsper = $this->db->select('*')
						->from('lease')
						->where('lease_id',$id)
						->get()
						->row();

		
			$leasper="<input type='hidden' value='$lsper->advance' id='l_advance'>
			<input type='hidden' value='$lsper->markup' id='l_markup'><input type='hidden' value='$lsper->lease_duration' id='l_duration'>";
			
			


		echo json_encode($leasper);
	}

	// add new customer
	public function new_customer($id = null)
	{
        $coa = $this->sale_model->headcode();
        if($coa->HeadCode!=NULL){
            $headcode=$coa->HeadCode+1;
        }
        else{
            $headcode="1020301000001";
        }


        $data['title'] = display('add');
        #-------------------------------#
        $this->form_validation->set_rules('customer_name', display('customer_name')  ,'required|max_length[50]');
        $this->form_validation->set_rules('job_designation', display('job_designation')  ,'max_length[100]');
        $this->form_validation->set_rules('customer_cnic', 'CUSTOMER CNIC', 'is_unique[customer.customer_cnic]');
        $createby=$this->session->userdata('id');
        $createdate=date('Y-m-d H:i:s');

        $c_code = $this->input->post('customer_code');
        $c_name = $this->input->post('customer_name');
        $c_acc=$c_code.'-'.$c_name;
        #-------------------------------#
     $data['customerss']   = (Object) $postDatacus = [
            'customer_code'    => $this->input->post('customer_code'),
            'customer_name'    => $this->input->post('customer_name'),
            'customer_phone'   => $this->input->post('customer_phone'),
            'type'             => $this->input->post('customer_type'),
            'job_designation'  => (!empty($this->input->post('job_designation'))?$this->input->post('job_designation'):'null'),
            'store_id'         => $this->session->userdata('store_id'),
            'customer_address' => (!empty($this->input->post('customer_address'))?$this->input->post('customer_address'):'null'),
            'customer_cnic'    => $this->input->post('customer_cnic'),
            'business_address' => (!empty($this->input->post('business_address'))?$this->input->post('business_address'):'null'),
            'isactive'         => 1,
            'createby'         => $createby,
            'createdate'       => $createdate,
        ];


        $data['aco']   = (Object) $postData1 = [
            'HeadCode'         => $headcode,
            'HeadName'         => $c_acc,
            'PHeadName'        => 'Customer Receivable',
            'HeadLevel'        => '4',
            'IsActive'         => '1',
            'IsTransaction'    => '1',
            'IsGL'             => '0',
            'HeadType'         => 'A',
            'IsBudget'         => '0',
            'IsDepreciation'   => '0',
            'DepreciationRate' => '0',
            'CreateBy'         => $createby,
            'CreateDate'       => $createdate,
        ];

        if ($this->form_validation->run()){

            $this->permission->method('sale','create')->redirect();
             
            $this->sale_model->create_coa($postData1);
           
            if ($this->sale_model->create_customer($postDatacus)){
                $id = $this->db->insert_id();
                $sdata['id'] = $id;
                $sdata['type'] = $this->input->post('customer_type');
                $sdata['name'] = $this->input->post('customer_name');
                $sdata['coadata'] =$postData1;
                $sdata['message'] = 'Successfully saved ';
                $sdata['cusomer'] = $postDatacus;
                echo json_encode($sdata);
            }

            else {
                $data['exception'] = 'Some thing mistake !';
                echo json_encode($data);

            }
        }
        else {
            $data['exception'] = validation_errors();
            //Json encode for user data
            echo json_encode($data);
        }
	}
	public function customer_code($id){

		$result = $this->db->select('*')->from('customer')->where('store_id',$this->session->userdata('store_id'))->where('type',$id)->order_by('createdate','desc')->get()->row();
		$customer_code = $result->customer_code;

		$ccode = substr($customer_code,3);
		$cdata['c_code'] = $ccode+1; 
        $cdata['type'] =$id;

		echo json_encode($cdata);
	}

	// gurrantor code generation
	public function gurrantor_code(){

		$result = $this->db->select('gurrantor_code')->from('gurrantor')->where('store_id',$this->session->userdata('store_id'))->order_by('createdate','desc')->get()->row();
		$gurrantor_code = $result->gurrantor_code;

		$gcode = substr($gurrantor_code,3);
		$gdata['g_code'] = $gcode+1;
		$gdata['g_code2'] = $gcode+2;
		echo json_encode($gdata);
	}

	public function installmentpreview(){
       $lease_info=$this->input->post('leas_ids');
       $remainfo=$this->input->post('remainig');
      
		$lsper = $this->db->select('*')
						->from('lease')
						->where('lease_id',$lease_info)
						->get()
						->row();
						$month_number=date('m');
						$lease_duration = $lsper->lease_duration;
						 $ins_price = $remainfo/$lease_duration;
                $html = "";
				$html .="
				 <thead>
                       <tr style=\"background-color:silver\">
                              <th>SL#</th>
                              <th>Months</th>
                              <th>Installment (".$lease_duration.")</th>
                              <th>Remaining Balance</th>
                            </tr>
                        </thead>
                        <tbody>";

                       for ($x = 0; $x <= $lease_duration; $x++) {
                       	$reinstall = $remainfo-($ins_price*$x);
      $html .="<tr>
        <td>".$x."</td>
        <td>".date("F", mktime(0, 0, 0, $month_number+$x, 10))."</td>";
		if($x>0)
        	$html .="<td>".number_format($ins_price,2,'.',',')."</td>";
        else
			$html .="<td>0.00</td>";
		$html .="<td>".number_format($reinstall,2,'.',',')."</td>
      </tr>";
          } 

      $html .="</tbody>";

		echo $html;
	}
}
