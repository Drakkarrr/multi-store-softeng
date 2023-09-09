<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('reports/reports/recover_search') ?>
                  
                         <div class="row" id="">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="location" class="col-sm-4 col-form-label"><?php echo display('location') ?>
                                       
                                    </label>
                                    <div class="col-sm-8">
                                   
                                      <?php echo form_dropdown('location', $store, 'test', ' class="form-control"') ?>
                                    </div> 
                                </div> 
                            </div>
                            <div class="col-sm-6">
                               <div class="form-group row">
                                   <label for="date" class="col-sm-4 col-form-label"><?php echo display('date') ?>
                                    </label>
                                    <div class="col-sm-8">
                                        <input type="text" name="sales_date" value="" placeholder="<?php echo display('date') ?>" class="datepicker form-control">
                                    </div>
                                </div> 
                            </div>
                        </div>
                           <div class="row" id="">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="lease_from" class="col-sm-4 col-form-label">Lease From
                                       
                                    </label>
                                    <div class="col-sm-8">
                                     <input type="text" name="lease_from" value="" class="datepicker form-control">
                                    </div>

                                   
                                </div> 
                            </div>
                           
                            <div class="col-sm-6">
                               <div class="form-group row">
                                   <label for="date" class="col-sm-4 col-form-label">Amount Greater Than
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                        <input type="text" name="greaterthan" value="" class=" form-control">
                                    </div>
                                   
                                </div> 
                            </div>

                        </div>
                         <div class="row" id="">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="lease_from" class="col-sm-4 col-form-label">Lease To
                                       
                                    </label>
                                    <div class="col-sm-8">
                                     <input type="text" name="lease_to" value="" class="datepicker form-control">
                                    </div>

                                   
                                </div> 
                            </div>
                           
                            <div class="col-sm-6">
                               <div class="form-group row">
                                   <label for="date" class="col-sm-4 col-form-label">Amount less Than
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                        <input type="text" name="lessthan" value="" class="form-control">
                                    </div>
                                    <label for="date" class="col-sm-4 col-form-label">Amount Equal
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                        <input type="text" name="equal" value="" class="form-control">
                                    </div>
                                   
                                </div> 
                            </div>

                        </div>
                        <div class="form-group text-right">
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('find') ?></button>
                    </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="proposalTable">
                                <thead>
                                    <tr> <th><?php echo display('sl') ?></th> 
                                            <th>Customer And Address</th> 
                                            <th><?php echo display('contact') ?></th>
                                            <th>Gurrantor and Contact#</th>
                                            <th>Lease Date</th>
                                            <th>Lease Amount</th>
                                            <th>Paid Amount</th>
                                            <th>Remaining Amount</th>
                                            <th>Last Payment</th>
                                            <th>Last Payment Date</th>
                                            <th class="text-right">Installment Amount</th>
                                            <th class="text-right">Over Due Amount</th>
                                        </tr>
                                </thead>
                                <tbody id=""><?php if(!empty($output)){
                             
                                 ?>
                                  <?php $sl=1;
                                  $insamount =0;
                                   $total_overdue=0;
                                   foreach ($output as $outpur) {
                                    $overdue= $this->db->select('count(id) as paidid,sum(receive_amnt) as paidamnt')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->where('sale_id',0)
                                        ->get()
                                        ->row();
$inf = $this->db->select('sales_parent.*,payment_collection.*,sum(receive_amnt) as totalreceive')
                      ->from('sales_parent')
                      ->join('payment_collection','sales_parent.invoice_no=payment_collection.invoice_no')
                      ->where('sales_parent.invoice_no',$outpur['invoice_no'])
                      ->where('payment_collection.is_installment',1)
                      ->get()
                      ->row();
                      $lease = $this->db->select('*')->from('lease')->where('lease_id',$inf->lease_id)->get()->row();
           $salesdate = strtotime($inf->sales_date);
           $istallduration = '+'.$lease->lease_duration.' '.'month';
           $firstinstallment = date("Y-m-d", strtotime("+1 month", $salesdate));
           $nummonth = "+".$lease->lease_duration." "."month";
           $lastinstallment = date("Y-m-d", strtotime($nummonth, $salesdate));
           $currentdate = date('Y-m-d');
           $date1=$inf->sales_date;
           $date2=date('Y-m-d');
           $date_diff=strtotime($date2)-strtotime($date1);
           $total_acc = floor(($date_diff)/2628000);
           $overdues = ($total_acc*$inf->installment_amnt)-$inf->totalreceive;
                                        
                                        if($overdues > $gtthan){?> 
                                 <tr><td><?php echo $sl;?></td>
                                  <td><?php echo $outpur['customer_name'];  ?></td>
                                  <td><?php echo $outpur['customer_address'];  ?></td>
                                  <td><?php echo $outpur['gurrantor_name'];  ?></td>
                                  <td><?php echo $outpur['sales_date'];  ?></td>
                                  <td><?php echo $outpur['package_price'];  ?></td>
                                  <td><?php   
                           
                              $p= $this->db->select('sum(receive_amnt) as paidamnt')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->get()
                                        ->row();
                                      echo   number_format($p->paidamnt, 2, '.', ',');
                                  ?></td>
                                  <td><?php $paid = number_format($p->paidamnt, 2, '.', ',');
                                      echo $outpur['package_price']-$paid;
                                    ?></td>
                                  <td><?php $pdate= $this->db->select('*')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->order_by('id','desc')
                                        ->get()
                                        ->row(); 
                                        echo number_format($pdate->receive_amnt, 2, '.', ','); ?></td>
                                  <td><?php echo $pdate->receive_date;  ?></td>
                                  <td><?php echo number_format($outpur['installment_amnt'], 2, '.', ',');  ?></td>
                                  <td><?php 
                                  if($overdues >0){
                               echo number_format($overdues, 2, '.', ',');
                             }else{
                              echo 0;
                             }

                                    ?></td>
                                 </tr>
                             <?php  }else if($overdues > $lsthan){ ?>
                             <tr><td><?php echo $sl;?></td>
                                  <td><?php echo $outpur['customer_name'];  ?></td>
                                  <td><?php echo $outpur['customer_address'];  ?></td>
                                  <td><?php echo $outpur['gurrantor_name'];  ?></td>
                                  <td><?php echo $outpur['sales_date'];  ?></td>
                                  <td><?php echo number_format($outpur['package_price'], 2, '.', ',');  ?></td>
                                  <td><?php   
                           
                              $p= $this->db->select('sum(receive_amnt) as paidamnt')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->get()
                                        ->row();
                                      echo   number_format($p->paidamnt, 2, '.', ',');
                                  ?></td>
                                  <td><?php $paid = $p->paidamnt;
                                      echo number_format($outpur['package_price']-$paid, 2, '.', ',');
                                    ?></td>
                                  <td><?php $pdate= $this->db->select('*')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->order_by('id','desc')
                                        ->get()
                                        ->row(); 
                                        echo number_format($pdate->receive_amnt, 2, '.', ','); ?></td>
                                  <td><?php echo $pdate->receive_date;  ?></td>
                                  <td><?php echo number_format($outpur['installment_amnt'], 2, '.', ',');  ?></td>
                                  <td><?php 
                              if($overdues >0){
                               echo number_format($overdues, 2, '.', ',');
                             }else{
                              echo 0;
                             }
                                    ?></td>
                                 </tr>   
                                 <?php  } else if($overdues == $equal){ ?>
                                   <tr><td><?php echo $sl;?></td>
                                  <td><?php echo $outpur['customer_name'];  ?></td>
                                  <td><?php echo $outpur['customer_address'];  ?></td>
                                  <td><?php echo $outpur['gurrantor_name'];  ?></td>
                                  <td><?php echo $outpur['sales_date'];  ?></td>
                                  <td><?php echo number_format($outpur['package_price'], 2, '.', ',');  ?></td>
                                  <td><?php   
                           
                              $p= $this->db->select('sum(receive_amnt) as paidamnt')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->get()
                                        ->row();
                                      echo   number_format($p->paidamnt, 2, '.', ',');
                                  ?></td>
                                  <td><?php $paid = number_format($p->paidamnt, 2, '.', ',');
                                      echo  number_format($outpur['package_price']-$paid, 2, '.', ',');
                                    ?></td>
                                  <td><?php $pdate= $this->db->select('*')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->order_by('id','desc')
                                        ->get()
                                        ->row(); 
                                        echo number_format($pdate->receive_amnt, 2, '.', ','); ?></td>
                                  <td><?php echo $pdate->receive_date;  ?></td>
                                  <td><?php echo number_format($outpur['installment_amnt'], 2, '.', ',');  ?></td>
                                  <td><?php 
                            if($overdues >0){
                               echo number_format($overdues, 2, '.', ',');
                             }else{
                              echo 0;
                             }
                                    ?></td>
                                 </tr>
                             <?php  }else if($overdue > $lsthan){ ?>
                             <tr><td><?php echo $sl;?></td>
                                  <td><?php echo $outpur['customer_name'];  ?></td>
                                  <td><?php echo $outpur['customer_address'];  ?></td>
                                  <td><?php echo $outpur['gurrantor_name'];  ?></td>
                                  <td><?php echo $outpur['sales_date'];  ?></td>
                                  <td><?php echo number_format($outpur['package_price'], 2, '.', ',');  ?></td>
                                  <td><?php   
                           
                              $p= $this->db->select('sum(receive_amnt) as paidamnt')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->get()
                                        ->row();
                                      echo   number_format($p->paidamnt, 2, '.', ',');
                                  ?></td>
                                  <td><?php $paid = number_format($p->paidamnt, 2, '.', ',');
                                      echo number_format($outpur['package_price']-$paid, 2, '.', ',');
                                    ?></td>
                                  <td><?php $pdate= $this->db->select('*')
                                        ->from('payment_collection')
                                        ->where('invoice_no',$outpur['invoice_no'])
                                        ->order_by('id','desc')
                                        ->get()
                                        ->row(); 
                                        echo number_format($pdate->receive_amnt, 2, '.', ','); ?></td>
                                  <td><?php echo $pdate->receive_date;  ?></td>
                                  <td><?php echo number_format($outpur['installment_amnt'], 2, '.', ',');  ?></td>
                                  <td><?php 
                              echo  $overdues;

                                    ?></td>
                                 </tr>
                                  <?php  } ?>
                                 <?php $sl++; } ?>
                                    
                                     
                                      <?php  } ?>
                                </tbody>
                                <tfoot>
                                  
                                </tfoot>
                            </table>
                        </div>
         
                   
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>
