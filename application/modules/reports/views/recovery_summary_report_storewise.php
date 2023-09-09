   <style type="text/css">
       .ui-datepicker-calendar {
    display: none;
    }
   </style>
   <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('reports/reports/recovery_summary_report',array('class' => 'form-inline'))?>
                            <div class="form-group">
                                <label for="report_date">Date :</label>
                                <input name="report_date" id="report_date" value="<?php echo date('Y-m') ?>" class="date-picker form-control" />
                            </div> 
                          
                            <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                          
                       <?php echo form_close()?>
                    </div>
                </div>
            </div>
             <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('reports/reports/recovery_summary_report_storewise',array('class' => 'form-inline'))?>
                            <div class="form-group">
                                <label for="report_date">Store :</label>
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
                    <h4>Recovery Summary report

                    </h4>
                </div>
            </div>

            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">

                        <thead>
                            <tr><th></th><th class="text-center" colspan="2"><?php echo display('target'); ?></th><th class="text-center" colspan="2"><?php echo display('achievement'); ?></th><th colspan="2" class="text-center"><?php echo display('achievement'); ?>%</th><th colspan="2" class="text-center"><?php echo display('remaining'); ?></th></tr>
                            <tr style="background-color: #37a000 ;color:#fff">
                            <th><?php echo display('branches') ?></th>
                            <th><?php echo display('account') ?></th>
                            <th><?php echo display('amount') ?></th>
                            <th><?php echo display('account') ?></th>
                            <th><?php echo display('amount') ?></th>
                            <th><?php echo display('account') ?></th>
                            <th><?php echo display('amount') ?></th>
                            <th><?php echo display('account') ?></th>
                            <th><?php echo display('amount') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($total['payments'])) { ?>
                            <?php
       foreach ($total['payments'] as $payments) {
         $account = $this->db->select("payment_collection.*,sum(payment_collection.receive_amnt) as recvt_amnt,sales_parent.installment_amnt,sales_parent.store_id,store.store_name,count(payment_collection.id) as recvt_id")
            ->from('payment_collection')
            ->join('sales_parent','payment_collection.invoice_no=sales_parent.invoice_no')
            ->join('store','sales_parent.store_id=store.store_id')
            ->where('payment_collection.is_installment',1)
            ->where('store.store_id',$total['store_id'])
            ->group_by("payment_collection.invoice_no")
            ->get()
            ->result_array();  ?>
        <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
        <td><?php echo $payments['store_name']; ?></td>
                    <td><?php
            $total_achieve_acc=0;              
            $total_target_acc=0;
            $achieve_amount=0;
            $remaining_ac = 0;
            $total_remain_amount=0;
            // target account
            foreach ($account as $accout_info) {
                  $total_installment_amount = ($accout_info['recvt_id']*$accout_info['installment_amnt'])-$accout_info['recvt_amnt'];
                  if($total_installment_amount >= 0){
                     $total_rcv = 0;
                  }else{
                     $total_rcv = 1;
                  }
                  $total_target_acc += $total_rcv;
              // target total
                   $total_installment_amount = ($accout_info['recvt_id']*$accout_info['installment_amnt'])-$accout_info['recvt_amnt'];
                    if($total_installment_amount < 0){
                    $total_rcv = 1;
                    }else{
                    $total_rcv = 0;
                    }
                    $total_achieve_acc += $total_rcv;

                    // achieve account
                 $total_installment_amount = ($accout_info['recvt_id']*$accout_info['installment_amnt'])-$accout_info['recvt_amnt'];
                    if($total_installment_amount < 0){
                    $total_rcv = number_format($accout_info['recvt_amnt'],2);
                    }else{
                    $total_rcv = 0;
                    }
                    $achieve_amount += $total_rcv;
                      // achieve total
                    if($total_installment_amount > 0){
                     $total_rm_ac = 1;
                     $totam_rm_am = ($accout_info['recvt_id']*$accout_info['installment_amnt'])-$accout_info['recvt_amnt'];
                  }else{
                     $total_rm_ac = 0;
                     $totam_rm_am =0;
                  } 
                  $remaining_ac += $total_rm_ac;
                  $total_remain_amount += $totam_rm_am;
            }
            echo $total_target_acc;
               
                                    ?></td>
  <td class="text-right"><?php 
   $total_target_amount=0;
            // target account
            foreach ($account as $accout_info) {
                  $total_installment_amount = ($accout_info['recvt_id']*$accout_info['installment_amnt'])-$accout_info['recvt_amnt'];
                  if($total_installment_amount <= 0){
                     $total_rcv = $accout_info['installment_amnt'];
                  }else{
                     $total_rcv = 0;
                  }
                  $total_target_amount += $total_rcv;
              }
                  echo $total_target_amount; ?></td>
  <td class="text-right"><?php echo $total_achieve_acc;?></td>
  <td class="text-right"><?php echo $achieve_amount; ?></td>
  <td class="text-right"><?php echo number_format(($total_achieve_acc/$total_target_acc),2); ?></td>
  <td class="text-right"><?php echo number_format(($achieve_amount/$total_target_amount),2);?></td>
  <td class="text-right"><?php echo $remaining_ac;?></td>
  <td class="text-right"><?php echo  number_format($total_remain_amount,2); ?></td>
                                  
                                </tr>
                             
                            <?php } ?> 
                        <?php } ?> 
                        </tbody>
                      
                    </table>
                </div>
            </div> 
        </div>
    </div>
</div>

<script type="text/javascript">
  $(function() {
     $('.date-picker').datepicker(
                    {
                        dateFormat: "yy-mm",
                        changeMonth: true,
                        changeYear: true,
                        showButtonPanel: true,
                        onClose: function(dateText, inst) {


                            function isDonePressed(){
                                return ($('#ui-datepicker-div').html().indexOf('ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all ui-state-hover') > -1);
                            }

                            if (isDonePressed()){
                                var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                                var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                                $(this).datepicker('setDate', new Date(year, month, 1)).trigger('change');
                                
                                 $('.date-picker').focusout()//Added to remove focus from datepicker input box on selecting date
                            }
                        },
                        beforeShow : function(input, inst) {

                            inst.dpDiv.addClass('month_year_datepicker')

                            if ((datestr = $(this).val()).length > 0) {
                                year = datestr.substring(datestr.length-4, datestr.length);
                                month = datestr.substring(0, 2);
                                $(this).datepicker('option', 'defaultDate', new Date(year, month-1, 1));
                                $(this).datepicker('setDate', new Date(year, month-1, 1));
                                $(".ui-datepicker-calendar").hide();
                            }
                        }
                    })
});
  </script>