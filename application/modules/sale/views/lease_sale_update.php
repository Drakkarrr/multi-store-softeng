
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
                   <?php echo form_open_multipart('sale/sale/lease_sales_up_form',array('class' => 'form-vertical', 'id' => 'update_sale','name' => 'update_sale'))?>
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
                                       <input type="text" class="form-control" name="" value="<?php echo $sales->customer_name; ?>" readonly>
                                      <input type="hidden" class="form-control" name="customer_id" value="<?php echo $sales->customer_id; ?>">
                                        
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
                          <div class="row" id="inquiry">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="inquiry_officer" class="col-sm-3 col-form-label"><?php echo display('inquiry_officer') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     
                                     <?php echo form_dropdown('inquiry',$inquiry,(!empty($sales->inquiry_officer)?$sales->inquiry_officer:null), 'class="form-control"') ?>
                                     <input type="hidden" name="" id="grantorcheck">
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="lease_package" class="col-sm-3 col-form-label"><?php echo display('lease_package') ?>
                                    </label>
                                    <div class="col-sm-9">
                                        <?php echo form_dropdown('lease_id',$leasinfo,(!empty($sales->lease_id)?$sales->lease_id:null), 'class="form-control"id="lease_id" onchange="leas_advanceinfo(this.value)" required') ?>
                                        <?php
                                        $lsinfo = $this->db->select('*')->from('lease')->where('lease_id',$sales->lease_id)->get()->row(); ?>

                                    </div>
                                   
                                </div>
                            </div>
                        </div>
               <div class="row" id="gurrantor">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="gurrantor1" class="col-sm-3 col-form-label"><?php echo display('gurrantor1') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     
                                     <?php echo form_dropdown('gurrantor_1',$gurrantor,(!empty($sales->gurrantor_1)?$sales->gurrantor_1:null), 'class="form-control"') ?>
                                  
                                    </div>   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="gurrantor2" class="col-sm-3 col-form-label"><?php echo display('gurrantor2') ?>
                                    </label>
                                    <div class="col-sm-9">
                                        <?php echo form_dropdown('gurrantor_2',$gurrantor,(!empty($sales->gurrantor_2)?$sales->gurrantor_2:null), 'class="form-control"id="lease_id" required') ?>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="leaseUpdatetable">
                                <thead>
                                    <tr>  <th class="text-center" width="20%"><?php echo display('product_name') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('stock_ctn') ?></th>
                                            <th class="text-center"><?php echo display('quantity') ?> <i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('u_pack_price') ?><i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('advance')?></th>
                                            <th class="text-center"><?php echo display('total_pack_price') ?></th>
                                            
                                            <th class="text-center"><?php echo display('action') ?></th>
                                        </tr>
                                </thead>
                                <tbody id="lssale">
                                  <?php

                                   $sl=0;
                                   foreach ($saledts as $details) {  $sl++;?>
                                    <tr>
                                        <td class="span3">
                                           <input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="ls_product_sale_list(<?php echo $sl; ?>);" placeholder="<?php echo display('product_name') ?>" id="ls_product_name_<?php echo $sl; ?>" tabindex="5"  value="<?php echo $details['product_name'] ?>">

                                            <input type="hidden" class="autocomplete_hidden_value product_id_<?php echo $sl; ?>" name="product_id[]" id="SchoolHiddenId" value="<?php echo $details['product_id'] ?>"/>

                                            <input type="hidden" class="sl" value="<?php echo $sl; ?>">
                                        </td>
                                      

                                       <td class="wt">
                                                <input type="text" id="ls_available_quantity_<?php echo $sl; ?>" class="form-control text-right stock_ctn_<?php echo $sl; ?>" placeholder="0.00" readonly/>
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="product_quantity[]" id="ls_quantity_<?php echo $sl; ?>" class="form-control text-right store_cal_<?php echo $sl; ?>" onkeyup="calculate_lssal(<?php echo $sl; ?>),checklsqty(<?php echo $sl; ?>);" onchange="calculate_lssal(<?php echo $sl; ?>);" placeholder="0.00" value="<?php echo $details['qty']; ?>" min="0" tabindex="8" required="required"/>
                                            </td>
                                            <td class="test">
                                                <input type="text" name="lease_unit_rate[]" onkeyup="calculate_lssal(<?php echo $sl; ?>),checklsqty(<?php echo $sl; ?>);" onchange="calculate_lssal(<?php echo $sl; ?>);" id="ls_product_rate_<?php echo $sl; ?>" class="form-control text-right" placeholder="0.00" value="<?php  echo $details['lease_unit_price']?>"  tabindex="9" required="required" />
                                                 <input type="hidden" name="" id="ls_minimum_price_<?php echo $sl; ?>" />
                                                 <input type="hidden" name="" id="ls_block_price_<?php echo $sl; ?>" />
                                                 <input type="hidden" name="product_rate[]" id="retail_p_<?php echo $sl; ?>" value="<?php  echo $details['sell_price']?>">
                                            </td>
                                           <td class="text-right">
                                                <input class="form-control advance text-right" type="text" id="advance_pr_<?php echo $sl; ?>" name="advance_pr" value="<?php echo $lsinfo->advance*$details['sell_price']*$details['qty'];?>" />
                                                <input type="hidden" id="unit_adv_<?php echo $sl; ?>">
                                            </td>
                                            <td class="text-right">
                                                <input class="form-control total_ls_price text-right" type="text" id="ls_total_price_<?php echo $sl; ?>" name="total_price[]" value="<?php echo $details['lease_unit_price']*$details['qty'];?>"  />
                                            </td>
                                            <td>
                                                <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowls(this)" tabindex="10"><i class="fa fa-close" aria-hidden="true"></i></button>
                                            </td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                              <tfoot>
                                  
                                    <tr>
                                        
                                        <td style="text-align:right;" colspan="5"><b><?php echo display('total_advance_amount') ?>:</b></td>
                                        <td class="text-right">
                                           <input type="hidden" id="lsgrandTotal" class="text-right form-control" name="grand_total_price" value="<?php echo $sales->package_price; ?>" readonly="readonly" />
                                            <span id="lspackege"></span>
                                            <input type="text" id="lspaidAmount" onkeyup="invoice_lspaidamount()" class="text-right form-control" name="paid_amount" value="<?php echo $sales->advance_amnt; ?>"   readonly="" />
                                        </td>
                                    </tr>
                                     <tr>
                                        
                                        <td style="text-align:right;" colspan="5"><b><?php echo display('total_package_amount') ?>:</b></td>
                                        <td class="text-right">
                                          <input type="hidden" id="install_price" name="installment_price" value="<?php echo $sales->installment_amnt; ?>">
                                            <input type="text" id="package_price" class="text-right form-control" name="package_price" value="<?php echo $sales->package_price; ?>"   readonly="" />
                                            <input type="hidden" id="l_duration" value="<?php echo $lsinfo->lease_duration; ?>">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <input type="button" id="add_invoice_item_sl" class="btn btn-info" name="add-invoice-item"  onClick="lssale('lssale');" value="<?php echo display('add_new_item') ?>"  tabindex="11"/>

                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                        </td>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('remaining_amnt') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="slremaining_amnt" class="text-right form-control" name="remaining_amnt" value="<?php echo $sales->remaining_amnt; ?>" readonly="readonly" />
                                        </td>

                                    </tr>
                                </tfoot>
                               
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                               <input type="submit" id="add_sale_sl" class="btn btn-primary btn-large" name="add-sale" value="<?php echo display('update') ?>"  />
                                <input type="hidden" value="<?php echo display('submit_and_add_another') ?>" name="add-sale-another" class="btn btn-large btn-success" id="add_sale_another_sl" >
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
  function ls_product_sale_list(sl) {

    var options = {
        minLength: 0,
        source: function( request, response ) {
            var product_name = $('#ls_product_name_'+sl).val();
            var lease_id = $('#lease_id').val();
            var csrf_test_name = $('[name="csrf_test_name"]').val();
        $.ajax( {
          url: "<?php echo site_url('sale/sale/lease_product_search')?>",
          method: 'post',
          dataType: "json",
          data: {
            term: request.term,
            product_name:product_name,
            lease_id:lease_id,
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
            var available_quantity    = 'ls_available_quantity_'+sl;
            var price    = 'ls_product_rate_'+sl;
            var minimum_price = 'ls_minimum_price_'+sl;
            var block_price   = 'ls_block_price_'+sl;
            var lease_id     = $('#lease_id').val();
            var unit_adv      = 'unit_adv_'+sl;

            $.ajax({
                type: "POST",
                url: "<?php echo site_url('sale/sale/retrieve_lease_product_data')?>",
                 data: {product_id:product_id,lease_id:lease_id},
                cache: false,
                success: function(data)
                {
                    console.log(data);
                    obj = JSON.parse(data);
                   $('#'+available_quantity).val(obj.total_product);
                   $('#'+price).val(obj.price);
                    $('#'+minimum_price).val(obj.minprice);
                   $('#'+block_price).val(obj.blockprice);
                   $('#'+unit_adv).val(obj.adv);
        
                  
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

    function lssale(divName){

  
    var row = $("#leaseUpdatetable tbody tr").length;
    var count = row+1 ;
    var limits = 500;
    if (count == limits) alert("You have reached the limit of adding " + count + " inputs");
        else{
            var newdiv = document.createElement('tr');
            var tabin="ls_product_name_"+count;
             tabindex = count * 5 ,
           newdiv = document.createElement("tr");
            tab1 = tabindex + 1;
            tab2 = tabindex + 2;
            tab3 = tabindex + 3;
            tab4 = tabindex + 4;
            tab5 = tabindex + 5;
            tab6 = tab5 + 1;
            tab7 = tab6 +1;
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="ls_product_sale_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="ls_product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" id="ls_available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" tabindex="'+tab2+'" required  id="ls_quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" onkeyup="calculate_lssal(' + count + '),checklsqty(' + count + ');" onchange="calculate_lssal(' + count + ');" placeholder="0.00" value="" min="0"/>  </td><td class="test"><input type="text" name="product_rate[]" required onkeyup="calculate_lssal('+ count +'),checklsqty(' + count + ');" onchange="calculate_lssal('+ count +');" id="ls_product_rate_'+ count +'" class="form-control ls_product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/><input type="hidden" name="" id="ls_minimum_price_'+ count +'" /><input type="hidden" name="" id="ls_block_price_'+ count +'" /></td><td class="text-right"><input class="form-control advance text-right" type="text" id="advance_pr_'+ count +'" name="advance_pr" value="0.00"  /></td><input type="hidden" id="unit_adv_'+ count +'"><td class="text-right"><input class="form-control total_ls_price text-right ls_total_price_'+ count +'" type="text" name="total_price[]" id="ls_total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td> <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowls(this)"tabindex="'+tab4+'"><i class="fa fa-close" aria-hidden="true"></i></button></td>';
            document.getElementById(divName).appendChild(newdiv);
            document.getElementById(tabin).focus();
            document.getElementById("add_invoice_item_sl").setAttribute("tabindex", tab5);
            document.getElementById("add_sale_sl").setAttribute("tabindex", tab6);
            document.getElementById("add_sale_another_sl").setAttribute("tabindex", tab7);
           
            count++;

            $("select.form-control:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });
        }
    }

    //Calculate store product
    function calculate_lssal(sl) {
       
        var gr_tot = 0;
        var total_adv = 0;
        var item_ctn_qty    = $("#ls_quantity_"+sl).val();
        var vendor_rate = $("#ls_product_rate_"+sl).val();
         var unt_adv = $("#unit_adv_"+sl).val();
         var total_advance = unt_adv*item_ctn_qty;
        var total_price     = item_ctn_qty * vendor_rate;
        $("#advance_pr_"+sl).val(total_advance.toFixed(2));
       $("#ls_total_price_"+sl).val(total_price.toFixed(2));
       
        //Total Price
        $(".total_ls_price").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });
         $(".advance").each(function() {
            isNaN(this.value) || 0 == this.value.length || (total_adv += parseFloat(this.value))
        });
         var lease_duration = $("#l_duration").val();
         var adv_percent = $("#l_advance").val();
         var markup_percent = $("#l_markup").val();
         var markup_val= parseFloat('0.00');
        $("#lsgrandTotal").val(gr_tot.toFixed(2,2));
        var TotalProdPrice = $("#lsgrandTotal").val(),
        advance_amnt = TotalProdPrice*adv_percent,
        rem = TotalProdPrice - advance_amnt,
        markup_val = markup_percent*rem,
        Package_price = (advance_amnt/adv_percent)+markup_val;
        remainig = gr_tot-total_adv,
        install_amnt = remainig/lease_duration
        
      $("#slremaining_amnt").val(remainig.toFixed(2,2));
      $("#lspaidAmount").val(total_adv.toFixed(2,2));
      $("#package_price").val(gr_tot.toFixed(2,2));
      $("#install_price").val(install_amnt.toFixed(2,2));

    }
    function deleteRowls(e) {
        var t = $("#les_saleTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculate_lssal()
    }

    function invoice_lspaidamount() {

    var t = $("#lsgrandTotal").val(),

        a = $("#lspaidAmount").val(),
        e = t - a;
     
        
$("#slremaining_amnt").val(e.toFixed(2,2));

}
</script>



<!-- JS -->



<script type="text/javascript">
     function checklsqty(sl)
{
  var stock=$("#ls_available_quantity_"+sl).val();
  var y=$("#ls_quantity_"+sl).val();
  var x=$("#ls_product_rate_"+sl).val();
  var mprice=$("#ls_minimum_price_"+sl).val();
  var blprice=$("#ls_block_price_"+sl).val();
  if(parseInt(y) > parseInt(stock)){

     setTimeout(function(){
   alert('You Can not Sale More than stock');
 document.getElementById("ls_quantity_"+sl).value = '';

       }, 500);
    return false;
  
  }

  if (isNaN(y)) 
  {
    alert("Must input numbers");
    document.getElementById("ls_quantity_"+sl).value = '';
     //$("#quantity_"+sl).val() = '';
    return false;
  }
if(parseInt(x) <= parseInt(mprice) && parseInt(x) > parseInt(blprice)){
   
     setTimeout(function(){
    alert('This is below minimum price');
     $('#add_sale_sl').attr('disabled',false);

    $('#add_sale_another_sl').attr('disabled',false);
       }, 500);
    return false;

  }
  if(parseInt(x)  <= parseInt(blprice)){
   
      setTimeout(function(){
   $('#add_sale_sl').attr('disabled',true);
    $('#add_sale_another_sl').attr('disabled',true);
       }, 500);
    return false;

  }else{
    
     $('#add_sale_sl').attr('disabled',false);

    $('#add_sale_another_sl').attr('disabled',false);
  }


  if (isNaN(x)) 
  {
    alert("Must input numbers");
     document.getElementById("ls_product_rate_"+sl).value = '';
    return false;
  }
    calculate_lssal()
}

</script>