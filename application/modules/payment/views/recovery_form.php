<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>payment</title>
    <!-- Latest compiled and minified CSS -->
  
  </head>
  <body>
 

    <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel panel-bd lobidrag">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4><?php echo (!empty($title)?$title:null) ?>
                           <a href="<?php echo base_url('payment/payment/recovery_list') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        </h4>
                    </div>
                </div>
                <div class="panel-body">

                    <?= form_open_multipart('payment/payment/recovery_create') ?>
                    <?php echo form_hidden('id',$payment->id); ?>
                        <div class="form-group row">
                            <label for="invoice_no" class="col-sm-3 col-form-label"><?php echo display('invoice_no') ?> *</label>
                            <div class="col-sm-9">
                                <input name="tse"  class="form-control invoice_no" type="text" placeholder="<?php echo display('invoice_no') ?>" id="invoice_no" onkeyup="payment()">
                                 <input type="hidden" class="autocomplete_hidden_value invoice_no" name="invoice_no" id="invoice_id"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="customer_id" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?> *</label>
                            <div class="col-sm-9">
                               <input name="customer_name" class="form-control" type="text" placeholder="<?php echo display('customer_name') ?>" id="customer_name" value="<?php echo $payment->customer_id ?>" readonly>
                                <input name="customer_id" class="form-control" type="hidden"  id="customer_id" value="<?php echo $payment->customer_id ?>">
                                <input name="require_install_no" class="form-control" type="hidden" placeholder="<?php echo display('require_install') ?>" id="require_install_no" value="" readonly>
                            </div>
                        </div> 
                              
                           
                        <div class="form-group row">
                            <label for="paid_amnt" class="col-sm-3 col-form-label"><?php echo display('installment_amount') ?></label>
                            <div class="col-sm-9">
                                <input name="installment_amount" class="form-control" type="text" placeholder="<?php echo display('installment_amount') ?>" id="installment_amnt" value="<?php echo $payment->installment_amount ?>" readonly>
                                  <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                            </div>
                        </div>
                           <div class="form-group row">
                            <label for="paid_amnt" class="col-sm-3 col-form-label"><?php echo display('over_due_amount') ?></label>
                            <div class="col-sm-9">
                                <input name="paid_amnt" class="form-control" type="text" placeholder="<?php echo display('over_due_amount') ?>" id="over_due" value="<?php echo $payment->receive_amnt ?>" readonly>
                                
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="paid_amnt" class="col-sm-3 col-form-label"><?php echo display('final_settlement') ?></label>
                            <div class="col-sm-9">
                                <input name="final_installment" class="form-control" type="text" placeholder="<?php echo display('final_settlement') ?>" id="final_installment" value="" readonly>
                              
                                 
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="discount" class="col-sm-3 col-form-label"><?php echo display('final_settlement_discount') ?></label>
                            <div class="col-sm-9">
                                
                                <input type="text" name="installment_discount" id="install_discount" class="form-control" readonly="" />
                                 
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="paid_amnt" class="col-sm-3 col-form-label"><?php echo display('receive_amnt') ?>* </label>
                            <div class="col-sm-9">
                                <input name="paid_amnt" class="form-control" type="text" placeholder="<?php echo display('receive_amnt') ?>" id="paid_amnt" value="">
                                
                                
                            </div>
                        </div>
                        
                        
                            
                     <div class="col-md-12 text-left">
                               <label><input type="checkbox" name="leasefull_paid" class="control" value="1"/>  Do You Want to Settle the Lease??</label>
                    </div>
                   
             
                        <div class="form-group text-right">
                           
                            <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                        </div>
                    <?php echo form_close() ?>

                </div>  
            </div>
        </div>
    </div>
    
  </body>
</html>


<script type="text/javascript">
        function payment() {
    // Auto complete
    var options = {
        minLength: 0,
        source: function( request, response ) {
        var invoice_no = $('#invoice_no').val(); 
        $.ajax( {
          url: "<?php echo site_url('payment/payment/lease_invoice_search')?>",
          method: 'post',
          dataType: "json",
          data: {
            term: request.term,
            invoice_no:invoice_no,
          },
          success: function(data) {
            response(data);
          }
        });
      },
       focus: function( event, ui ) {
           $(this).val(ui.item.label);
           return false;
       },
       select: function( event, ui ) {
            $(this).parent().parent().find(".autocomplete_hidden_value").val(ui.item.value); 

            var invoice_no  = ui.item.value;
      
            var base_url    = $('.baseUrl').val();
            var paid_amnt    = 'paid_amnt';
            var customer_name = 'customer_name';
            var customer_id = 'customer_id';
            var installment_amnt = 'installment_amnt';
            var over_due = 'over_due';
            var final_installment = 'final_installment';
            var require_install_no = 'require_install_no';
            var install_discount = 'install_discount';
           
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('payment/payment/retrieve_recovery_data')?>",
                 data: {invoice_no:invoice_no},
                cache: false,
                success: function(data)
                {
                    console.log(data);
                    obj = JSON.parse(data);
                 
                  $('#'+customer_name).val(obj.customer_name);
                  $('#'+customer_id).val(obj.customer_id);
                  $('#'+installment_amnt).val(obj.installment_amnt);
                  $('#'+over_due).val(obj.over_due);
                  $('#'+final_installment).val(obj.final_installment);
                  $('#'+require_install_no).val(obj.require_install_no);
                  $('#'+install_discount).val(obj.install_discount);

                  
                } 
            });


            $(this).unbind("change");
            return false;
       }
   }

   $('body').on('keydown.autocomplete', '.invoice_no', function() {
       $(this).autocomplete(options);
   });

}

</script>
<script type="text/javascript">
    $('#paid_amnt').prop("disabled", false);
    $('input:checkbox').click(function() {
    var check=$('[name="leasefull_paid"]:checked').length;
        if (check > 0) {
          
            $('#paid_amnt').prop("disabled", true);
              var fullpaid = document.getElementById('final_installment').value;
             $('#paid_amnt').val(fullpaid);
        } else {
        if (check < 1){

            $('#paid_amnt').attr('disabled',false);
             $('#paid_amnt').val('');
          }
        }
});
</script>