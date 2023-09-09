
<style type="text/css">
    .close{color:white;}
</style>

        <!-- Purchase report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('add_purchase') ?></h4>
                        </div>
                    </div>

                    <div class="panel-body">
                    <?php echo form_open_multipart('purchase_order/purchase_order/order_up_form',array('class' => 'form-vertical', 'id' => 'insert_purchase','name' => 'insert_purchase'))?>
                        
                      <div class="row" id="supplier_info">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="supplier_sss" class="col-sm-3 col-form-label"><?php echo display('supplier') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                      <?php echo form_dropdown('supplier_id',$supplier,(!empty($order->supplier_id)?$order->supplier_id:null), 'class="form-control"') ?>
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                              <div class="form-group row">
                                   <label for="date" class="col-sm-3 col-form-label"><?php echo display('order_date') ?> <i class="text-danger"></i></label>
                                    <div class="col-sm-9">
                                     <input type="text" tabindex="2" class="form-control" name="order_date" value="<?php  echo $order->createdate;?>"  required readonly="" />
                                         <input type="hidden" class="form-control" name="po_no" value="<?php  echo $order->po_no;?>"  readonly="" />
                                    </div>

                                   
                                </div>    
                            </div>
                            
                        </div>



                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="purchaseTable">
                                <thead>
                                    <tr>
                                            <th class="text-center" width="20%"><?php echo display('product_name') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center" width="10%"><?php echo display('product_code') ?></th>
                                            <th class="text-center" width="10%"><?php echo display('location') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('stock_ctn') ?></th>
                                            <th class="text-center"><?php echo display('quantity') ?> <i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('um') ?></th>
                                            <th class="text-center"><?php echo display('price') ?><i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('discount') ?></th>
                                            <th class="text-center"><?php echo display('total') ?></th>
                                            
                                            <th class="text-center"><?php echo display('action') ?></th>
                                        </tr>
                                </thead>
                                <tbody id="addPurchaseItem">
                                  <?php 
                                    $sl=1;
                                    foreach ($order_up as $order_up) {?>
                                    <tr>
                                       <td class="span3 manufacturer">
                                           <input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="product_pur_or_list(<?php echo $sl;?>);" placeholder="<?php echo display('product_name') ?>" value="<?php echo $order_up['product_name'].'('.$order_up['product_code'].')'; ?>"  id="product_name_<?php echo $sl;?>" tabindex="5" >

                                            <input type="hidden" class="autocomplete_hidden_value product_id_<?php echo $sl;?>" value="<?php echo $order_up['product_id']?>" name="product_id[]" id="SchoolHiddenId"/>

                                            <input type="hidden" class="sl" value="<?php echo $sl;?>">
                                             <input type="hidden" name="row_id[]" value="<?php echo $order_up['row_id']; ?>">
                                        </td>
                                        <td class="span3 manufacturer">
                                           <input type="text" name="product_c"  class="form-control  "  placeholder="<?php echo display('product_name') ?>" id="product_c_<?php echo $sl;?>" tabindex="4" value="<?php echo $order_up['product_code']; ?>">
                                        </td>
                                      
                                       <td class="wt">
                                               <input type="text" id="location" class="form-control productSelection location" onkeyup="location_autocomplete(<?php echo $sl;?>);" placeholder="location" tabindex="5" value="<?php echo $order_up['store_name'];?>" required/>
                                                <input type="hidden" class="autocomplete_hidden_value2 store_id" name="store_id[]" id="Hiddenid" value="<?php echo  $order_up['store_id']; ?>" required/>
                                            </td>
                                            </td>
                                       <td class="wt">
                                                <input type="text" id="available_quantity_<?php echo $sl;?>" class="form-control text-right stock_ctn_<?php echo $sl;?>" placeholder="0.00" readonly/>
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="product_quantity[]" id="quantity_<?php echo $sl;?>" class="form-control text-right store_cal_<?php echo $sl;?>" onkeyup="calculate_store(<?php echo $sl;?>),checkqty(<?php echo $sl;?>);" onchange="calculate_store(<?php echo $sl;?>);" placeholder="0.00" value="<?php echo $order_up['order_qty']; ?>" min="0" tabindex="8" required="required"/>
                                            </td>
                                              <td class="text-right">
                                                <input type="text" name="um[]" id="um_<?php echo $sl;?>" class="form-control text-center" tabindex="8" required="required" value="<?php echo $order_up['unit']; ?>"/>
                                            </td>
                                            <td class="test">
                                                <input type="text" name="product_rate[]" onkeyup="calculate_store(<?php echo $sl;?>),checkqty(<?php echo $sl;?>);" onchange="calculate_store(<?php echo $sl;?>);" id="product_rate_<?php echo $sl;?>" class="form-control product_rate_<?php echo $sl;?> text-right" placeholder="0.00" value="<?php echo $order_up['product_rate'];?>" min="0" tabindex="9" required="required" />
                                            </td>
                                           
                                            <td class="test">
                                                <input type="text" name="discount[]" onkeyup="calculate_store(<?php echo $sl;?>),checkqty(<?php echo $sl;?>);" onchange="calculate_store(<?php echo $sl;?>);" id="discount_<?php echo $sl;?>" class="form-control product_rate_<?php echo $sl;?> text-right" placeholder="0.00" value="<?php echo $order_up['discount'];?>" min="0" tabindex="9"/>
                                            </td>
                                            <td class="text-right">
                                                <input class="form-control total_price text-right" type="text" name="total_price[]" id="total_price_<?php echo $sl;?>" value="<?php echo $order_up['product_rate']*$order_up['order_qty'];?>" readonly />
                                            </td>
                                            <td>
                                                <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)" tabindex="10"><?php echo display('delete')?></button>
                                            </td>
                                    </tr>
                                          <?php $sl++; } 
                                 ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="3">
                                            <input type="button" id="add_invoice_item" class="btn btn-info" name="add-invoice-item"  onClick="addPurchaseOrderField1('addPurchaseItem');" value="<?php echo display('add_new_item') ?>"  tabindex="11"/>

                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                        </td>
                                        <td style="text-align:right;" colspan="5"><b><?php echo display('grand_total') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="grandTotal" class="text-right form-control" name="grand_total_price" value="<?php  echo $order->total_amnt;?>" readonly="readonly" />
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12 text-right">
                                <input type="submit" id="add_purchase" class="btn btn-primary btn-large" name="add-purchase" value="<?php echo display('update') ?>" />
                               
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
function product_pur_or_list(sl) {

    // Auto complete
    var options = {
        minLength: 0,
        source: function( request, response ) {
            var product_name = $('#product_name_'+sl).val();
            var csrf_test_name = $('[name="csrf_test_name"]').val();
        $.ajax( {
          url: "<?php echo site_url('purchase_order/Purchase_order/product_search')?>",
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
            var product_c    = 'product_c_'+sl;
            var um    = 'um_'+sl;
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('purchase_order/Purchase_order/retrieve_product_data')?>",
                 data: {product_id:product_id},
                cache: false,
                success: function(data)
                {
                    console.log(data);
                    obj = JSON.parse(data);
                   $('#'+available_quantity).val(obj.total_product);
                   $('#'+product_c).val(obj.product_code);
                   $('#'+pur_price).val(obj.price);
                   $('#'+um).val(obj.um);
        
                  
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
    function addPurchaseOrderField1(divName){

   var row = $("#purchaseTable tbody tr").length;
    var count = row + 1;
    var limits = 500;
    if (count == limits) alert("You have reached the limit of adding " + count + " inputs");
    else {
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
         
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="product_pur_or_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="span3 supplier"> <input type="text" name="product_c"  class="form-control  "  placeholder="<?php echo display('product_name') ?>" id="product_c_'+ count +'" tabindex="'+tab2+'" ></td> <td class="wt"><input type="text" id="location" class="form-control productSelection location" tabindex="'+tab3+'" onkeyup="location_autocomplete('+ count +');" placeholder="location" required/><input type="hidden" class="autocomplete_hidden_value2 store_id" name="store_id[]" id="Hiddenid" required/></td><td class="wt"> <input type="text" id="available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" tabindex="'+tab2+'" required  id="quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" onkeyup="calculate_store(' + count + '),checkqty(' + count + ');" onchange="calculate_store(' + count + ');" placeholder="0.00" value="" min="0"/>  </td><td class="text-right"><input type="text" name="um[]" id="um_' + count + '" class="form-control text-center" tabindex="8" required="required"/></td><td class="test"><input type="text" name="product_rate[]" required onkeyup="calculate_store('+ count +'),checkqty(' + count + ');" onchange="calculate_store('+ count +');" id="product_rate_'+ count +'" class="form-control product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/></td><td class="test"><input type="text" name="discount[]" onkeyup="calculate_store('+ count +'),checkqty('+ count +');" onchange="calculate_store('+ count +');" id="discount_'+ count +'" class="form-control discount_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="9"/> </td><td class="text-right"><input class="form-control total_price text-right total_price_'+ count +'" type="text" name="total_price[]" id="total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td><button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)"tabindex="'+tab4+'"><?php echo display('delete')?></button></td>';
            document.getElementById(divName).appendChild(newdiv);
            document.getElementById(tabin).focus();
            document.getElementById("add_invoice_item").setAttribute("tabindex", tab5);
            document.getElementById("add_purchase").setAttribute("tabindex", tab6);
           
            count++;
$(".datepicker").datepicker({ dateFormat:'yy-mm-dd' });
            $("select.form-control:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });
        }
    }

    //Calculate store product
    function calculate_store(sl) {
       
        var gr_tot = 0;
        var item_ctn_qty = $("#quantity_"+sl).val();
        var vendor_rate  = $("#product_rate_"+sl).val();
        var discount    = $("#discount_"+sl).val();
        var total_price     = (item_ctn_qty * vendor_rate)-discount;
        $("#total_price_"+sl).val(total_price.toFixed(2));

       
        //Total Price
        $(".total_price").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });

        $("#grandTotal").val(gr_tot.toFixed(2,2));
    }
    function deleteRow(e) {
        var t = $("#purchaseTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculateSum()
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

function location_autocomplete(sl) {

    // Auto complete
    var options = {
        minLength: 0,
        source: function( request, response ) {
            var location = $('#location_'+sl).val();
            var csrf_test_name = $('[name="csrf_test_name"]').val();
        $.ajax( {
          url: "<?php echo site_url('purchase_order/Purchase_order/location_search')?>",
          method: 'post',
          dataType: "json",
          data: {
            term: request.term,
            location:location,
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
            $(this).parent().parent().find(".autocomplete_hidden_value2").val(ui.item.value); 
            
            var sl = $(this).parent().parent().find(".sl").val(); 

            $(this).unbind("change");
            return false;
       }
   }
    
   $('body').on('keydown.autocomplete', '.location', function() {
       $(this).autocomplete(options);
   });

}

</script>