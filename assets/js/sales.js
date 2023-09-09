


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




<!-- JS -->




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
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="cr_product_sale_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="cr_product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" id="cr_available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" tabindex="'+tab2+'" required  id="cr_quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" onkeyup="calculate_crsal(' + count + '),checkcrqty(' + count + ');" onchange="calculate_crsal(' + count + ');" placeholder="0.00" value="" min="0"/>  </td><td class="test"><input type="text" name="product_rate[]" required onkeyup="calculate_crsal('+ count +'),checkcrqty(' + count + ');" onchange="calculate_crsal('+ count +');" id="cr_product_rate_'+ count +'" class="form-control cr_product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/></td><td class="text-right"><input class="form-control total_cr_price text-right cr_total_price_'+ count +'" type="text" name="total_price[]" id="cr_total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td> <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowcr(this)"tabindex="'+tab4+'"><i class="fa fa-close" aria-hidden="true"></i></button></td>';
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
        calculateSum()
    }

    function invoice_paidamount() {

    var t = $("#crgrandTotal").val(),

        a = $("#paidAmount").val(),
        e = t - a;
        d = a - t;
        
$("#remaining_amnt").val(e.toFixed(2,2));

}




<!-- JS -->




     function checkcrqty(sl)
{
  
  var y=$("#cr_quantity_"+sl).val();
  var x=$("#cr_product_rate_"+sl).val();
  if (isNaN(y)) 
  {
    alert("Must input numbers");
    document.getElementById("cr_quantity_"+sl).value = '';
     //$("#quantity_"+sl).val() = '';
    return false;
  }
  if (isNaN(x)) 
  {
    alert("Must input numbers");
     document.getElementById("cr_product_rate_"+sl).value = '';
    return false;
  }
}




  function ls_product_sale_list(sl) {

    var options = {
        minLength: 0,
        source: function( request, response ) {
            var product_name = $('#ls_product_name_'+sl).val();
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
            var available_quantity    = 'ls_available_quantity_'+sl;
            var price    = 'ls_product_rate_'+sl;
           
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






  // Counts and limit for sale order
    var count = 2;
    var limits = 500;

    function lssale(divName){

  
        if (count == limits)  {
            alert("You have reached the limit of adding " + count + " inputs");
        }
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
           


            newdiv.innerHTML ='<td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="ls_product_sale_list('+ count +');" placeholder="<?php echo display("product_name") ?>" id="ls_product_name_'+ count +'" tabindex="'+tab1+'" > <input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/>  <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" id="ls_available_quantity_'+ count +'" class="form-control text-right stock_ctn_'+ count +'" placeholder="0.00" readonly/> </td><td class="text-right"><input type="text" name="product_quantity[]" tabindex="'+tab2+'" required  id="ls_quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" onkeyup="calculate_lssal(' + count + '),checklsqty(' + count + ');" onchange="calculate_lssal(' + count + ');" placeholder="0.00" value="" min="0"/>  </td><td class="test"><input type="text" name="product_rate[]" required onkeyup="calculate_lssal('+ count +'),checklsqty(' + count + ');" onchange="calculate_lssal('+ count +');" id="ls_product_rate_'+ count +'" class="form-control ls_product_rate_'+ count +' text-right" placeholder="0.00" value="" min="0" tabindex="'+tab3+'"/></td><td class="text-right"><input class="form-control total_ls_price text-right ls_total_price_'+ count +'" type="text" name="total_price[]" id="ls_total_price_'+ count +'" value="0.00" readonly="readonly" /> </td><td> <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowls(this)"tabindex="'+tab4+'"><i class="fa fa-close" aria-hidden="true"></i></button></td>';
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
        var item_ctn_qty    = $("#ls_quantity_"+sl).val();
        var vendor_rate = $("#ls_product_rate_"+sl).val();

        var total_price     = item_ctn_qty * vendor_rate;
        $("#ls_total_price_"+sl).val(total_price.toFixed(2));

       
        //Total Price
        $(".total_ls_price").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });

        $("#lsgrandTotal").val(gr_tot.toFixed(2,2));
        var t = $("#lsgrandTotal").val(),

        a = $("#lspaidAmount").val(),
        e = t - a;
        d = a - t;
        
$("#slremaining_amnt").val(e.toFixed(2,2));
    }
    function deleteRowls(e) {
        var t = $("#les_saleTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculateSum()
    }

    function invoice_lspaidamount() {

    var t = $("#lsgrandTotal").val(),

        a = $("#lspaidAmount").val(),
        e = t - a;
        d = a - t;
        
$("#slremaining_amnt").val(e.toFixed(2,2));

}




<!-- JS -->




     function checklsqty(sl)
{
  
  var y=$("#ls_quantity_"+sl).val();
  var x=$("#ls_product_rate_"+sl).val();
  if (isNaN(y)) 
  {
    alert("Must input numbers");
    document.getElementById("ls_quantity_"+sl).value = '';
     //$("#quantity_"+sl).val() = '';
    return false;
  }
  if (isNaN(x)) 
  {
    alert("Must input numbers");
     document.getElementById("ls_product_rate_"+sl).value = '';
    return false;
  }
}

