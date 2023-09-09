<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Payment_model extends CI_Model {
 
	private $table = "payment_collection";


	public function create($data = [])
	{	 
		return $this->db->insert($this->table,$data);
	}

	public function read($limit = null, $start = null)
	{
		return $this->db->select("payment_collection.*,sales_parent.sale_type_id")
		    ->from('payment_collection')
		    ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
		    ->where('sales_parent.sale_type_id',2)
			->order_by('payment_collection.id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 
	public function recovery_list($limit = null, $start = null)
	{
		return $this->db->select("payment_collection.*,sales_parent.sale_type_id")
		    ->from('payment_collection')
		    ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
		    ->where('sales_parent.sale_type_id',3)
			->order_by('payment_collection.id', 'desc')
    		->limit($limit, $start)
			->get()
			->result();
	} 
 public function findById($id = null)
	{
		return $this->db->select("*")
			->from($this->table)
			->where('id',$id) 
			->get()
			->row();
	} 
 
	public function update($postData = [])
	{
		return $this->db->where('id',$postData['id'])
			->update($this->table,$postData); 
	} 



	public function delete($id = null)
	{
		$this->db->where('id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
	public function count_payment()
	{
		$query = $this->db->select("payment_collection.*,sales_parent.sale_type_id")
		    ->from('payment_collection')
		    ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
		    ->where('sales_parent.sale_type_id',2)
			->order_by('payment_collection.id', 'desc')
    		->limit($limit, $start)
			->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}

	public function count_recovery_payment()
	{
		$query = $this->db->select("payment_collection.*,sales_parent.sale_type_id")
		    ->from('payment_collection')
		    ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
		    ->where('sales_parent.sale_type_id',3)
			->order_by('payment_collection.id', 'desc')
    		->limit($limit, $start)
			->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	// customer over due analysis report info
	public function customer_over_due_info($limit = null, $start = null){
	   return $info = $this->db->select('sales_parent.*,customer.*')
                      ->from('sales_parent')
                      ->join('customer','sales_parent.customer_id=customer.customer_id')
                      ->group_by('sales_parent.invoice_no')
                      ->order_by('sales_parent.invoice_no','desc')
                      ->limit($limit, $start)
                      ->get()
                      ->result_array();
	}
	// count customer over due analysis
	public function count_customer_overdue(){
	    	$query = $this->db->select("*")
		    ->from('sales_parent')
			->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}
	// payment invoice information auto search
	public function invoice_src($invoice_no){
		$query=$this->db->select('*')
				->from('sales_parent')
				->where('sale_type_id',2)
				->like('invoice_no', $invoice_no, 'both')
				->group_by('invoice_no')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
// retrieve invoice data
		public function get_invoice_data($invoice_no){
		
        $invoice_infor = $this->db->select('sales_parent.*,customer.customer_name')
        ->from('sales_parent')
        ->join('customer','sales_parent.customer_id=customer.customer_id')
        ->where('sales_parent.invoice_no',$invoice_no)
        ->get()
        ->row();
        $payment_infor = $this->db->select('sum(receive_amnt) as receive')
        ->from('payment_collection')
        ->where('invoice_no',$invoice_no)
        ->get()
        ->row();
        $total = $invoice_infor->total_amnt;
        $paid  = $payment_infor->receive;
        $due = $total-$paid;
		$data2 = array(
			'remaining_amnt'  => $due,
			'customer_name'   => $invoice_infor->customer_name,
			'customer_id'     => $invoice_infor->customer_id,
			);

		return $data2;
	}

	// lease sale invoice search auto search
	public function ls_invoice_src($invoice_no){
		$query=$this->db->select('*')
				->from('sales_parent')
				->where('sale_type_id',3)
				->where('is_lease_settled',0)
				->like('invoice_no', $invoice_no, 'both')
				->group_by('invoice_no')
				->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}

	// retrieve recovery data
		public function get_recovery_data($invoice_no){
		
        $invoice_infor = $this->db->select('sales_parent.*,customer.customer_name,lease.lease_duration')
        ->from('sales_parent')
        ->join('customer','sales_parent.customer_id=customer.customer_id')
        ->join('lease','sales_parent.lease_id=lease.lease_id')
        ->where('sales_parent.invoice_no',$invoice_no)
        ->get()
        ->row();
        $payment_infor = $this->db->select('sum(receive_amnt) as receive,count(invoice_no) as inst_c,receive_date')
        ->from('payment_collection')
        ->where('invoice_no',$invoice_no)
        ->get()
        ->row();
      $payment_date = $this->db->select('*')
        ->from('payment_collection')
        ->where('invoice_no',$invoice_no)
        ->order_by('id','desc')
        ->get()
        ->row();
        $inf = $this->db->select('sales_parent.*,payment_collection.*,sum(receive_amnt) as totalreceive')
			                ->from('sales_parent')
			                ->join('payment_collection','sales_parent.invoice_no=payment_collection.invoice_no')
			                ->where('sales_parent.invoice_no',$invoice_no)
			                ->where('payment_collection.is_installment',1)
			                ->get()
			                ->row();
		   $salesdate = strtotime($inf->sales_date);
           $istallduration = '+'.$acc['lease_duration'].' '.'month';
           $firstinstallment = date("Y-m-d", strtotime("+1 month", $salesdate));
           $nummonth = "+".$acc['lease_duration']." "."month";
           $lastinstallment = date("Y-m-d", strtotime($nummonth, $salesdate));
           $currentdate = date('Y-m-d');
           $date1=$inf->sales_date;
           $date2=date('Y-m-d');
           $date_diff=strtotime($date2)-strtotime($date1);
           $total_acc = floor(($date_diff)/2628000);
           $overdues = ($total_acc*$inf->installment_amnt)-$inf->totalreceive;
        $total = $invoice_infor->total_amnt;
        $paid  = $payment_infor->receive;
        $inspaid = $paid-$invoice_infor->advance_amnt;
        $install_num  = $payment_infor->inst_c-1;
        ####-------final settlement and due--------#######
        $total_install = $invoice_infor->lease_duration;
        $current_date = date('Y-m-d');
        $last_receive_date = $payment_date->receive_date;
        $sales_date = $invoice_infor->sales_date;
        $final_settlmentdate = date('Y-m-d', strtotime("+$total_install months", strtotime($sales_date)));
        $d1 = strtotime($sales_date);
        $d2 = strtotime($final_settlmentdate);
        $install_time=date('m',$d2-$d1);
        $date1 = new DateTime($current_date);
        $date2 = new DateTime($last_receive_date);
        $no_of_day  = $date2->diff($date1)->format('%a');
        $lst_install_month=intval(($no_of_day)/32);
        $inls_late_due = $lst_install_month*$invoice_infor->installment_amnt;
        #########-------------------####
        if($lst_install_month > 0){
      $over_due = ($invoice_infor->installment_amnt*$install_num)+ $inls_late_due;
        }else{
        	 $over_due = $invoice_infor->installment_amnt*$install_num;
        }
        if($install_num > 0){
           $over_due_amont = ($inspaid-$over_due);
        }else{
        	$over_due_amont = 0;
        }

        if($over_due_amont > 0){
        	$overdue_total = $invoice_infor->installment_amnt-$over_due_amont;
        }else{
            $overdue_total = $invoice_infor->installment_amnt+$over_due_amont;
        }
      
       //$install_count = $payment_infor->inst_c;
       $final_installment_number = $total_install - $total_acc;
       
       $ins_disc=($invoice_infor->package_price-$invoice_infor->total_amnt)/$total_install;
       $settlement_discount = $ins_disc*$final_installment_number;

       $final_installment_price = $final_installment_number*$invoice_infor->installment_amnt;
      
       $require_install_no = $total_install-$total_acc;
       //date and installment info
       if($require_install_no > 1){
       	     $finstall_paid = ($final_installment_price-$settlement_discount)+$overdues;
       	}else{
       		 $finstall_paid = $invoice_infor->installment_amnt;
       	}
        $due = $total-$paid;
		$data2 = array(
			'remaining_amnt'    => $due,
			'customer_name'     => $invoice_infor->customer_name,
			'customer_id'       => $invoice_infor->customer_id,
			'installment_amnt'  => $invoice_infor->installment_amnt,
			'over_due'          => $overdues,
			'final_installment' => $finstall_paid,
		    'require_install_no'=> $final_installment_number,
		    'install_discount'  => $settlement_discount,
			);

		return $data2;
	}

// recovery monthly installment report
	public function monthly_installment_report(){

	return $this->db->select("payment_collection.*,sales_parent.installment_amnt,customer.customer_name")
		    ->from('payment_collection')
		    ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
		    ->join('customer','payment_collection.customer_id=customer.customer_id')
		    ->where('sales_parent.sale_type_id',3)
		    ->group_by("sales_parent.invoice_no")
			->get()
			->result_array();
	}

function calculate_grand_total_amount()
{
    $total_amount       = 0;
    $total_recovery     = 0;
    $surplus            = 0;  
    $total_over_due     = 0;
    $recovery                =  $this->db->select("payment_collection.*,sales_parent.installment_amnt,customer.customer_name")
		    ->from('payment_collection')
		    ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
		    ->join('customer','payment_collection.customer_id=customer.customer_id')
		    ->where('sales_parent.sale_type_id',3)
		    ->group_by("sales_parent.invoice_no")
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
				'total_over_due'    =>  $total_over_due 
				
			);
    return $data;
  }


  


}
