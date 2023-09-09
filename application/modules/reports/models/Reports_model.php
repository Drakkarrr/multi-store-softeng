<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Reports_model extends CI_Model {
 


 public function pur_return_list($limit = null, $start = null)
	{

		$this->db->select('purchase_return.*,supplier.supplier_name');
		$this->db->from('purchase_return');
		$this->db->join('supplier','purchase_return.supplier_id=supplier.supplier_id');
		$this->db->join('purchase_return_details','purchase_return.preturn_id=purchase_return_details.preturn_id');
		if($this->session->userdata('isAdmin')==0){
		$this->db->where('purchase_return_details.store_id',$this->session->userdata('store_id'));
		}
		$this->db->order_by('purchase_return.preturn_id', 'desc');
		$this->db->limit($limit, $start);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	} 
	// search listed recovery
	public function search_recovery($location = null,$date = null,$from_date = null,$to_date = null,$greaterthan = null,$lessthan = null,$equal = null){
    $this->db->select('*');
    $this->db->from('recovery_list');
    if(!empty($location)) {
        $this->db->where('store_id',$location);
    }
     if(!empty($date)) {
        $this->db->where('sales_date <=', $date);
    }
    if(!empty($to_date) AND !empty($from_date)) {
	   $this->db->where('sales_date >=', $from_date);
	   $this->db->where('sales_date <=', $to_date);
    }
    if(!empty($greaterthan)) {
       $this->db->where('over_due >', $greaterthan);
    }
    if(!empty($lessthan)) {
       $this->db->where('over_due <', $lessthan);
        $this->db->where('over_due >', 0);
    }
    if(!empty($equal)) {
       $this->db->where('over_due', $equal);
    }
    //$this->db->where('is_installment', 1);
    $query = $this->db->get();
// print_r($query->result_array());exit;
    return $query->result_array();
}

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
    /// monthly recovery summary report
  function recovery_summary_report($month = null,$year = null)
{
   $inf = $this->db->select('stoere_overdue.*,stoere_overdue.store_id,sum(stoere_overdue.receive_amnt) as totalreceive,count(stoere_overdue.invoice_no) as total_acc')
                      ->from('stoere_overdue')
                      ->where('YEAR(stoere_overdue.receive_date) <=',$year)
                      ->where('MONTH(stoere_overdue.receive_date) <=',$month)
                      ->where('stoere_overdue.is_installment',1)
                      ->group_by('stoere_overdue.store_id')
                      ->get()
                      ->result_array();
                      return $inf;

  }
    // store list for monthly report
  public function monthly_store_list(){
    return $this->db->select('*')
                ->from('store')
                ->where('isactive',1)
                ->get()
                ->result();
  }

  // recovery summary report store wise
   function recovery_summary_report_storewises($store_id)
{
    $total_amount       = 0;
    $total_recovery     = 0;
    $surplus            = 0;  
    $total_over_due     = 0;
    $recovery           =  $this->db->select("payment_collection.*,sum(sales_parent.installment_amnt) as installment_amnt,sales_parent.store_id,store.store_name,customer.customer_name")
            ->from('sales_parent')
            ->join('payment_collection','sales_parent.invoice_no=payment_collection.invoice_no')
            ->join('customer','payment_collection.customer_id=customer.customer_id')
            ->join('store','sales_parent.store_id=store.store_id')
            ->where('payment_collection.is_installment',1)
            ->where('sales_parent.sale_type_id',3)
            ->where('sales_parent.store_id',$store_id)
            ->group_by("sales_parent.store_id")
            ->get()
            ->result_array();
            
    foreach ($recovery as $row)
    {
            $total_amount  += $row['installment_amnt'];
            $total_recovery  += $row['receive_amnt'];
            $rcv_amnt =  $row['receive_amnt'];
            $inst_amnt = $row['installment_amnt'];
            $srup =  $inst_amnt-$rcv_amnt;
            $over_due = $row['installment_amnt'] + $srup;
            $total_over_due += $over_due;
            if($srup > 0){
            $surplus +=$srup;
            }else{
            $total_deficit +=$srup;
            }
    }
 
  $data = array(
                'total_installment' =>  $total_amount,
                'total_recovery'    =>  $total_recovery,
                'total_surplus'     =>  $surplus,
                'total_deficit'     =>  $total_deficit,
                'total_over_due'    =>  $total_over_due,
                'payments'          =>  $recovery,
                'store_id'          =>  $store_id,
                
            );
    return $data;
  }


  #################### Over Due Analysis information #######################
  public function over_due_analysis(){
 return  $overdue = $this->db->select('sales_parent.*,store.store_name')
                        ->from('sales_parent')
                        ->join('store','sales_parent.store_id = store.store_id')
                        ->where('sales_parent.is_lease_settled',0)
                        ->group_by('store.store_id')
                        ->get()
                        ->result_array();

  }
  #################### Over Due Analysis Details #####################
  public function over_due_analysis_details($id){
  
   $test = $this->db->select('*')
                        ->from('store')
                        ->where('store_id',$id)
                        ->group_by('store_id')
                        ->get()
                        ->result_array();

       foreach ($test as $store) {
       
 return $overduinvoice = $this->db->select('sales_parent.*,store.store_name')
                        ->from('sales_parent')
                        ->join('store','sales_parent.store_id = store.store_id')
                        ->where('sales_parent.is_lease_settled',0)
                        ->where('sales_parent.store_id',$store['store_id'])
                        ->get()
                        ->result_array();

                           


       }

  }
  ################ Branch Wise Over due Analysis Report ########
   public function branch_due_analysis_details(){
  
   return  $this->db->select('*')
                        ->from('store')
                        ->group_by('store_id')
                        ->get()
                        ->result_array();

  }

   ################ Branch Wise Over due Analysis Report(selected branch) ########
   public function branch_analysis_details($id){
  
          return  $this->db->select('*')
                        ->from('store')
                        ->where('store_id',$id)
                        ->group_by('store_id')
                        ->get()
                        ->result_array();

  }
   public function stock_analysis_report($limit = null, $start = null){       
         return  $this->db->select('*')
                              ->from('product_category')
                              ->limit($limit, $start)
                              ->get()
                              ->result_array();
                            
   }
   public function count_stock_analysis_report(){
                    $this->db->select('*');
                    $this->db->from('product_category');
                    $query = $this->db->get();
                    if ($query->num_rows() > 0) {
                      return $query->num_rows();  
                    }
                    return false;
   }
   // package pricing
   public function lease_package_pricing($limit = null, $start = null){
                       return  $this->db->select('*')
                              ->from('store')
                              ->where('isactive',1)
                               ->limit($limit, $start)
                              ->get()
                              ->result_array();
   }
   // store count for pagination
    public function count_lease_package(){
    $this->db->select('*');
    $this->db->from('store');
    $this->db->where('isactive',1);
    $query = $this->db->get();
    if ($query->num_rows() > 0) {
      return $query->num_rows();  
    }
    return false;
    }
//stock information
   public function stock(){
     $id = 0;   
        $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem,@cat_id,@brand_id,@model_id)");

    return $testquery = $this->db->select('tmp_store_stock.*,store.store_name,product.*,sum(tmp_store_stock.InQty) as InQty,sum(tmp_store_stock.OutQty) as OutQty')
                          ->from('tmp_store_stock')
                          ->join('store','tmp_store_stock.StoreID=store.store_id')
                          ->join('product','tmp_store_stock.ProdID=product.product_id')
                          ->group_by('tmp_store_stock.ProdID')
                          ->get()
                          ->result_array();
                         // echo '<pre>';
                         // print_r($testquery);exit;
  }

  // Stock History Report info
