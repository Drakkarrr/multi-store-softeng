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
         <a href="<?php echo base_url('payment/payment/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        </h4>
                    </div>
                </div>
                <div class="panel-body">

                    <?= form_open_multipart('payment/payment/create') ?>
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
                               <input name="customer_name" class="form-control" type="text" placeholder="<?php echo display('customer_name') ?>" id="customer_name" value="<?php echo $payment->customer_id ?>">
                                <input name="customer_id" class="form-control" type="hidden"  id="customer_id" value="<?php echo $payment->customer_id ?>">
                            </div>
                        </div> 

                        <div class="form-group row">
                            <label for="paid_amnt" class="col-sm-3 col-form-label"><?php echo display('receive_amnt') ?>* </label>
                            <div class="col-sm-9">
                                <input name="paid_amnt" class="form-control" type="text" placeholder="<?php echo display('receive_amnt') ?>" id="paid_amnt" value="<?php echo $payment->receive_amnt ?>">
                                  <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                            </div>
                        </div>

             
                        <div class="form-group text-right">
                            <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
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
          url: "<?php echo site_url('payment/payment/invoice_search')?>",
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
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('payment/payment/retrieve_invoice_data')?>",
                 data: {invoice_no:invoice_no},
                cache: false,
                success: function(data)
                {
                    console.log(data);
                    obj = JSON.parse(data);
                  $('#'+paid_amnt).val(obj.remaining_amnt);
                  $('#'+customer_name).val(obj.customer_name);
                  $('#'+customer_id).val(obj.customer_id);
                  
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