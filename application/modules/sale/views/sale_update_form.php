
<style type="text/css">
    .close{color:white;}
</style>

        <!-- Purchase report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('update_sale') ?></h4>
                        </div>
                    </div>

                    <div class="panel-body">
                   <?php echo form_open_multipart('sale/sale/sales_up_form',array('class' => 'form-vertical', 'id' => 'update_sale','name' => 'update_sale'))?>
                        

                        <div class="row" id="invoice_id">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="invoice_id" class="col-sm-3 col-form-label"><?php echo display('invoice_id') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="invoice_no" value="<?php echo $sales->invoice_no ?>" class="form-control" placeholder="Invoice ID" readonly>
                                      <input type="hidden" name="sale_id" value="<?php echo $sales->sale_id ?>" class="form-control">
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="customer_name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?>
                                    </label>
                                    <div class="col-sm-9">
                                        <?php echo form_dropdown('customer_id',$customer,(!empty($sales->customer_id)?$sales->customer_id:null), 'class="form-control" required') ?>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                    <div class="row" id="Sales_man">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="Sales_man" class="col-sm-3 col-form-label"><?php echo display('sales_man') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="hidden" name="sales_man" value="<?php echo $sales->salesman; ?>" class="form-control" placeholder="Sales man" readonly>
                                       <input type="text"  value="<?php 
           $salsmans=$this->db->select('*')->from('user')->where('id',$sales->salesman)->get()->row();
           echo $salsmans->firstname.' '.$salsmans->lastname;
                                        ?>" class="form-control" placeholder="Sales man" readonly>
                                     <input type="hidden" name="sale_type" value="<?php echo $sales->sale_type_id; ?>">
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?>
                                    </label>
                                    <div class="col-sm-9">
                                       <input type="text" name="salesdate" class="datepicker form-control" placeholder="date" value="<?php echo $sales->sales_date; ?>">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="saleTable">
                                <thead>
                                    <tr>
                                            <th class="text-center" width="20%"><?php echo display('product_name') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('stock_ctn') ?></th>
                                            <th class="text-center"><?php echo display('quantity') ?> <i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('price') ?><i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('total') ?></th>
                                            
                                            <th class="text-center"><?php echo display('action') ?></th>
                                        </tr>
                                </thead>
                                <tbody id="addsaleItem">
                                  <?php

                                   $sl=0;
                                   foreach ($saledts as $details) {  $sl++;?>
                                   
                                  
                             
                                    <tr>
                                       <td class="span3 cashsale">
                                           <input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="product_sale_list(<?php echo $sl; ?>);" placeholder="<?php echo display('product_name') ?>" value="<?php echo $details['product_name']; ?>" id="product_name_<?php echo $sl; ?>" tabindex="5" >

                                            <input type="hidden" class="autocomplete_hidden_value product_id_<?php echo $sl; ?>" value="<?php echo $details['product_id']; ?>" name="product_id[]" id="SchoolHiddenId"/>

                                            <input type="hidden" class="sl" value="<?php echo $sl; ?>">
                                        </td>
                                      

                                       <td class="wt">
                                                <input type="text" id="available_quantity_<?php echo $sl; ?>" class="form-control text-right stock_ctn_<?php echo $sl; ?>" placeholder="0.00" readonly/>
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="product_quantity[]" id="quantity_<?php echo $sl; ?>" class="form-control text-right store_cal_<?php echo $sl; ?>" onkeyup="calculate_store(<?php echo $sl; ?>),checkqty(<?php echo $sl; ?>);" onchange="calculate_store(<?php echo $sl; ?>);" placeholder="0.00" value="<?php echo $details['qty']; ?>" min="0" tabindex="8" required="required"/>
                                            </td>
                                            <td class="test">
                                                <input type="text" name="product_rate[]" onkeyup="calculate_store(<?php echo $sl; ?>),checkqty(<?php echo $sl; ?>);" onchange="calculate_store(<?php echo $sl; ?>);" id="product_rate_<?php echo $sl; ?>" class="form-control product_rate_<?php echo $sl; ?> text-right" placeholder="0.00" value="<?php echo $details['sell_price']; ?>" min="0" tabindex="9" required="required" />
                                            </td>
                                           

                                            <td class="text-right">
                                                <input class="form-control total_price text-right" type="text" name="total_price[]" id="total_price_<?php echo $sl; ?>" value="<?php echo $details['sell_price']*$details['qty'] ?>"  />
                                            </td>
                                            <td>

                                               

                                                <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)" tabindex="10"><i class="fa fa-close" aria-hidden="true"></i></button>
                                            </td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="2">
                                            <input type="button" id="add_invoice_item" class="btn btn-info" name="add-invoice-item"  onClick="addsaleOrderField1('addsaleItem');" value="<?php echo display('add_new_item') ?>"  tabindex="11"/>
                                          <input type="hidden"   class="text-right form-control" name="paid_amount" value=""  />
                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                        </td>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('total_amount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="grandTotal" class="text-right form-control" name="grand_total_price" value="<?php echo $sales->total_amnt; ?>" readonly="readonly" />
                                        </td>
                                    </tr>
                                    <?php if($sales->sale_type_id==2) {?>
                                     <tr>
                                        <td style="text-align:right;" colspan="4"><b><?php echo display('paid_amount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="paidAmount" onkeyup="invoice_paidamount()" class="text-right form-control" name="paid_amount" value="<?php echo $sales->advance_amnt;?>"  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                           
                                        </td>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('remaining_amnt') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="remaining_amnt" class="text-right form-control" name="remaining_amnt" value="<?php echo $sales->due_amnt;?>" readonly="readonly" />
                                        </td>
                                    </tr>
                                    <?php } ?>
                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="add_sale" class="btn btn-primary btn-large" name="add-sale" value="<?php echo display('submit') ?>" />
                                <input type="submit" value="<?php echo display('submit_and_add_another') ?>" name="add-sale-another" class="btn btn-large btn-success" id="add_sale_another" >
                            </div>
                        </div>
                    <?php echo form_close()?>
                    </div>
                </div>
            </div>
        </div>



<!-- Purchase Report End -->

<style type="text/css">
    .btn:focus {
      background-color: #6A5ACD;
    }
</style>

<script type="text/javascript">


function product_sale_list(sl) {

    // Auto complete
    var options = {
        minLength: 0,
        source: function( request, response ) {
            var product_name = $('#product_name_'+sl).val();
            var csrf_test_name = $('[name="csrf_test_name"]').val();
        $.ajax( {
          url: "<?php echo site_url('sale/sale/product_search')?>",
          method: 'post',
          dataType: "json",
          data: {
            term: request.term,
            product_name:product_name,
            csrf_test_name: csrf_test_name
          },
          success: function( data ) {
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
            
            var sl = $(this).parent().parent().find(".sl").val(); 

            var product_id  = ui.item.value;
      
            var base_url    = $('.baseUrl').val();
            var available_quantity    = 'available_quantity_'+sl;
            var pur_price    = 'product_rate_'+sl;
           
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('sale/sale/retrieve_product_data')?>",
                 data: {product_id:product_id},
                cache: false,
                success: function(data)
                {
                    console.log(data);
                    obj = JSON.parse(data);
                   $('#'+available_quantity).val(obj.total_product);
                   $('#'+pur_price).val(obj.price);
        
                  
                } 
            });


            $(this).unbind("change");
            return false;
       }
   }

   $('body').on('keydown.autocomplete', '.product_name', function() {
       $(this).autocomplete(options);
   });

}

</script>


<script type="text/javascript">

  // Counts and limit for sale order

    function addsaleOrderField1(divName){

  
    var row = $("#saleTable tbody tr").length;
    var count = row+1;
    var limits = 500;
    if (count == limits) alert("You have reached the limit of adding " + count + " inputs");
        else{
            var newdiv = document.createElement('tr');
            var tabin="product_name_"+count;
             tabindex = count * 5 ,
           newdiv = document.createElement("tr");
            tab1 = tabindex + 1;
            tab2 = tabindex + 2;
            tab3 = tabindex + 3;
            tab4 = tabindex + 4;
            tab5 = tabindex + 5;
            tab6 = tab5 + 1;
            tab7 = tab6 +1;
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="product_sale_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" id="available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" tabindex="'+tab2+'" required  id="quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" onkeyup="calculate_store(' + count + '),checkqty(' + count + ');" onchange="calculate_store(' + count + ');" placeholder="0.00" value="" min="0"/>  </td><td class="test"><input type="text" name="product_rate[]" required onkeyup="calculate_store('+ count +'),checkqty(' + count + ');" onchange="calculate_store('+ count +');" id="product_rate_'+ count +'" class="form-control product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/></td><td class="text-right"><input class="form-control total_price text-right total_price_'+ count +'" type="text" name="total_price[]" id="total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td><button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)"tabindex="'+tab4+'"><i class="fa fa-close" aria-hidden="true"></i></button></td>';
            document.getElementById(divName).appendChild(newdiv);
            document.getElementById(tabin).focus();
            document.getElementById("add_invoice_item").setAttribute("tabindex", tab5);
            document.getElementById("add_sale").setAttribute("tabindex", tab6);
         document.getElementById("add_sale_another").setAttribute("tabindex", tab7);
           
            count++;

            $("select.form-control:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });
        }
    }

    //Calculate store product
    function calculate_store(sl) {
       
        var gr_tot = 0;
        var item_ctn_qty    = $("#quantity_"+sl).val();
        var vendor_rate = $("#product_rate_"+sl).val();

        var total_price     = item_ctn_qty * vendor_rate;
        $("#total_price_"+sl).val(total_price.toFixed(2));

       
        //Total Price
        $(".total_price").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });

        $("#grandTotal").val(gr_tot.toFixed(2,2));
         var t = $("#grandTotal").val(),

        a = $("#paidAmount").val(),
        e = t - a;
        d = a - t;
        
$("#remaining_amnt").val(e.toFixed(2,2));
    }
    function deleteRow(e) {
        var t = $("#saleTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculateSum()
    }
    function invoice_paidamount() {

    var t = $("#grandTotal").val(),

        a = $("#paidAmount").val(),
        e = t - a;
        d = a - t;
        
$("#remaining_amnt").val(e.toFixed(2,2));

}
</script>



<!-- JS -->



<script type="text/javascript">
     function checkqty(sl)
{
  
  var y=$("#quantity_"+sl).val();
  var x=$("#product_rate_"+sl).val();
  if (isNaN(y)) 
  {
    alert("Must input numbers");
    document.getElementById("quantity_"+sl).value = '';
     //$("#quantity_"+sl).val() = '';
    return false;
  }
  if (isNaN(x)) 
  {
    alert("Must input numbers");
     document.getElementById("product_rate_"+sl).value = '';
    return false;
  }
}

//credit sale

</script>