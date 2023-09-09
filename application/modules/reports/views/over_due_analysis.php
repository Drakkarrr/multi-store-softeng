  
<style type="text/css">
th, td {
   text-align: center;
}
.thclass {
    text-decoration: underline;

}
</style>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>Over Due Analysis Report

                    </h4>
                </div>
            </div>

            <div class="panel-body">
 
                <div style="height:100%;overflow:auto;">
            <table class="datatable2 table table-bordered table-hover">
                <thead>
                  <tr  style="background-color: #E56717  ;color:white">
                    <th colspan="2" rowspan="2">Branches</th>
                    <th colspan="2">0-1</th>
                    <th colspan="2">2-3</th>
                    <th colspan="2">4-6</th>
                    <th colspan="2">7-9</th>
                    <th colspan="2">10-12</th>
                    <th colspan="2">12+</th>
                  </tr>
                   <tr style="background-color: #37a000 ;color:#fff">
                    <th>Ac</th>
                    <th>Am</th>
                    <th>Ac</th>
                    <th>Am</th>
                    <th>Ac</th>
                    <th>Am</th>
                    <th>Ac</th>
                    <th>Am</th>
                    <th>Ac</th>
                    <th>Am</th>
                    <th>Ac</th>
                    <th>Am</th>
                  </tr>

                      </thead>
                <tbody>
                  <?php foreach ($test as $store) {?>
<?php 
                  $overduinvoice = $this->db->select('sales_parent.*,store.store_name')
                        ->from('sales_parent')
                        ->join('store','sales_parent.store_id = store.store_id')
                        ->where('sales_parent.is_lease_settled',0)
                        ->where('sales_parent.installment_amnt >',0)
                        ->where('sales_parent.store_id',$store['store_id'])
                        ->get()
                        ->result_array();
                        //print_r($overduinvoice);
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

  ?>
<tr>
    <td colspan="2"><?php echo  $store['store_name'];?></td>
    <td><a href="<?php echo base_url("reports/reports/overdue_anly_details/".$store['store_id']) ?>"><?php  echo $total_du_acc1; ?></a></td>
    <td><?php echo $total_amount1;?></td>
    <td><a href="<?php echo base_url("reports/reports/overdue_anly_details2/".$store['store_id']) ?>"><?php echo $total_du_ac2; ?></a></td>
    <td><?php echo $total_amount2; ?></td>
    <td><a href="<?php echo base_url("reports/reports/overdue_anly_details4/".$store['store_id']) ?>"><?php echo $total_du_ac4; ?></a></td>
    <td><?php echo $total_amount4; ?></td>
    <td><a href="<?php echo base_url("reports/reports/overdue_anly_details7/".$store['store_id']) ?>"><?php echo $total_du_ac7; ?></a></td>
    <td><?php echo $total_amount7; ?></td>
    <td><a href="<?php echo base_url("reports/reports/overdue_anly_details10/".$store['store_id']) ?>"><?php echo $total_du_ac10; ?></a></td>
    <td><?php echo $total_amount10; ?></td>
    <td><a href="<?php echo base_url("reports/reports/overdue_anly_details12/".$store['store_id']) ?>"><?php echo $total_du_ac12; ?></a></td>
    <td><?php echo $total_amount12; ?></td>
  </tr>
                  <?php } ?>
                </tbody>
                      <tfoot></tfoot>
                    </table>
                </div>
            </div> 
        </div>
    </div>
</div>

