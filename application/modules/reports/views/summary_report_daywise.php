<style type="text/css">
th, td {
   text-align: center;
}
.thclass {
    text-decoration: underline;
}
</style>
 <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('reports/reports/recovery_summary_report_daywise',array('class' => 'form-inline'))?>
                            <div class="form-group">
                                <label for="start_date">Start Date :</label>
                                <input type="text" name="start_date"  value="<?php echo date('Y-m-01') ?>" class="datepicker form-control" />
                            </div> 
                          <div class="form-group">
                                <label for="end_date">End Date :</label>
                                <input type="text" class="datepicker form-control" name="end_date" value="<?php echo date('Y-m-30') ?>"  />
                            </div> 
                            <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                          
                       <?php echo form_close()?>
                    </div>
                </div>
            </div>
        </div>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4 class="text-center">Recovery Day Wise Summary report
                    </h4><br>
                    <b class="text-center">  <?php echo 'From'.':'. $start_date.' '.'To'.':'. $end_date; 
                     
                 ?></b>
                </div>
            </div>

            <div class="panel-body">
 
                <div style="height:100%;overflow:auto;">
                    <table class="datatable2 table table-bordered table-hover">
                    	<thead><tr></tr></thead>
                     <tbody>
	               <tr style="background-color: #E56717  ;color:white"><td></td><?php $date = $start_date;
                        $end = $end_date; //get end date of month
                         while(strtotime($date) <= strtotime($end)) {
                         	$day_num = date('m-d', strtotime($date));
                        $day_name = date('l', strtotime($date));
                         $date = date("Y-m-d", strtotime("+1 day", strtotime($date)));
                          $counter++;
                        echo "<th colspan='2'><span class='thclass'>$day_num</span> <br> $day_name</th>";
                        } ?></tr>
                        <tr style="background-color: #37a000 ;color:#fff"><td>Branch</td><?php $date = $start_date;
                        $end = $end_date; //get end date of month
                         while(strtotime($date) <= strtotime($end)) {
                         	$day_num = date('d', strtotime($date));
                        $day_name = date('l', strtotime($date));
                         $date = date("Y-m-d", strtotime("+1 day", strtotime($date)));
                          $counter++;
                        echo "<td>Ac</td><td>Am</td>";
                        } ?></tr>
	   <?php foreach ($store as $store) {?>

             <tr> <?php 
                        $date = $start_date;
                        $end = $end_date; //get end date of month

                         echo "<th>$store->store_name</th>";
                        while(strtotime($date) <= strtotime($end)) {
                        $day_num = date('Y-m-d', strtotime($date));
                        $day_name = date('l', strtotime($date));
                        $date = date("Y-m-d", strtotime("+1 day", strtotime($date)));
                        $counter++;
        $account = $this->db->select('payment_collection.*,sum(payment_collection.receive_amnt) as recvt_amnt,sales_parent.installment_amnt,sales_parent.*,store.store_name,count(payment_collection.id) as recvt_id')
            ->from('payment_collection')
            ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
            ->join('store','sales_parent.store_id=store.store_id')
            ->where('payment_collection.is_installment',1)
            ->where('store.store_id',$store->store_id)
            ->where('payment_collection.receive_date',$day_num)
            ->group_by('payment_collection.invoice_no')
            ->get()
            ->result_array();
                  $total_achieve_acc=0;
                  $achieve_amount=0;
                 foreach ($account as $accout_info) {
                  $total_installment_amount = ($accout_info['recvt_id']*$accout_info['installment_amnt'])-$accout_info['recvt_amnt'];
                    if($total_installment_amount > 0){
                    $total_rcv = 1;
                    }else{
                    $total_rcv = 0;
                    }
                    $total_achieve_acc += $accout_info['recvt_id'];

                   $total_installment_amount = ($accout_info['recvt_id']*$accout_info['installment_amnt'])-$accout_info['recvt_amnt'];
                    if($total_installment_amount > 0){
                    $total_rcv = number_format($accout_info['recvt_amnt'],2);
                    }else{
                    $total_rcv = 0;
                    }
                    $achieve_amount += $accout_info['recvt_amnt'];
              }
                        echo "<td>$total_achieve_acc</td><td>$achieve_amount</td>";
                        }
                    ?>  </tr><?php } ?></tbody>
                      <tfoot></tfoot>
                    </table>
                </div>
            </div> 
        </div>
    </div>
</div>

<script>
  $( function() {
    $( ".datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' });
  } );
  </script>