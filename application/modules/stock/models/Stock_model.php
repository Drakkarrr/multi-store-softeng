<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Stock_model extends CI_Model {
	public function stock(){
		 $id = 0;   
        $this->db->query("CALL get_store_stock('".$id.",'@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem)");
		return $testquery = $this->db->select('tmp_store_stock.*,store.store_name,product.*,sum(tmp_store_stock.InQty) as InQty,sum(tmp_store_stock.OutQty) as OutQty')
		                      ->from('tmp_store_stock')
		                      ->join('store','tmp_store_stock.StoreID=store.store_id')
		                      ->join('product','tmp_store_stock.ProdID=product.product_id')
		                      ->group_by('product.product_id')
		                      ->get()
		                      ->result_array();
	}

	// Stock History Report info
	public function stock_history(){
		return $stock_info = $this->db->select('*')
		                       ->from('store')
		                       ->where('isactive',1)
		                       ->get()
		                       ->result();
	}
 
}
