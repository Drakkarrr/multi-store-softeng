       <!-- receive data -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('receive')?></h4>
                        </div>
                    </div>
                    <?php echo form_open('purchase_order/purchase_order/receive_form',array('class' => 'form-vertical','id'=>'purchase_recv' ))?>
                    <div class="panel-body">
             
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
                                     <input type="text" tabindex="2" class="form-control" name="receive_date" value="<?php  echo $order->createdate;?>"  required readonly="" />
                                        <input type="hidden" name="po_no" value="<?php  echo $order->po_no;?>">
                                    </div>
                                </div> 
                            </div>
                        </div>

                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="purchase">
                                <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('product_name') ?> <i class="text-danger"></i></th>
                                         <th class="text-center" width="10%"><?php echo display('product_code') ?></th>
                                          <th class="text-center" width="10%"><?php echo display('location') ?><i class="text-danger">*</i></th> 
                                        <th class="text-center"><?php echo display('order_qty') ?></th>
                                        <th class="text-center"><?php echo display('receive_quantity') ?>  <i class="text-danger">*</i></th>
                                        <th class="text-center"><?php echo display('um') ?></th>
                                        <th class="text-center"><?php echo display('price') ?> <i class="text-danger"></i></th>
                                         <th class="text-center"><?php echo display('discount') ?></th>
                                        <th class="text-center"><?php echo display('total') ?></th>
                                        <th class="text-center"><?php echo display('select') ?> <i class="text-danger">*</i></th>
                                    </tr>
                                </thead>
                                <tbody id="addinvoiceItem">
                                    <?php 
                                    $sl=1;
                                    foreach ($receive as $receive) {?>
                                      
                                   
                                    <tr>
                                        <td class="" style="width: 200px;">
                                            <input type="text" name="product_name" value="<?php echo $receive['product_name']; ?>" class="form-control productSelection" required placeholder='<?php echo display('product_name') ?>' id="product_names" tabindex="3" readonly="">

                                            <input type="hidden" name="product_id[]" class="product_id_<?php echo $sl;?> autocomplete_hidden_value" value="<?php echo $receive['product_id']?>" id="product_id_<?php echo $sl;?>"/>

                                        </td>
                                        <td><input type="text" name="product_code[]" value="<?php echo $receive['product_code']; ?>" class="form-control " required placeholder='<?php echo display('product_code') ?>' id="product_c" tabindex="3" readonly=""></td>
                                        <td><input type="text" name="store_name" value="<?php echo $receive['store_name']; ?>" class="form-control " required placeholder='<?php echo display('store_name') ?>' id="store_name" tabindex="3" readonly="" required>
                                            <input type="hidden" name="store_id[]" value="<?php echo $receive['store_id']; ?>" class="form-control" required></td>
                                        <td>
                                            <input type="text" name="recv_qty[]" class="form-control text-right " id="orderqty_<?php echo $sl;?>" value="<?php echo $receive['order_qty']; ?>" readonly="" />
                                      </td>
                                      <td>
                                           <input type="text" name="product_quantity[]" id="quantity_<?php echo $sl;?>" class="form-control text-right store_cal_<?php echo $sl;?>" onkeyup="calculate_store(<?php echo $sl;?>),checkqty(<?php echo $sl;?>);" onchange="calculate_store(<?php echo $sl;?>);" placeholder="0" value="" min="0" tabindex="8"/>
                                        </td>
                                         <td class="text-right">
                                                <input type="text" name="um[]" id="um_<?php echo $sl;?>" class="form-control text-center" tabindex="8" required="required" value="<?php echo $receive['unit']; ?>"/>
                                            </td>
                                       
                                        <td>
                                              <input type="text" name="product_rate[]" onkeyup="calculate_store(<?php echo $sl;?>),checkqty(<?php echo $sl;?>);" onchange="calculate_store(<?php echo $sl;?>);" id="product_rate_<?php echo $sl;?>" class="form-control product_rate_<?php echo $sl;?> text-right" placeholder="0" value="<?php echo $receive['product_rate'];?>" min="0" tabindex="9" required="required" />
                                        </td>
                                        <td class="test">
                                                <input type="text" name="discount[]" onkeyup="calculate_store(<?php echo $sl;?>),checkqty(<?php echo $sl;?>);" id="discount_<?php echo $sl;?>" class="form-control discount_<?php echo $sl;?> text-right" placeholder="0.00" value="" min="0" tabindex="9"/>
                                            </td>
                                        <!-- Discount -->
                                        <td>
                                             <input class="form-control total_price text-right" type="text" name="total_price[]" id="total_price_<?php echo $sl;?>" value="0"  readonly="readonly" />                                            
                                        </td>
                                         <td>

<input type="checkbox" name='rcb[]' onclick="checkboxcheck(<?php echo $sl;?>)" id="check_id_<?php echo $sl;?>" value="" class="form-control">
                                        </td>
                                    </tr>                              
                                <?php $sl++; } 
                                 ?>
                                </tbody>                               
                                <tfoot>
                                    <tr>
                                        <td colspan="8"  style="text-align:right;"><b><?php echo display('total') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="grandTotal" class="form-control text-right" name="grand_total_price" value="" readonly="readonly" />
                                        </td>
                                         <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>  
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                         <div class="form-group row">
                            <label for="example-text-input" class=" col-form-label"></label>
                            <div class="col-sm-12 text-right">

                                <input type="submit" id="add_receive" class="btn btn-success btn-large" name="pretid" value="<?php echo display('receive') ?>" tabindex="9"/>
                               
                            </div>
                        </div>
                    </div>
                    <?php echo form_close()?>
                </div>
            </div>
        </div>




