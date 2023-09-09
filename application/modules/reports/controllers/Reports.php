<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'reports_model'
		));		 
	}

	
	// Return Form 
	public function recover_report_form() 
	{ 
        $this->permission->method('reports','read')->redirect();
        $data['title'] = display('reports_form');
		$data['module'] = "reports";
		$data['store']   = $this->reports_model->store_list();
		$data['page']   = "form";   
		echo Modules::run('template/layout', $data); 
	}
// search recovery information
public function recover_search() 
	{ 
		$location = $this->input->post('location');
		$date = $this->input->post('sales_date');
		$from_date = $this->input->post('lease_from');
		$to_date = $this->input->post('lease_to');
		$greaterthan = $this->input->post('greaterthan');
		$lessthan = $this->input->post('lessthan');
		$equal = $this->input->post('equal');
		$data['gtthan'] = $greaterthan;
		$data['lsthan'] = $lessthan;
		$data['equal'] = $equal;
		$data['module'] = "reports";
		$data['output'] =  $this->reports_model->search_recovery($location,$date,$from_date,$to_date,$greaterthan,$lessthan,$equal);
		$data['store']   = $this->reports_model->store_list();
		$data['page']   = "form"; 
		echo Modules::run('template/layout', $data); 
	}

	//working this method....

    // recovery monthly summary report
    public function recovery_summary_report(){
        $report_date = $this->input->post('report_date');
        $date_rpt = (!empty($report_date)?$this->input->post('report_date'):date('Y-m'));
        $month = date("m",strtotime($date_rpt));
        $year  = date("Y",strtotime($date_rpt));
        $d  = 30;
        $data['year'] = $year;
        $data['month'] = $month;
        $data['d'] = $d;
        $data["total"]  = $this->reports_model->recovery_summary_report($month,$year);
        $data['store']  = $this->reports_model->monthly_store_list();
        $data['module'] = "reports";
        $data['page']   = "recovery_summary_report";
        echo Modules::run('template/layout', $data);
    }
    //recovery report daywise as per store
    public function recovery_summary_report_daywise(){
        $start_date = $this->input->post('start_date');
        $end_date = $this->input->post('end_date');
        $data['start_date'] = (!empty($start_date)?$this->input->post('start_date'):date('Y-m-01'));
        $data['end_date'] = (!empty($end_date)?$this->input->post('end_date'):date('Y-m-30'));
        $data['store'] = $this->reports_model->monthly_store_list();
        $data['module'] = "reports";
        $data['page']   = "summary_report_daywise";
        echo Modules::run('template/layout', $data);
    }
    // Over due analysis report
    public function over_due_analysis(){
        $data['module'] = "reports";
        $data['test'] = $this->reports_model->over_due_analysis();
        $data['page']   = "over_due_analysis";
        echo Modules::run('template/layout', $data);
    }
    //Branch Wise Over due Analysis information
    public function branchwise_ovdue_anly_details(){
        $data['module'] = "reports";
        $data['test'] = $this->reports_model->branch_due_analysis_details();
        $data['store'] = $this->reports_model->monthly_store_list();
        $data['page']   = "branch_due_analysis_report";
        echo Modules::run('template/layout', $data);
    }




    //search
    //recovery monthly summary report store wise
    public function recovery_summary_report_storewise(){
        $store_id = $this->input->post('store_id');
        if( $store_id == 0){
            redirect("reports/reports/recovery_summary_report/");
        }
        $data["total"] = $this->reports_model->recovery_summary_report_storewises($store_id);
        $data['store'] = $this->reports_model->monthly_store_list();
        $data['module'] = "reports";
        $data['page']   = "recovery_summary_report_storewise";
        echo Modules::run('template/layout', $data);
    }

    //Branch Wise Over due Analysis information
    public function branch_ovdue_anly_details(){
        $data['module'] = "reports";
        $id = $this->input->post('store_id');
        if($id == 0){
            redirect("reports/reports/branchwise_ovdue_anly_details/");
        }
        $data['test'] = $this->reports_model->branch_analysis_details($id);
        $data['store'] = $this->reports_model->monthly_store_list();
        $data['page']   = "branch_due_analysis_report";
        echo Modules::run('template/layout', $data);

    }


    //Over Due Analysis Details information
        public function overdue_anly_details($id){
        $data['module'] = "reports"; 
        $data['test'] = $this->reports_model->over_due_analysis_details($id);
        $data['page']   = "over_due_analysis_details";  
        echo Modules::run('template/layout', $data); 

        }
        public function overdue_anly_details2($id){
        $data['module'] = "reports"; 
        $data['test'] = $this->reports_model->over_due_analysis_details($id);
        $data['page']   = "ov_an_2";  
        echo Modules::run('template/layout', $data); 

        }
        public function overdue_anly_details4($id){
        $data['module'] = "reports"; 
        $data['test'] = $this->reports_model->over_due_analysis_details($id);
        $data['page']   = "ov_an_4";  
        echo Modules::run('template/layout', $data); 

        }
        public function overdue_anly_details7($id){
        $data['module'] = "reports"; 
        $data['test'] = $this->reports_model->over_due_analysis_details($id);
        $data['page']   = "ov_an_7";  
        echo Modules::run('template/layout', $data); 

        }
        public function overdue_anly_details10($id){
        $data['module'] = "reports"; 
        $data['test'] = $this->reports_model->over_due_analysis_details($id);
        $data['page']   = "ov_an_10";  
        echo Modules::run('template/layout', $data); 

        }
        public function overdue_anly_details12($id){
        $data['module'] = "reports"; 
        $data['test'] = $this->reports_model->over_due_analysis_details($id);
        $data['page']   = "ov_an_12";  
        echo Modules::run('template/layout', $data); 

        }
       public function stock_analysis_report(){
        $data['title'] = display('stock_analysis_report');
        $config["base_url"] = base_url('reports/reports/lease_package_pricing');
        $config["total_rows"]  = $this->reports_model->count_stock_analysis_report();
        $config["per_page"]    = 5;
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
        $data["links"] = $this->pagination->create_links();
        $data['module'] = "reports"; 
        $data['stock_cat'] = $this->reports_model->stock_analysis_report($config["per_page"], $page);
        $data['page']   = "stock_analysis";  
        echo Modules::run('template/layout', $data);     
            
        }
             
