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
                                    <label for="lease_from" class="col-sm-4 col-form-label"><?php echo display('lease_from') ?>
                                       
                                    </label>
                                    <div class="col-sm-8">
                                     <input type="text" name="lease_from" value="" class="datepicker form-control">
                                    </div>

                                   
                                </div> 
                            </div>
                           
                            <div class="col-sm-6">
                               <div class="form-group row">
                                   <label for="date" class="col-sm-4 col-form-label"><?php echo display('amount_greater_than') ?>
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
                                    <label for="lease_from" class="col-sm-4 col-form-label"><?php echo display('lease_to') ?>
                                       
                                    </label>
                                    <div class="col-sm-8">
                                     <input type="text" name="lease_to" value="" class="datepicker form-control">
                                    </div>

                                   
                                </div> 
                            </div>
                           
                            <div class="col-sm-6">
                               <div class="form-group row">
                                   <label for="date" class="col-sm-4 col-form-label"><?php echo display('amount_less_than') ?>
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                        <input type="text" name="lessthan" value="" class="form-control">
                                    </div>
                                    <label for="date" class="col-sm-4 col-form-label"><?php echo display('amount_equal') ?>
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                        <input type="text" name="equal" value="" class="form-control">
                                    </div>
                                   
                                </div> 
                            </div>

                        </div>
                        <div class="form-group text-right">
                        <button type="submit" class="btn btn-primary w-md m-b-5"><?php echo display('find') ?></button>
                    </div>
                    <div id="printArea">
                        <div class="table-responsive">
                            <table class="table  table-hover" id="proposalTable">
                                <thead style="background-color: #37a000 ;color:#fff">
                                    <tr> <th><?php echo display('sl') ?></th> 
                                        <th><?php echo display('customer_and_address')?></th> 
                                            <th><?php echo display('contact') ?></th>
                                            <th><?php echo display('gurrantor_and_contact') ?></th>
                                            <th><?php echo display('lease_date') ?></th>
                                            <th><?php echo display('lease_amount') ?></th>
                                            <th><?php echo display('paid_amount') ?></th>
                                            <th><?php echo display('remaining_amount') ?></th>
                                            <th><?php echo display('last_payment') ?></th>
                                            <th><?php echo display('last_payment_date') ?></th>
                                            <th class="text-right"><?php echo display('installment_amount') ?></th>
                                            <th class="text-right"><?php echo display('overdue_amount') ?></th>
                                        </tr>
                                </thead>
                                <tbody id=""><?php if(!empty($output)){ ?>
                                  <?php $sl=1;
                                 $total_due = 0;
                                 $total_install = 0;
                                   foreach ($output as $outpur) {
                                    $total_due +=$outpur['over_due'];
                                     $total_install +=$outpur['installment_amnt'];
                                   ?> 
                                 <tr><td><?php echo $sl;?></td>
                                  <td><?php 
                           $customer = $this->db->select('*')->from('customer')->where('customer_id',$outpur['customer_id'])->get()->row();
                              echo $customer->customer_name;
                                    ?></td>
                                  <td><?php 
                                  echo $customer->customer_phone;
                                    ?></td>
                                  <td><?php 
           $gurrantor = $this->db->select('*')->from('gurrantor')->where('gurrantor_id',$outpur['gurrantor_1'])->get()->row();
                                  echo $gurrantor->gurrantor_name.'<br>';
                                   echo $gurrantor->gurrantor_phone;  ?></td>
                                  <td><?php echo $outpur['sales_date'];  ?></td>
                                  <td><?php echo   number_format($outpur['package_price'], 2, '.', ',');  ?></td>
                                  <td><?php   
                                    echo   number_format($outpur['receive_amnt'], 2, '.', ',');
                                  ?></td>
                                  <td><?php 
                                  echo   number_format($outpur['remaining_amnt'], 2, '.', ',');
                                    ?></td>
                                  <td><?php 
                               $lastpaidamnt = $this->db->select('*')->from('payment_collection')->where('invoice_no',$outpur['invoice_no'])->order_by('id','desc')->get()->row();
                                  echo   number_format($lastpaidamnt->receive_amnt, 2, '.', ','); ?></td>
                                  <td><?php echo $lastpaidamnt->receive_date;  ?></td>
                                  <td style="text-align:right;"><?php  echo number_format($outpur['installment_amnt'], 2, '.', ',');  ?></td>
                                  <td style="text-align:right;"><?php  echo   number_format($outpur['over_due'], 2, '.', ','); ?></td>
                                 </tr>
                                 <?php $sl++; } ?>
                                     <?php  } ?>
                                </tbody>
                                <tfoot>
                                  <tr><td></td><td><b>Total</b></td><td colspan="9" style="text-align:right;"><?php  echo number_format($total_install, 2, '.', ',');?></td><td style="text-align:right;"><?php  echo  number_format($total_due, 2, '.', ','); ?></td></tr>
                                </tfoot>
                            </table>
                        </div>
                     </div>
                   
                <?php echo form_close() ?>

            </div> 
             <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div> 
        </div>
    </div>
</div>
