<script type="text/javascript">
function printDiv() {
    var divName = "printArea";
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;
    document.body.innerHTML = printContents;
    // document.body.style.marginTop="-45px";
    window.print();
    document.body.innerHTML = originalContents;
}
</script>
        <div class="row">
    <!--  table area -->
    <div class="col-sm-12">
<!-- number_format($leaseproduct->minimum_price,2,'.',',')
 -->       
  <div class="panel panel-default thumbnail"> 
<div id="printArea">
     <div class="panel-title">
                   <div class="row" style="margin: 25px 0 0;">
                    <div class="col-sm-6" style="width: 50%;float: left;">
                      <div class="image">
          
            <img src="<?php echo base_url((!empty($company->logo)?$company->logo:'assets/img/icons/default.jpg')) ?>" alt="User Image"><br>
            <?php echo $company->title;?>
            <br>
            <?php echo $company->address;?>
            <br>
            <?php echo 'Phone No : '. $company->phone;?>
             <br>
            <?php echo 'Email : '. $company->email;?>

        </div>
                    </div>
                    <div class="col-sm-6" style="width: 50%;float: left; text-align: right;">
                      <br><br>
            <?php echo 'Printed Date :'.date('d/m/Y H:i:s a');?>
            <br>
            <?php echo 'Printed By : '.$this->session->userdata('fullname');?>
            
                   </div>
                </div>
                <div class="text-center"><h1>STORE LEDGER</h1></div>
               
            <div class="panel-body">
                 
                     <?php 
                     foreach($store as $store){
                  foreach($product as $products){
    $this->db->select('purchase_receive.po_no as p_or_no,purchase_receive.*,purchase_receive_details.*');
    $this->db->from('purchase_receive');
    $this->db->join('purchase_receive_details','purchase_receive.receive_id=purchase_receive_details.receive_id');
    $this->db->where('purchase_receive_details.product_id',$products->product_id);
    $this->db->where('purchase_receive_details.store_id',$store->store_id);
    $this->db->where('purchase_receive.receive_date >=', $startdate);
    $this->db->where('purchase_receive.receive_date <=', $enddate);
    // $this->db->group_by('purchase_receive_details.store_id');
   // $this->db->group_by('purchase_receive_details.product_id');
   //$this->db->group_by('purchase_receive.receive_date');
    $resultss =  $this->db->get()->result();

    
    $this->db->select('sales_parent.*,sales_parent.invoice_no as inv_no,sales_parent.sale_type_id AS sale_type,sale_details.*,sale_details.qty as salsqty');
    $this->db->from('sale_details');
    $this->db->join('sales_parent','sale_details.sale_id=sales_parent.sale_id');
    $this->db->where('sale_details.product_id',$products->product_id);
    $this->db->where('sales_parent.store_id',$store->store_id);
    $this->db->where('sales_parent.sales_date >=', $startdate);
    $this->db->where('sales_parent.sales_date <=', $enddate);
    //$this->db->group_by('sales_parent.store_id');
    //$this->db->group_by('sale_details.product_id');
    $invoice =  $this->db->get()->result();

    $this->db->select('stock_movement.*,stock_movement_details.received_qty as in_m_qty,stock_movement_details.*');
    $this->db->from('stock_movement');
    $this->db->join('stock_movement_details','stock_movement.movement_id=stock_movement_details.movement_id');
    $this->db->where('stock_movement_details.product_id',$products->product_id);
    $this->db->where('stock_movement.for_store_id',$store->store_id);
    $this->db->where('stock_movement.receive_datetime >=', $startdate);
    $this->db->where('stock_movement.receive_datetime <=', $enddate);
    //$this->db->group_by('stock_movement.for_store_id');
   // $this->db->group_by('stock_movement_details.product_id');
    $stock_movement_in =  $this->db->get()->result();

    $this->db->select('sales_return.return_date as s_r_d,sales_return.*,sales_return.sale_type_id AS ret_sale_type,sales_return.invoice_no AS sale_inv_no,sales_return_details.qty as sreturn_qty');
    $this->db->from('sales_return');
    $this->db->join('sales_return_details','sales_return.sreturn_id=sales_return_details.sreturn_id');
    $this->db->where('sales_return_details.product_id',$products->product_id);
    $this->db->where('sales_return.store_id',$store->store_id);

    $this->db->where('sales_return.return_date >=', $startdate);
    $this->db->where('sales_return.return_date <=', $enddate);
   // $this->db->group_by('sales_return.store_id');
    //$this->db->group_by('sales_return_details.product_id');
    $sale_return =  $this->db->get()->result();

    $this->db->select('purchase_return.return_date as p_r_d,purchase_return.po_no AS po_ret_no,purchase_return.*,purchase_return_details.qty as pur_ret_qty,purchase_return_details.*');
    $this->db->from('purchase_return_details');
    $this->db->join('purchase_return','purchase_return_details.preturn_id=purchase_return.preturn_id');
    $this->db->where('purchase_return_details.product_id',$products->product_id);
    $this->db->where('purchase_return_details.store_id',$store->store_id);
    $this->db->where('purchase_return.return_date >=', $startdate);
    $this->db->where('purchase_return.return_date <=', $enddate);
   // $this->db->group_by('purchase_return_details.store_id');
    //$this->db->group_by('purchase_return_details.product_id');
    $purchase_return =  $this->db->get()->result();
         
    $this->db->select('stock_movement.*,stock_movement_details.issue_qty as ou_m_qty,stock_movement_details.*');
    $this->db->from('stock_movement');
    $this->db->join('stock_movement_details','stock_movement.movement_id=stock_movement_details.movement_id');
    $this->db->where('stock_movement_details.product_id',$products->product_id);
    $this->db->where('stock_movement.from_store_id',$store->store_id);
    $this->db->where('stock_movement.receive_datetime >=', $startdate);
    $this->db->where('stock_movement.receive_datetime <=', $enddate);
    //$this->db->group_by('stock_movement.from_store_id');
    //$this->db->group_by('stock_movement_details.product_id');
    $stock_movement_out =  $this->db->get()->result();
	//print_r($stock_movement_out);
            $repodetails = array_merge($resultss,$invoice,$stock_movement_in,$sale_return,$purchase_return,$stock_movement_out);





 

 $products = $this->db->select('*')->from('product')->where('product_id',$products->product_id)->get()->row();
 ?>
      
                       <div class="row">
                  <div class="col-sm-6" style="width: 50%;float: left;">
                   <b> <?php echo display('product_code');?>  : <span style="text-decoration: underline;"><?php echo $products->product_code;  ?></span></b>
                  </div>
                  <div class="col-sm-6" style="width: 50%;float: right; text-align: center;">
                     <b> <?php echo display('product_name');?>  : <span style="text-decoration: underline;"><?php echo $products->product_name;  ?></span></b><br>
                  </div>
                </div>

                <table width="100%" class="table table-striped table-bordered table-hover">
                   <caption> <h3>Store Name : <?php echo $store->store_name; ?></h3></caption>
                    <thead>
                        <tr>
                            <th rowspan="2" valign="top" class="text-center" width="12%"><?php echo display('date') ?></th> 
                            <th colspan="6" rowspan="2" valign="top" class="text-center"><?php echo 'Description' ?></th>
                            <th colspan="3" valign="top" class="text-center"><?php echo 'Received Qty';?></th>
                            <th colspan="3" valign="top" class="text-center"><?php echo 'Issue Qty';?></th>
                            <th rowspan="2" valign="top" class="text-center">Balance</th>
                        </tr> 
                        <tr>
                          <th valign="top" class="text-center" >PO</th>
                          <th valign="top" class="text-center" >Mov. Receive</th>
                          <th valign="top" class="text-center" >Sales Ret.</th>
                          <th valign="top" class="text-center" >Sale</th>
                        <th valign="top" class="text-center" >Mov. Issue</th>
                        <th valign="top" class="text-center" >Pur. Ret.</th></tr>
                       
                    </thead>
                    
                    <tbody>

<?php 
if(!empty($repodetails)){
$blan=0;
$total_in_amnt=0;
$total_out_amnt=0;
$balance = 0;     

                     foreach ($repodetails as $pdtails) {
$total_in_amnt = $pdtails->receive_qty+$pdtails->in_m_qty+$pdtails->sreturn_qty;
$total_out_amnt = $pdtails->salsqty+$pdtails->ou_m_qty+$pdtails->pur_ret_qty;
//$blan = $total_in_amnt-$total_out_amnt;
$balance_in = $blan+$total_in_amnt;
$balance_out = $blan-$total_out_amnt;
$balance +=($balance_in+$balance_out);?>
                           <tr>
                           	<td><?php  
                                  if(!empty($pdtails->receive_date)){
                                      echo $pdtails->receive_date;
                                    }else if(!empty($pdtails->proposal_datetime)){
                                      echo $pdtails->proposal_datetime;
                                    }else if(!empty($pdtails->sales_date)){
                                      echo $pdtails->sales_date;
                                    }else if(!empty($pdtails->s_r_d)){
                                      echo $pdtails->s_r_d;
                                    }else if(!empty($pdtails->p_r_d)){
                                      echo $pdtails->p_r_d;
                                    }
                                    ?></td>
                                    <td colspan="6">
                                    	<?php 
										if(!empty($pdtails->receive_date)){
											echo 'PO Receive for PO#'.$pdtails->p_or_no;
										}
										else if(!empty($pdtails->proposal_datetime)){
                                      		echo 'Goods Issue/Received for Proposal Code# '.$pdtails->proposal_code.' and Issue Code# ';
											if($stores->store_id == $pdtails->from_store_id){
											  echo ''.$pdtails->issue_code;
											}else{
											  echo $pdtails->issue_code;
											}
                                    	}
										else if(!empty($pdtails->sales_date)){
											if($pdtails->sale_type==1)
												echo 'Cash ';
											else if($pdtails->sale_type==2)
												echo 'Credit ';
											else
												echo 'Lease ';
                                      echo 'Sales for Invoice#'.$pdtails->inv_no;
                                    }else if(!empty($pdtails->s_r_d)){
										if($pdtails->ret_sale_type==1)
												echo 'Cash ';
											else if($pdtails->ret_sale_type==2)
												echo 'Credit ';
											else
												echo 'Lease ';
                                      echo 'Sales Return for Invoice#'.$pdtails->sale_inv_no;
                                    }else if(!empty($pdtails->p_r_d)){
                                      echo 'Purchase Return for PO#'.$pdtails->po_ret_no;
                                    }
										
										?>
                                    </td>
                             
                             <!-- -->
                             
                             <!-- -->
                             <td align="center"><?php echo $pdtails->receive_qty; ?></td>
                             <td align="center"><?php  echo $pdtails->in_m_qty;?></td>
                             <td align="center"><?php echo $pdtails->sreturn_qty;  ?></td>
                             <td align="center"><?php echo $pdtails->salsqty; ?></td>
                             <td align="center"><?php  echo $pdtails->ou_m_qty; ?></td>
                             <td align="center"><?php echo $pdtails->pur_ret_qty; ?></td>
                          <td align="center"><?php echo $balance; ?></td>
                                  </tr>
                        
                                  <?php } ?>
                                   <?php } ?> 
                    </tbody>
 
                </table>  <!-- /.table-responsive -->
                              
                         
                          <?php } ?> 
                           <?php } ?> 
            </div>
        </div>
      
        </div>
    </div>
      <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div>
</div>
</div>

