  
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
                        <?php echo form_open('reports/reports/branch_ovdue_anly_details',array('class' => 'form-inline'))?>
                            <div class="form-group">
                                <label for="report_date">Select Branch :</label>
                                <select name="store_id" class="form-control">
                                    <option value="0">All</option>
                                    <?php foreach ($store as $store) {?>
                                       <option value="<?php echo $store->store_id?>"><?php echo $store->store_name;?></option>
                                   <?php } ?>
                                </select>
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
                    <h4>Branch Wise Over Due Analysis Report

                    </h4>
                </div>
            </div>

            <div class="panel-body">
 
                <div>
                   <?php foreach ($test as $info) {?>
                   <?php 
                  $customer_info= $this->db->select('sales_parent.*,customer.*')
                           ->from('sales_parent')
                           ->join('customer','sales_parent.customer_id=customer.customer_id')
                           ->where('sales_parent.store_id',$info['store_id'])
                           ->where('sales_parent.sale_type_id',3)
                           ->group_by('sales_parent.invoice_no')
                           ->get()
                           ->result_array();


                            ?>
              <table class="table table-bordered table-hover">
                <legend  style="color:#E56717" class="text-center"><?php echo strtoupper($info['store_name']); ?></legend>
                <thead>
                  
                   <tr style="background-color: #37a000 ;color:#fff"><th><?php echo display('invoice_no') ?></th>
                    <th><?php echo display('customer_name') ?></th>
                    <th><?php echo display('over_due') ?></th>
                    <th><?php echo display('due_amnt'); ?></th>
                    <th><?php echo display('days'); ?></th>
                     <th><?php echo display('last_payment_date'); ?></th>
                  </tr>

                      </thead>
                <tbody>
                  <?php foreach ($customer_info as $cus_info) {?>
                 <?php  $information = $this->db->select('payment_collection.*,sales_parent.*,lease.lease_duration')
                        ->from('payment_collection')
                        ->join('sales_parent','payment_collection.invoice_no = sales_parent.invoice_no')
                        ->join('lease','sales_parent.lease_id = lease.lease_id')
                        ->where('payment_collection.invoice_no',$cus_info['invoice_no'])
                        //->where('payment_collection.is_installment',1)
                        ->order_by('payment_collection.id','desc')
                        ->get()
                        ->row();
                    

           $salesdate = strtotime($information->sales_date);

           $istallduration = '+'.$information->lease_duration.' '.'month';
           $firstinstallment = date("Y-m-d", strtotime("+1 month", $salesdate));
           $nummonth = "+".$information->lease_duration." "."month";
           $lastinstallment = date("Y-m-d", strtotime($nummonth, $salesdate));
           $currentdate = date('Y-m-d');
 $date1=$information->receive_date;
 $date2=date('Y-m-d');
 $date_diff=strtotime($date2)-strtotime($date1);
 //date difference in month
 $total_acc = floor(($date_diff)/2628000);
                      



                        ?>
                 
<tr>
    <td><?php echo $cus_info['invoice_no'];?></td>
    <td><?php echo $cus_info['customer_name'];?></td>
    <td><?php echo $total_acc;?></td>
    <td><?php echo $total_acc*$information->installment_amnt; ?></td>
    <td><?php echo $total_acc*30; ?></td>
    <td><?php echo $date1; ?></td>
   
  </tr> 

  


                   
                     <?php } ?>
                </tbody>
                   
                    </table>

                   <?php } ?>
           
                </div>
            </div> 
        </div>
    </div>
</div>
