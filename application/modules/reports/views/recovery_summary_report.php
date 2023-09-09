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
                    <h4>Recovery Summary report for    :<?php 
         $rpdate = date_create($year.'-'.$month.'-'.$d);
                    echo date_format($rpdate,"M Y"); ?>

                    </h4>
                </div>
            </div>

            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover" width="100%">

                        <thead>
                            <tr><th width="12%"></th><th class="text-center" colspan="2"  width="22%"><?php echo display('target'); ?></th><th class="text-center" colspan="2"  width="22%"><?php echo display('achievement'); ?></th><th colspan="2" class="text-center" width="22%"><?php echo display('achievement'); ?>%</th><th colspan="2" class="text-center" width="22%"><?php echo display('remaining'); ?></th></tr>
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
                            <?php 

                            if (!empty($total)) { ?>
                            <?php
                            $totaltargetacc = 0;
       foreach ($total as $payments) {
              ?>
  <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
  <td><?php 
$store = $this->db->select('*')->from('store')->where('store_id',$payments['store_id'])->get()->row();
  echo $store->store_name; ?></td>
  <td><?php //echo $payments['totalreceive']; 
 $acc = $payments['total_acc'];
 echo $acc;
  ?></td>
  <td class="text-right"><?php 
  $date1=$payments['sales_date'];
  $date2=$year.'-'.$month.'-'.$d;
  $date_diff=strtotime($date2)-strtotime($date1);
  $total_acc = floor(($date_diff)/2628000); 
    $total_receive=$overdue =0;
     $overdue = ($total_acc*$payments['installment_amnt'])-$payments['totalreceive'];
   echo number_format($overdue,2,'.',',');
    ?>
  </td>
  <td class="text-right"><?php 
$achieve_ac_info =$this->db->select('sum(stoere_overdue.receive_amnt) as totalreceive,count(stoere_overdue.invoice_no) as total_acc')
                      ->from('stoere_overdue')
                      ->where('YEAR(stoere_overdue.receive_date)',$year)
                      ->where('MONTH(stoere_overdue.receive_date)',$month)
                      ->where('stoere_overdue.is_installment',1)
                      ->where('stoere_overdue.store_id',$payments['store_id'])
                      ->get()
                      ->row();
                    echo $achieve_ac_info->total_acc;
  ?></td>
  <td class="text-right"><?php if(!empty($achieve_ac_info->totalreceive)){
    echo  number_format($total_receive = $achieve_ac_info->totalreceive,2,'.',',');
  }else{
    echo 0;
  } ?></td>
  <td class="text-right"><?php echo ($achieve_ac_info->total_acc/$acc)*100;  ?>%</td>
  <td class="text-right"><?php $achiceamnountper = ($total_receive/$overdue)*100;
echo number_format($achiceamnountper,2,'.',',');
  ?>%</td>
  <td class="text-right"><?php echo $acc-$achieve_ac_info->total_acc; ?></td>
  <td class="text-right"><?php echo number_format($overdue-$total_receive,2,'.',','); ?></td>
                                  
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