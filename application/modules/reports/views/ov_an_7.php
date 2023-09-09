  
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
                  
                   <tr>
                    <th><?php echo display('invoice_no') ?></th>
                    <th><?php echo display('customer_name') ?></th>
                    <th><?php echo display('contact') ?></th>
                    <th><?php echo display('address') ?></th>
                    <th><?php echo display('gurrantor') ?></th>
                    <th><?php echo display('g_contact') ?></th>
                    <th><?php echo display('install_no') ?></th>
                    <th><?php echo display('lease_amount') ?></th>
                    <th><?php echo display('installment_amnt') ?></th>
                    <th><?php echo display('total_receive') ?></th>
                   
                  </tr>

                      </thead>
                <tbody>
                  <?php foreach ($test as $store) {?>
                  <?php 
// over due analysis for one installment due
$info = $this->db->select('payment_collection.*,sales_parent.*,lease.lease_duration,customer.*')
                        ->from('payment_collection')
                        ->join('sales_parent','payment_collection.invoice_no = sales_parent.invoice_no')
                        ->join('lease','sales_parent.lease_id = lease.lease_id')
                        ->join('customer','sales_parent.customer_id = customer.customer_id')
                        ->where('payment_collection.invoice_no',$store['invoice_no'])
                        ->order_by('payment_collection.id','desc')
                        ->limit(1)
                        ->get()
                        ->row();
                       

           $salesdate = strtotime($info->sales_date);
           $istallduration = '+'.$info->lease_duration.' '.'month';
           $firstinstallment = date("Y-m-d", strtotime("+1 month", $salesdate));
           $nummonth = "+".$info->lease_duration." "."month";
           $lastinstallment = date("Y-m-d", strtotime($nummonth, $salesdate));
           $currentdate = date('Y-m-d');
 $date1=$info->receive_date;
 $date2=date('Y-m-d');
 $date_diff=strtotime($date2)-strtotime($date1);
 //date difference in month
 $total_acc = floor(($date_diff)/2628000);
                      


if($total_acc >= 7 AND $total_acc <= 9 AND $lastinstallment > $currentdate){
  echo $info->gurrantor_1;
 ?>

<tr>
  <td><?php echo $info->invoice_no;?></td>
    <td><?php echo $info->customer_name;?></td>
    <td><?php echo $info->customer_phone;?></td>
    <td><?php echo $info->customer_address; ?></td>
    <td><table class="table table-bordered"><tr><td><?php 
    $f_gurrantor = $this->db->select('*')->from('gurrantor')->where('gurrantor_id',$info->gurrantor_1)->get()->row();
echo $f_gurrantor->gurrantor_name;
 ?></td></tr>
<tr><td><?php 
$second_gurrantor = $this->db->select('*')->from('gurrantor')->where('gurrantor_id',$info->gurrantor_2)->get()->row();

echo $second_gurrantor->gurrantor_name;
 ?></td></tr>
    </table></td>
    <td><table class="table table-bordered"><tr><td><?php echo $second_gurrantor->gurrantor_phone; ?><br><?php echo $$second_gurrantor->gurrantor_address; ?></td></tr><tr><td><?php echo $second_gurrantor->gurrantor_phone; ?><br><?php echo $second_gurrantor->gurrantor_address; ?></td></tr></table></td>
    <td><?php echo $info->package_name.'('.$info->lease_duration.')'; ?></td>
    <td><?php echo $info->package_price; ?></td>
    <td><?php echo $info->installment_amnt; ?></td>
    <td><?php 
  $total_receive = $this->db->select('sum(receive_amnt) as receive_amnt')->from('payment_collection')->where('invoice_no',$info->invoice_no)->where('is_installment',1)->get()->row();
    echo $total_receive->receive_amnt; ?></td>
  
   
  </tr>  <?php } ?>

  


                   
                     <?php } ?>
                </tbody>
                   
                    </table>
                </div>
            </div> 
        </div>
    </div>
</div>