<style type="text/css">
    .btn:focus {
      background-color: #6A5ACD;
    }
</style>
<script type="text/javascript">
 function calculate_store(sl) {
       
        var gr_tot = 0;
        var item_ctn_qty    = $("#quantity_"+sl).val();
        var vendor_rate = $("#product_rate_"+sl).val();
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


<script type="text/javascript">
    function checkboxcheck(sl){
        var check_id    ='check_id_'+sl;
        var total_qntt  ='quantity_'+sl;
        var product_id  ='product_id_'+sl;
        var total_price ='total_price_'+sl;
       
        var price_item  ='price_item_'+sl;

        if($('#'+check_id).prop("checked") == true){
            document.getElementById(total_qntt).setAttribute("required","required");
            document.getElementById(product_id).setAttribute("name","product_id[]");
            document.getElementById(total_qntt).setAttribute("name","product_quantity[]");
            document.getElementById(total_price).setAttribute("name","total_price[]");
            document.getElementById(price_item).setAttribute("name","product_rate[]");
        }
        else if($('#'+check_id).prop("checked") == false){
            document.getElementById(total_qntt).removeAttribute("required");
            document.getElementById(product_id).removeAttribute("name");
            document.getElementById(total_qntt).removeAttribute("name");
            document.getElementById(total_price).removeAttribute("name");
            document.getElementById(total_qntt).removeAttribute("name");
            document.getElementById(price_item).removeAttribute("name");
        }
    };


 function checkrequird(sl) {
   var  quantity=$('#total_qntt_'+sl).val();
   var check_id    ='check_id_'+sl;
    if (quantity == null || quantity == 0 || quantity == ''){
    document.getElementById(check_id).removeAttribute("required");
    }else{
       
         document.getElementById(check_id).setAttribute("required","required");
    }
}
   
</script>
<!-- script for checkbox css -->
<script type="text/javascript">
      $(document).ready(function() {
      $('input[type=checkbox]').each(function() {
        if(this.nextSibling.nodeName != 'label') {
          $(this).after('<label for="'+this.id+'"></label>')
        }
      })
    })
</script>

<script type="text/javascript">
    $('#add_receive').prop("disabled", true);
    $('input:checkbox').click(function() {
    var check=$('[name="rcb[]"]:checked').length;
        if (check > 0) {
            
            $('#add_receive').prop("disabled", false);
        } else {
        if (check < 1){

            $('#add_receive').attr('disabled',true);}
        }
});


 function checkqty(sl)
{
   var order_qty = $('#orderqty_'+sl).val();
  var quant=$('#quantity_'+sl).val();
  if (isNaN(quant)) 
  {
    alert("Must input numbers");
    document.getElementById("quantity_"+sl).value = '';
    document.getElementById("total_price_"+sl).value = '';
    return false;
  }
  if (parseInt(quant) < 1) 
  {
    alert("You Can Not Return Less than 1");
      document.getElementById("quantity_"+sl).value = '';
        document.getElementById("total_price_"+sl).value = '';
    return false;
  }

  if (parseInt(quant) > parseInt(order_qty)) 
  {
     setTimeout(function(){
    alert("You Can Not Receive More than Order quantity");
   document.getElementById("quantity_"+sl).value = '';
       document.getElementById("total_price_"+sl).value = '';
      }, 500);
    return false;
  }
  
}

</script>