public function stock_history($limit = null, $start = null){
    return $stock_info = $this->db->select('*')
                           ->from('store')
                            ->where('isactive',1)
                            ->limit($limit, $start)
                            ->get()
                            ->result();
  }
    public function store_stock_history($store_id){
    return $sto = $this->db->select('*')
                           ->from('store')
                           ->where('store_id',$store_id)
                           ->get()
                           ->result();
  }
 
 public function p_stock_history($id){
    return $stock_info = $this->db->select('*')
                           ->from('product')
                           ->where('product_id',$id)
                           ->get()
                           ->row();
  }
  public function product_stock_history($p_id){
     return $p = $this->db->select('*')
                           ->from('product')
                           ->where('product_id',$p_id)
                           ->get()
                           ->result();
  }
  // Company information
  public function company_info(){
    return $companyinfo = $this->db->select('*')->from('setting')->get()->row();
  }

   public function product_list(){
    return $plist = $this->db->select('*')
                           ->from('product')
                           ->where('isactive',1)
                           ->get()
                           ->result();
  }
  /// stock history store by id
   // Stock History Report info
  public function storess($store_id){
     return $sst = $this->db->select('*')
                           ->from('store')
                           ->where('isactive',1)
                           ->where('store_id',$store_id)
                           ->get()
                           ->row();

  }
  public function stock_history_details($store_id = null,$p_id = null,$startdate = null,$enddate = null){

      
    $this->db->select('purchase_receive.po_no as p_or_no,purchase_receive.*,purchase_receive_details.*');
    $this->db->from('purchase_receive_details');
    $this->db->join('purchase_receive','purchase_receive_details.receive_id=purchase_receive.receive_id');
    if($p_id !== 'all'){
    $this->db->where('purchase_receive_details.product_id',$p_id);
    }
    if($store_id !== 'all'){
    $this->db->where('purchase_receive_details.store_id',$store_id);
  }
    $this->db->where('purchase_receive.receive_date >=', $startdate);
    $this->db->where('purchase_receive.receive_date <=', $enddate);
    $this->db->group_by('purchase_receive_details.store_id');
    $this->db->group_by('purchase_receive_details.product_id');
    $resultss =  $this->db->get()->result();
   
    $this->db->select('sales_parent.*,sales_parent.invoice_no as inv_no,sale_details.*,sale_details.qty as salsqty');
    $this->db->from('sale_details');
    $this->db->join('sales_parent','sale_details.sale_id=sales_parent.sale_id');
    if($p_id !== 'all'){
    $this->db->where('sale_details.product_id',$p_id);
  }
   if($store_id !== 'all'){
    $this->db->where('sales_parent.store_id',$store_id);
  }
    $this->db->where('sales_parent.sales_date >=', $startdate);
    $this->db->where('sales_parent.sales_date <=', $enddate);
    $this->db->group_by('sales_parent.store_id');
    $this->db->group_by('sale_details.product_id');
    $invoice =  $this->db->get()->result();

    $this->db->select('stock_movement.*,stock_movement_details.received_qty as in_m_qty,stock_movement_details.*');
    $this->db->from('stock_movement');
    $this->db->join('stock_movement_details','stock_movement.movement_id=stock_movement_details.movement_id');
    if($p_id !== 'all'){
    $this->db->where('stock_movement_details.product_id',$p_id);
  }
   if($store_id !== 'all'){
    $this->db->where('stock_movement.for_store_id',$store_id);
  }
    $this->db->where('stock_movement.proposal_datetime >=', $startdate);
    $this->db->where('stock_movement.proposal_datetime <=', $enddate);
    $this->db->group_by('stock_movement.for_store_id');
    $this->db->group_by('stock_movement_details.product_id');
    $stock_movement_in =  $this->db->get()->result();

    $this->db->select('sales_return.createdate as s_r_d,sales_return.*,sales_return_details.qty as sreturn_qty');
    $this->db->from('sales_return');
    $this->db->join('sales_return_details','sales_return.sreturn_id=sales_return_details.sreturn_id');
    if($p_id !== 'all'){
    $this->db->where('sales_return_details.product_id',$p_id);
  }
   if($store_id !== 'all'){
    $this->db->where('sales_return.store_id',$store_id);
  }
    $this->db->where('sales_return.return_date >=', $startdate);
    $this->db->where('sales_return.return_date <=', $enddate);
    $this->db->group_by('sales_return.store_id');
    $this->db->group_by('sales_return_details.product_id');
    $sale_return =  $this->db->get()->result();

    $this->db->select('purchase_return.createdate as p_r_d,purchase_return.*,purchase_return_details.qty as pur_ret_qty,purchase_return_details.*');
    $this->db->from('purchase_return_details');
    $this->db->join('purchase_return','purchase_return_details.preturn_id=purchase_return.preturn_id');
    if($p_id !== 'all'){
    $this->db->where('purchase_return_details.product_id',$p_id);
  }
   if($store_id !== 'all'){
    $this->db->where('purchase_return_details.store_id',$store_id);
  }
    $this->db->where('purchase_return.return_date >=', $startdate);
    $this->db->where('purchase_return.return_date <=', $enddate);
    $this->db->group_by('purchase_return_details.store_id');
    $this->db->group_by('purchase_return_details.product_id');
    $purchase_return =  $this->db->get()->result();
         
    $this->db->select('stock_movement.*,stock_movement_details.received_qty as ou_m_qty,stock_movement_details.*');
    $this->db->from('stock_movement');
    $this->db->join('stock_movement_details','stock_movement.movement_id=stock_movement_details.movement_id');
    if($p_id !== 'all'){
    $this->db->where('stock_movement_details.product_id',$p_id);
  }
   if($store_id !== 'all'){
    $this->db->where('stock_movement.from_store_id',$store_id);
  }
    $this->db->where('stock_movement.receive_datetime >=', $startdate);
    $this->db->where('stock_movement.receive_datetime <=', $enddate);
    $this->db->group_by('stock_movement.from_store_id');
    $this->db->group_by('stock_movement_details.product_id');
    $stock_movement_out =  $this->db->get()->result();

           return $query = array_merge($resultss,$invoice,$stock_movement_in,$sale_return,$purchase_return,$stock_movement_out);

  }

 
}