public function lease_package_pricing(){

$this->permission->method('reports','read')->redirect();
        $data['title']    = display('list'); 
        #-------------------------------#       
        #
        #pagination starts
        #
        $config["base_url"] = base_url('reports/reports/lease_package_pricing');
        $config["total_rows"]  = $this->reports_model->count_lease_package();
        $config["per_page"]    = 5;
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
        $data["links"] = $this->pagination->create_links();
        $data['title'] = display('lease_package_pricing');
        $data['module'] = "reports"; 
        $data['lease_pricing'] = $this->reports_model->lease_package_pricing($config["per_page"], $page);
        $data['page']   = "lease_pricing";  
        echo Modules::run('template/layout', $data);  
}

public function procedure(){

        $data['stockinfo'] = $this->reports_model->stock();
        $data['module'] = "reports";
        $data['page']   = "view";   
        echo Modules::run('template/layout', $data); 
        }

        // stock History Report

   public function stock_history_report(){

        $this->permission->method('reports','read')->redirect();
        #-------------------------------#       
        #
        #pagination starts
        #
        $config["base_url"] = base_url('reports/reports/stock_history_report');
        $config["total_rows"]  = $this->reports_model->count_lease_package();
        $config["per_page"]    = 5;
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
        $data["links"] = $this->pagination->create_links();
        $data['stockhis'] = $this->reports_model->stock_history($config["per_page"], $page);
        $data['module'] = "reports";
        $data['page']   = "stock_history";   
        echo Modules::run('template/layout', $data); 
        }
// Product wise stock history
     public function product_stock_history(){
        $p_id = $this->input->post('product_id');
        $store_id = $this->input->post('store_id');
        //print_r($store_id);exit;
        $startdate = $this->input->post('start');
        $enddate = $this->input->post('end');
        $data['startdate'] = $startdate;
        $data['enddate'] = $enddate;
        $data['pro_id'] = $p_id;
        $data['s_id'] = $store_id;
        if($store_id !=='all'){
        $data['store'] = $this->reports_model->store_stock_history($store_id);
    }else{
        $data['store'] = $this->reports_model->stock_history();
        }
    if($p_id !=='all'){
        $data['product'] = $this->reports_model->product_stock_history($p_id);
    }else{
       $data['product'] = $this->reports_model->product_list();
        }

        $data['pstock'] = $this->reports_model->p_stock_history($p_id);
        $data['stores'] = $this->reports_model->storess($store_id);
        $data['company'] = $this->reports_model->company_info();
        //$data['repodetails'] = $this->reports_model->stock_history_details($store_id,$p_id,$startdate,$enddate);
        $data['module'] = "reports";
        $data['page']   = "product_stock_history";   
        echo Modules::run('template/layout', $data); 
        }
        public function store_stock_history_report(){
        $data['product'] = $this->reports_model->product_list();
        $data['store'] = $this->reports_model->stock_history();
        $data['module'] = "reports";
        $data['page']   = "store_stock_history";   
        echo Modules::run('template/layout', $data);
        }
}
