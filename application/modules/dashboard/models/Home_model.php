<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends CI_Model {


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
				user.user_types, 
				user.store_id, 
				IF (user.user_types=1, 'Super Admin', 'User') as user_level
			")
			->from('user')
			->where('email', $data['email'])
			->where('password', md5($data['password']))
			->get();
	}

	public function userPermission($id = null)
	{
		return $this->db->select("
			module.controller, 
			role_permission.fk_module_id, 
			role_permission.create, 
			role_permission.read, 
			role_permission.update, 
			role_permission.delete
			")
			->from('role_permission')
			->join('module', 'module.id = role_permission.fk_module_id', 'full')
			->where('role_permission.role_id', $id)
			->get()
			->result();
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

	public function profile($id = null)
	{
		return $this->db->select("
			*, 
				CONCAT_WS(' ', firstname, lastname) AS fullname,
				IF (user.is_admin=1, 'Super Admin', 'User') as user_level
			")
			->from("user")
			->where("id", $id)
			->get()
			->row();
	}

	public function setting($data = array())
	{
		return $this->db->where('id', $data['id'])
			->update('user', $data);
	}
	// user information
	public function total_user(){
    $t_user = $this->db->select('count(id) as total_user')->from('user')->get()->row();
    return $t_user;
	}
public function active_user(){
    $a_user = $this->db->select('count(id) as total_user')->from('user')->where('status',1)->get()->row();
    return $a_user;
	}
	public function total_customer(){
		$total_customer = $this->db->select('count(customer_id) as total_customer')->from('customer')->get()->row();
    return $total_customer;
	}
	// cash Customer
	public function cash_customer(){
		$cash_customer = $this->db->select('count(customer_id) as total_customer')->from('customer')->where('type',1)->get()->row();
    return $cash_customer;
	}
	// Credit Customer
	public function credit_customer(){
		$credit_customer = $this->db->select('count(customer_id) as total_customer')->from('customer')->where('type',2)->get()->row();
    return $credit_customer;
	}
	// Lease Customer
	public function lease_customer(){
		$lease_customer = $this->db->select('count(customer_id) as total_customer')->from('customer')->where('type',3)->get()->row();
    return $lease_customer;
	}
	// stores
	public function total_store(){
		$total_store = $this->db->select('count(store_id) as total_store')->from('store')->get()->row();
    return $total_store;
	}
	// active stores
	public function active_store(){
		$active_store = $this->db->select('count(store_id) as total_store')->from('store')->where('isactive',1)->get()->row();
    return $active_store;
	}
	// total Product
	public function total_product(){
		$total_product = $this->db->select('count(product_id) as total_product')->from('product')->get()->row();
    return $total_product;
	}

	// Active Product
	public function active_product(){
		$active_product = $this->db->select('count(product_id) as total_product')->from('product')->where('isactive',1)->get()->row();
    return $active_product;
	}

	// Total Cash Sale
	public function total_cash_sale(){
		$total_cash = $this->db->select('sum(total_amnt) as total_cash')->from('sales_parent')->where('sale_type_id',1)->get()->row();
    return $total_cash;
	}

	// Total Cash Sale
	public function total_credit_sale(){
		$total_credit = $this->db->select('sum(total_amnt) as total_credit')->from('sales_parent')->where('sale_type_id',2)->get()->row();
    return $total_credit;
	}

	// Total Lease Sale
	public function total_lease_sale(){
		$total_lease = $this->db->select('sum(total_amnt) as total_lease')->from('sales_parent')->where('sale_type_id',3)->get()->row();
    return $total_lease;
	}
	//Stock 
	public function stock_qty(){
     $id = 0;   
        $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem,@cat_id,@brand_id,@model_id)");

    $testquery = $this->db->select('sum(InQty) as InQty,sum(OutQty) as OutQty')
                          ->from('tmp_store_stock')
                          ->get()
                          ->row();
                          $stock = $testquery->InQty-$testquery->OutQty;
                          return $stock;
                         
  }
  // stock value
  public function stock_value(){
     $id = 0;   
        $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem,@cat_id,@brand_id,@model_id)");

     $stok_val = $this->db->select('tmp_store_stock.*,store.store_name,product.*,sum(tmp_store_stock.InQty) as InQty,sum(tmp_store_stock.OutQty) as OutQty')
                          ->from('tmp_store_stock')
                          ->join('store','tmp_store_stock.StoreID=store.store_id')
                          ->join('product','tmp_store_stock.ProdID=product.product_id')
                          ->group_by('tmp_store_stock.ProdID')
                          ->get()
                          ->result_array();
                         $total_stock_value = 0;
                         foreach ($stok_val as $value) {
                         	$stock = $value['InQty']-$value['OutQty'];
                            $stock_price = $stock*$value['retail_price'];
                            $total_stock_value +=$stock_price;
                         }
                         return $total_stock_value;
  }

  public function piecharinfo(){
  $cashinhand = $this->db->select('sum(Debit) as total_debit,sum(Credit) as total_credit')->from('acc_transaction')->like('COAID',1020101,'after')->get()->row();
  $cashinhandbalance = ($cashinhand->total_debit - $cashinhand->total_credit);

  $banktrans = $this->db->select('sum(Debit) as total_debit,sum(Credit) as total_credit')->from('acc_transaction')->like('COAID',1020102,'after')->get()->row();
  $bankbalance = ($banktrans->total_debit - $banktrans->total_credit);
  //10203
$receivable = $this->db->select('sum(Debit) as total_debit,sum(Credit) as total_credit')->from('acc_transaction')->like('COAID',10203,'after')->get()->row();
  $receivebalance = ($receivable->total_debit - $receivable->total_credit);

  $payable = $this->db->select('sum(Debit) as total_debit,sum(Credit) as total_credit')->from('acc_transaction')->like('COAID',50202,'after')->get()->row();
  $payblebalance = ($payable->total_debit - $payable->total_credit);

  $total = $cashinhandbalance+$bankbalance+$receivebalance+$payblebalance;
  $tch = round(($cashinhandbalance/$total)*100,2);
  $tbbl = round(($bankbalance/$total)*100,2);
  $trcb = round(($receivebalance/$total)*100,2);
  $tpyb = round(($payblebalance/$total)*100,2);

  $piechart = array(
  	'cashpie'       => $tch,
  	'bankpie'       => $tbbl,
  	'receivepie'    => $trcb,
  	'paybalepie'    => $tpyb,
  	'hcash'         => $cashinhandbalance,
  	'bankbal'       => $bankbalance,
  	'rcbbalence'    => $receivebalance,
  	'paybalance'    => $payblebalance

  );
  return $piechart;
  }
  // Over Due Analysis chart
  public function overdue_analysis(){
 $overduinvoice = $this->db->select('sales_parent.*,store.store_name')
                        ->from('sales_parent')
                        ->join('store','sales_parent.store_id = store.store_id')
                        ->where('sales_parent.is_lease_settled',0)
                        ->where('sales_parent.installment_amnt >',0)
                        ->get()
                        ->result_array();
 $total_du_acc1=0;
 $total_du_ac2 = 0;
 $total_amount1 = 0;
 $total_amount2 = 0;
 $total_du_ac4 = 0;
 $total_amount4 = 0;
 $total_du_ac7 = 0;
 $total_amount7 = 0;
 $total_du_ac10 = 0;
 $total_amount10 = 0;
 $total_du_ac12 = 0;
 $total_amount12 = 0;
    foreach ($overduinvoice as $overe_dueinvoiceno) { 
//echo $overe_dueinvoiceno['invoice_no'];
$information =  $this->db->select('payment_collection.*,sales_parent.*,sales_parent.installment_amnt')
                        ->from('payment_collection')
                        ->join('sales_parent','payment_collection.invoice_no = sales_parent.invoice_no')
                        //->join('lease','sales_parent.lease_id = lease.lease_id')
                        ->where('sales_parent.invoice_no',$overe_dueinvoiceno['invoice_no'])
                        ->order_by('payment_collection.id','desc')
                        ->get()
                        ->row();
                       $lease = $this->db->select('*')->from('lease')->where('lease_id',$information->lease_id)->get()->row();
//echo $information->receive_date;
           $salesdate = strtotime($information->sales_date);
           $istallduration = '+'.$lease->lease_duration.' '.'month';
           $firstinstallment = date("Y-m-d", strtotime("+1 month", $salesdate));
           $nummonth = "+".$lease->lease_duration." "."month";
           $lastinstallment = date("Y-m-d", strtotime($nummonth, $salesdate));
           $currentdate = date('Y-m-d');
 $date1=$information->receive_date;
 $date2=date('Y-m-d');
 $date_diff=strtotime($date2)-strtotime($date1);
$total_acc = floor(($date_diff)/2628000);
 // echo '<pre>';
 //  print_r($information->receive_date);
 //print_r($lastinstallment);
if($total_acc == 1 AND $lastinstallment > $currentdate){
 $total_du_acc1+= count($total_acc);
 
 $total_amount1 += $total_acc*$information->installment_amnt;
}
if($total_acc >= 2 AND $total_acc <= 3 AND $lastinstallment > $currentdate){
 $total_du_ac2+= count($total_acc);
 $total_amount2 += $total_acc*$information->installment_amnt;
}
if($total_acc >= 4 AND $total_acc <= 6 AND $lastinstallment > $currentdate){
 $total_du_ac4+= count($total_acc);
 $total_amount4 += $total_acc*$information->installment_amnt;
}
if($total_acc >= 7 AND $total_acc <= 9 AND $lastinstallment > $currentdate){
 $total_du_ac7+= count($total_acc);
 $total_amount7 += $total_acc*$information->installment_amnt;
}

if($total_acc >= 10 AND $total_acc <= 12 AND $lastinstallment > $currentdate){
 $total_du_ac10+= count($total_acc);
 $total_amount10 += $total_acc*$information->installment_amnt;
}       
  

if($total_acc > 0 AND  $lastinstallment < $currentdate ){
 $total_du_ac12+= count($total_acc);
 $total_amount12 += $total_acc*$information->installment_amnt;
}       
  } 
  $data = array(
  'total_du_acc1' => $total_du_acc1,
  'total_du_ac2'  => $total_du_ac2,
  'total_du_ac4'  => $total_du_ac4,
  'total_du_ac7'  => $total_du_ac7,
  'total_du_ac10' => $total_du_ac10,
  'total_du_ac12' => $total_du_ac12
  );
  return $data;

  }

  public function  monthly_sales_performance(){
   $start= date('Y-m-d', strtotime('-30 days'));
   $end = date('Y-m-d');
    $dates = array($start);
    while(end($dates) < $end){
        $dates[]= date('Y-m-d', strtotime(end($dates).' +1 day'));
        // $sales = $this->db->select('sum(total_amnt) as amount')->from('sales_parent')->where('sales_date',date('Y-m-d'))->group_by('sales_date')->get()->result();
    }
    //print_r($dates);exit();
    // 
 
 $data = array(
'dates' => $dates,
'sp_v' => $dates
 );
         
         return $data;                                
  }

}
 