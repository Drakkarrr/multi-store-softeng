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

              <?php echo form_open_multipart('return/returns/sales_return_insert',array('class' => 'form-vertical', 'id' => 'insert_sale','name' => 'insert_sale'))?>
                        

                        <div class="row" id="invoice_id">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="invoice_id" class="col-sm-3 col-form-label"><?php echo display('invoice_id') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="invoice_no" value="<?php echo $return_info->invoice_no ?>" class="form-control" placeholder="Invoice ID" readonly>
                                     <input type="hidden" name="store_id" value="<?php echo $return_info->store_id ?>">
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="customer_name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?>
                                    </label>
                                    <div class="col-sm-9">
                                       <input type="text" name="customer" class='form-control' value="<?php echo $return_info->customer_name ?>">
                                       <input type="hidden" name="customer_id" value="<?php echo $return_info->customer_id ?>">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                    <div class="row" id="Sales_man">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                
                                    <div class="col-sm-9">
                                       <input type="hidden" name="sale_type_id" value="<?php echo $return_info->sale_type_id ?>">
                                    </div>
                                </div> 
                            </div>
                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?>
                                    </label>
                                    <div class="col-sm-9">
                                       <input type="text" name="return_date" class="datepicker form-control" placeholder="date" value="<?php echo date('Y-m-d') ?>" required>
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
                                            <th class="text-center"><?php echo display('sale_qty') ?> <i class="text-danger">*</i></th>
                                             <th class="text-center"><?php echo display('return_qty') ?> <i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('price') ?><i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('total') ?></th>
                                            
                                            <th class="text-center"><?php echo display('select') ?></th>
                                        </tr>
                                </thead>
                                <tbody id="addsaleItem">
                                    <?php 
                                     $sl=1;
                                    foreach ($return as $return) {
                                    ?>
                                    <tr>
                                       <td class="span3 manufacturer">
                                           <input type="text" name="product_name" class="form-control product_name productSelection"  placeholder="<?php echo display('product_name') ?>" id="product_name" tabindex="5" value="<?php echo  $return['product_name'];?>">

                                            <input type="hidden" class="autocomplete_hidden_value product_id_<?php echo $sl; ?>" id="product_id_<?php echo $sl; ?>" value="<?php echo  $return['product_id'];?>"/>

                                        </td>
                                      

                                       <td class="wt">
                                                <input type="text" id="available_quantity_<?php echo $sl; ?>" class="form-control text-right stock_ctn_<?php echo $sl; ?>" placeholder="0.00" value="<?php
                                                $pur = $this->db->select('sum(purchase_receive_details.receive_qty) as qty')->from('purchase_receive_details')
            ->join('purchase_receive','purchase_receive_details.receive_id=purchase_receive.receive_id')
            ->where('purchase_receive_details.product_id',$return['product_id'])
            ->where('purchase_receive_details.store_id',$this->session->userdata('store_id'))
            ->get()
            ->row();
             $sal = $this->db->select('sum(sale_details.qty) as sqty')
                             ->from('sale_details')
                             ->join('sales_parent','sale_details.sale_id=sales_parent.sale_id')
                             ->where('sale_details.product_id',$return['product_id'])
                             ->where('sales_parent.store_id',$this->session->userdata('store_id'))    
                             ->get()
                             ->row();
        echo $available_quantity = $pur->qty-$sal->sqty; ?>" readonly/>
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="product_quantity[]" id="quantity_<?php echo $sl; ?>" class="form-control text-right store_cal_<?php echo $sl; ?>" onkeyup="calculate_store(<?php echo $sl; ?>),checkqty(<?php echo $sl; ?>);" onchange="calculate_store(<?php echo $sl; ?>);" placeholder="0.00" value="<?php echo  $return['qty'];?>" min="0" tabindex="8" readonly/>
                                            </td>
                                            <td class="text-right">
                                                <input type="text" name="" id="r_quantity_<?php echo $sl; ?>" class="form-control text-right store_cal_<?php echo $sl; ?>" onkeyup="calculate_store(<?php echo $sl; ?>),checkqty(<?php echo $sl; ?>);" onchange="calculate_store(<?php echo $sl; ?>);" placeholder="0.00" value=""  tabindex="" />
                                            </td>
                                            <td class="test">
                                                <input type="text"  onkeyup="calculate_store(<?php echo $sl; ?>),checkqty(<?php echo $sl; ?>);" onchange="calculate_store(<?php echo $sl; ?>);" id="product_rate_<?php echo $sl; ?>" class="form-control text-right" placeholder="0.00" value="<?php echo  $return['sell_price'];?>"  tabindex="9" readonly/>
                                            </td>
                                           

                                            <td class="text-right">
                                                <input class="form-control total_price text-right" type="text" name="total_price[]" id="total_price_<?php echo $sl; ?>" value=""  readonly/>
                                            </td>
                                            <td>
                                                 <input type="checkbox" class="form-control" name="ret_chk[]" id="check_id_<?php  echo $sl; ?>" onclick="checkboxcheck(<?php  echo $sl; ?>)">
                                            </td>
                                    </tr>
                                    <?php $sl++;}  ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="4">
                                       <center><label style="text-align:center;" for="reason" class="  col-form-label"><?php echo display('reason') ?></label></center>
                                             <textarea class="form-control" name="reason" id="reason" placeholder="<?php echo display('reason') ?>"></textarea> <br>
                                        </td>
                                        <td style="text-align:right;" ><b><?php echo display('total_amount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="grandTotal" class="text-right form-control" name="grand_total_price" value="" readonly="readonly" />
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="return_sale" class="btn btn-primary btn-large" name="add-sale" value="<?php echo display('return') ?>" />
                                
                            </div>
                        </div>
                    <?php echo form_close()?>
            </div>  
        </div>
    </div>
</div>
<script type="text/javascript">


     function calculate_store(sl) {
        var gr_tot = 0;
        var item_ctn_qty    = $("#r_quantity_"+sl).val();
        var vendor_rate = $("#product_rate_"+sl).val();

        var total_price     = item_ctn_qty * vendor_rate;
        $("#total_price_"+sl).val(total_price.toFixed(2));

       
        //Total Price
        $(".total_price").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });

        $("#grandTotal").val(gr_tot.toFixed(2,2));
    }

        </script>
        <script type="text/javascript">
    $('#return_sale').prop("disabled", true);
    $('input:checkbox').click(function() {
    var check=$('[name="ret_chk[]"]:checked').length;
        if (check > 0) {
            
            $('#return_sale').prop("disabled", false);
        } else {
        if (check < 1){

            $('#return_sale').attr('disabled',true);}
        }
});

     function checkboxcheck(sl){
        var check_id    ='check_id_'+sl;
        var total_qntt  ='r_quantity_'+sl;
        var product_rate ='product_rate_'+sl;
        var product_id ='product_id_'+sl;

        if($('#'+check_id).prop("checked") == true){
            document.getElementById(total_qntt).setAttribute("required","required");
            document.getElementById(total_qntt).setAttribute("name","total_qntt[]");
            document.getElementById(product_rate).setAttribute("name","product_rate[]");
            document.getElementById(product_id).setAttribute("name","product_id[]");
        }
        else if($('#'+check_id).prop("checked") == false){
            document.getElementById(total_qntt).removeAttribute("required");
            document.getElementById(total_qntt).removeAttribute("name");
            document.getElementById(product_id).removeAttribute("name");
            document.getElementById(product_rate).removeAttribute("name");
        }
    };
</script>