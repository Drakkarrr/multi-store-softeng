  
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
            <table class="datatable3 table table-bordered table-hover">
                <thead>
                  
                   <tr>
                    <th><?php echo display('invoice_no') ?></th>
                    <th><?php echo display('customer_name') ?></th>
                    <th><?php echo display('installment_amount') ?></th>
                     <th><?php echo display('over_due') ?></th>
                     <th><?php echo display('recovery') ?></th>
                      <th><?php echo  "Ac"; ?></th>
                      <th><?php echo  "Amount wise Achieve"; ?></th>
                      <th><?php echo  "Remaining Ac"; ?></th>
                      <th><?php echo  "Remaining Amount"; ?></th>
                  </tr>

                      </thead>
                <tbody>

                  <?php
// $info = $this->db->select('sales_parent.*,customer.*')
//                       ->from('sales_parent')
//                       ->join('customer','sales_parent.customer_id=customer.customer_id')
//                       ->group_by('sales_parent.invoice_no')
//                       ->get()
//                       ->result_array();
$totalinstall = 0;
$totaloverdue =0;
$total_recovery = 0;
$total_achieve_acc = 0;
$total_achieve_amount =0;
$total_remain_acc = 0;
$total_remain_amount = 0;

                   foreach ($info  as $customer) {
                    $totalinstall += $customer['installment_amnt'];
 ?>

<tr>
	<td><?php echo $customer['invoice_no'];?></td>
    <td><?php echo $customer['customer_name'];?></td>
    <td><?php echo  $customer['installment_amnt'];?></td>
    <td><?php 
      $inf = $this->db->select('sales_parent.*,payment_collection.*,sum(receive_amnt) as totalreceive,count(payment_collection.id) as ac_no')
                      ->from('sales_parent')
                      ->join('payment_collection','sales_parent.invoice_no=payment_collection.invoice_no')
                      ->where('sales_parent.invoice_no',$customer['invoice_no'])
                      ->where('YEAR(payment_collection.receive_date) <=',$y)
                      ->where('MONTH(payment_collection.receive_date) <=',$m)
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
           $date2=$y.'-'.$m.'-'.$d;
          // echo $date2;exit;
           $date_diff=strtotime($date2)-strtotime($date1);
           $total_acc = floor(($date_diff)/2628000);
           $overdues = ($total_acc*$inf->installment_amnt)-$inf->totalreceive;
          echo $overdues;
          $totaloverdue += $overdues;
          $total_recovery +=$inf->totalreceive;
          $total_achieve_amount += $inf->totalreceive;

           ?>
    </td>
    <td><?php   if(!empty($inf->totalreceive)){
      echo $inf->totalreceive;}else{ echo 0;}
      ?></td>
      <td><?php  if($inf->ac_no > 0){ 
        echo $achice_acc =1;
        $total_achieve_acc +=$achice_acc;
      }else{echo 0;}?></td>
       <td><?php   if(!empty($inf->totalreceive)){
      echo $inf->totalreceive;}else{ echo 0;}?></td>
       <td><?php if($inf->totalreceive < $overdues){
       echo  $remain_acc = 1;
        $total_remain_acc += $remain_acc;
       }else{
        echo 0;
       }  ?></td>
        <td><?php if($inf->totalreceive < $overdues){
        echo $total_remain = $overdues-$inf->totalreceive;
          $total_remain_amount +=$total_remain;
       }else{
        echo 0;
       }  ?></td>
  </tr>  <?php } ?>

                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="2">Total</td>
                    <td><?php echo $totalinstall; ?></td>
                    <td><?php echo $totaloverdue;?></td>
                    <td><?php echo  $total_recovery; ?></td>
                   <td><?php echo $total_achieve_acc;?></td>
                    <td><?php echo $total_achieve_amount;?></td>
                    <td><?php echo $total_remain_acc; ?></td>
                     <td><?php echo $total_remain_amount; ?></td>
                  </tr>
                </tfoot>
                   
                    </table>
                    <?= $links ?>
                </div>
            </div> 
        </div>
    </div>
</div>

