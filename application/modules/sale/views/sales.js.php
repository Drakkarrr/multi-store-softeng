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
            var retail_price     = 'product_rate_'+sl;
            var minimum_price    = 'cminimum_price_'+sl;
            var block_price      = 'cblock_price_'+sl;
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
                   $('#'+retail_price).val(obj.price);
                   $('#'+minimum_price).val(obj.minprice);
                   $('#'+block_price).val(obj.blockprice);
                  
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
    var count = 2;
    var limits = 500;

    function addsaleOrderField1(divName){

  
        if (count == limits)  {
            alert("You have reached the limit of adding " + count + " inputs");
        }
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
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="product_sale_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" id="available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" tabindex="'+tab2+'" required  id="quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" onkeyup="calculate_store(' + count + '),checkqty(' + count + ');" onchange="calculate_store(' + count + ');" placeholder="0.00" value="" min="0"/>  </td><td class="test"><input type="text" name="product_rate[]" required onkeyup="calculate_store('+ count +'),checkqty(' + count + ');" onchange="calculate_store('+ count +');" id="product_rate_'+ count +'" class="form-control product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/> <input type="hidden" name="" id="cminimum_price_'+ count +'" /><input type="hidden" name="" id="cblock_price_'+ count +'" /></td><td class="text-right"><input class="form-control total_price text-right total_price_'+ count +'" type="text" name="total_price[]" id="total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td><button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)"tabindex="'+tab4+'"><i class="fa fa-close" aria-hidden="true"></i></button></td>';
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
    }
    function deleteRow(e) {
        var t = $("#saleTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculate_store()
    }
</script>



<!-- JS -->



<script type="text/javascript">
     function checkqty(sl)
{
  var stock=$("#available_quantity_"+sl).val();
  var y=$("#quantity_"+sl).val();
  var x=$("#product_rate_"+sl).val();
  var mprice=$("#cminimum_price_"+sl).val();
  var blprice=$("#cblock_price_"+sl).val();
  if(parseInt(y) > parseInt(stock)){
     setTimeout(function(){
   alert('You Can not Sale More than stock');
 document.getElementById("quantity_"+sl).value = '';
       }, 500);
    return false;
    
  }
  if (isNaN(y)) 
  {
    alert("Must input numbers");
    document.getElementById("quantity_"+sl).value = '';
     //$("#quantity_"+sl).val() = '';
    return false;
  }
  if(parseInt(x)  <= parseInt(mprice) && parseInt(x) > parseInt(blprice)){
   
     setTimeout(function(){
    alert('This is below minimum price');
     $('#add_sale').attr('disabled',false);
    $('#add_sale_another').attr('disabled',false);
       }, 500);
    return false;

  }
  if(parseInt(x)  <= parseInt(blprice)){
   
      setTimeout(function(){
   $('#add_sale').attr('disabled',true);
    $('#add_sale_another').attr('disabled',true);
       }, 500);
    return false;
  }else{
     $('#add_sale').attr('disabled',false);
    $('#add_sale_another').attr('disabled',false);
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
<script type="text/javascript">
  function cr_product_sale_list(sl) {

    var options = {
        minLength: 0,
        source: function( request, response ) {
            var product_name = $('#cr_product_name_'+sl).val();
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
            var available_quantity    = 'cr_available_quantity_'+sl;
            var price    = 'cr_product_rate_'+sl;
            var minimum_price = 'crd_minimum_price_'+sl;
            var block_price   = 'crd_block_price_'+sl;
           
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
                   $('#'+price).val(obj.price);
                   $('#'+minimum_price).val(obj.minprice);
                   $('#'+block_price).val(obj.blockprice);
        
                  
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
    var count = 2;
    var limits = 500;

    function crsale(divName){

  
        if (count == limits)  {
            alert("You have reached the limit of adding " + count + " inputs");
        }
        else{
            var newdiv = document.createElement('tr');
            var tabin="cr_product_name_"+count;
             tabindex = count * 5 ,
           newdiv = document.createElement("tr");
            tab1 = tabindex + 1;
            tab2 = tabindex + 2;
            tab3 = tabindex + 3;
            tab4 = tabindex + 4;
            tab5 = tabindex + 5;
            tab6 = tab5 + 1;
            tab7 = tab6 +1;
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="cr_product_sale_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="cr_product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" id="cr_available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" tabindex="'+tab2+'" required  id="cr_quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" onkeyup="calculate_crsal(' + count + '),checkcrqty(' + count + ');" onchange="calculate_crsal(' + count + ');" placeholder="0.00" value="" min="0"/>  </td><td class="test"><input type="text" name="product_rate[]" required onkeyup="calculate_crsal('+ count +'),checkcrqty(' + count + ');" onchange="calculate_crsal('+ count +');" id="cr_product_rate_'+ count +'" class="form-control cr_product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/><input type="hidden" name="" id="crd_minimum_price_'+ count +'" /><input type="hidden" name="" id="crd_block_price_'+ count +'" /></td><td class="text-right"><input class="form-control total_cr_price text-right cr_total_price_'+ count +'" type="text" name="total_price[]" id="cr_total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td> <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowcr(this)"tabindex="'+tab4+'"><i class="fa fa-close" aria-hidden="true"></i></button></td>';
            document.getElementById(divName).appendChild(newdiv);
            document.getElementById(tabin).focus();
            document.getElementById("add_invoice_item_cr").setAttribute("tabindex", tab5);
            document.getElementById("add_sale_cr").setAttribute("tabindex", tab6);
         document.getElementById("add_sale_another_cr").setAttribute("tabindex", tab7);
           
            count++;

            $("select.form-control:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });
        }
    }

    //Calculate store product
    function calculate_crsal(sl) {
       
        var gr_tot = 0;
        var item_ctn_qty    = $("#cr_quantity_"+sl).val();
        var vendor_rate = $("#cr_product_rate_"+sl).val();

        var total_price     = item_ctn_qty * vendor_rate;
        $("#cr_total_price_"+sl).val(total_price.toFixed(2));

       
        //Total Price
        $(".total_cr_price").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });

        $("#crgrandTotal").val(gr_tot.toFixed(2,2));
        var t = $("#crgrandTotal").val(),

        a = $("#paidAmount").val(),
        e = t - a;
        d = a - t;
        
$("#remaining_amnt").val(e.toFixed(2,2));
    }
    function deleteRowcr(e) {
        var t = $("#cr_saleTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculate_crsal()
    }

    function invoice_paidamount() {

    var t = $("#crgrandTotal").val(),

        a = $("#paidAmount").val(),
        e = t - a;
        d = a - t;
        
$("#remaining_amnt").val(e.toFixed(2,2));

}
</script>



<!-- JS -->



<script type="text/javascript">
     function checkcrqty(sl)
{
  var stock=$("#cr_available_quantity_"+sl).val();
  var y=$("#cr_quantity_"+sl).val();
  var x=$("#cr_product_rate_"+sl).val();
  var mprice=$("#crd_minimum_price_"+sl).val();
  var blprice=$("#crd_block_price_"+sl).val();

  if(parseInt(y) > parseInt(stock)){
     setTimeout(function(){
   alert('You Can not Sale More than stock');
 document.getElementById("cr_quantity_"+sl).value = '';
       }, 500);
    return false;
    
  }
  if (isNaN(y)) 
  {
    alert("Must input numbers");
    document.getElementById("cr_quantity_"+sl).value = '';
     //$("#quantity_"+sl).val() = '';
    return false;
  }
   if(parseInt(x)  <= parseInt(mprice) && x > parseInt(blprice)){
   
     setTimeout(function(){
    alert('This is below minimum price');
     $('#add_sale_cr').attr('disabled',false);
    $('#add_sale_another_cr').attr('disabled',false);
       }, 500);
    return false;

  }
  if(parseInt(x)  <= parseInt(blprice)){
   
      setTimeout(function(){
   $('#add_sale_cr').attr('disabled',true);
    $('#add_sale_another_cr').attr('disabled',true);
       }, 500);
    return false;

  }else{
     $('#add_sale_cr').attr('disabled',false);
    $('#add_sale_another_cr').attr('disabled',false);
  }

  if (isNaN(x)) 
  {
    alert("Must input numbers");
     document.getElementById("cr_product_rate_"+sl).value = '';
    return false;
  }
}

</script>

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
            var retail_price    = 'retail_p_'+sl;
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
                   $('#'+retail_price).val(obj.retprice);
        
                  
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

  
    var row = $("#les_saleTable tbody tr").length;
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
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="ls_product_sale_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="ls_product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" id="ls_available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" id="ls_quantity_'+ count +'" class="form-control text-right store_cal_'+ count +'" onkeyup="calculate_lssal('+ count +'),checklsqty('+ count +'),installpreview();" onchange="calculate_lssal('+ count +');" placeholder="0.00" value="" min="0" tabindex="8" required="required">  </td><td class="test"><input type="text" name="lease_unit_rate[]" required onkeyup="calculate_lssal('+ count +'),checklsqty(' + count + ');" onchange="calculate_lssal('+ count +');" id="ls_product_rate_'+ count +'" class="form-control ls_product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/><input type="hidden" name="" id="ls_minimum_price_'+ count +'" /><input type="hidden" name="" id="ls_block_price_'+ count +'" /> <input type="hidden" name="product_rate[]" id="retail_p_'+ count +'"> <input type="hidden"  class="retail" name="retail_calc[]" id="retail_calc_'+ count +'" ></td><td class="text-right"><input class="form-control advance text-right" type="text" id="advance_pr_'+ count +'" name="advance_pr" value="0.00"  /></td><input type="hidden" id="unit_adv_'+ count +'"><td class="text-right"><input class="form-control total_ls_price text-right ls_total_price_'+ count +'" type="text" name="total_price[]" id="ls_total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td> <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowls(this)"tabindex="'+tab4+'"><i class="fa fa-close" aria-hidden="true"></i></button></td>';
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
        var total_retail = 0;
        var item_ctn_qty    = $("#ls_quantity_"+sl).val();
        var vendor_rate = $("#ls_product_rate_"+sl).val();
        var unit_retail = $("#retail_p_"+sl).val();
         var unt_adv = $("#unit_adv_"+sl).val();
         var total_advance = unt_adv*item_ctn_qty;
         var total_price     = item_ctn_qty * vendor_rate;
         var total_ret     = item_ctn_qty * unit_retail;
        $("#advance_pr_"+sl).val(total_advance.toFixed(2));
        $("#ls_total_price_"+sl).val(total_price.toFixed(2));
        $("#retail_calc_"+sl).val(total_ret.toFixed(2));
        //Total Price
        $(".total_ls_price").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });
         $(".advance").each(function() {
            isNaN(this.value) || 0 == this.value.length || (total_adv += parseFloat(this.value))
        });
         $(".retail").each(function() {
            isNaN(this.value) || 0 == this.value.length || (total_retail += parseFloat(this.value))
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
      $("#total_retail_price").val(total_retail.toFixed(2,2));
    }
    function deleteRowls(e) {
        var t = $("#les_saleTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculate_lssal()
        installpreview()
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