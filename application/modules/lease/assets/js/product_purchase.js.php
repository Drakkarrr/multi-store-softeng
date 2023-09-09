<?php
$cache_file = "product.json";
    header('Content-Type: text/javascript; charset=utf8');
?>
var productList = <?php echo file_get_contents($cache_file); ?> ; 

APchange = function(event, ui){
	$(this).data("autocomplete").menu.activeMenu.children(":first-child").trigger("click");
}
    function purchase_productList(cName) {
		var priceClass = 'price_item'+cName;
		var stock_ctn = 'stock_ctn_'+cName;
        $( ".productSelection" ).autocomplete(
		{
            source: productList,
			delay:300,
			focus: function(event, ui) {
				$(this).parent().find(".autocomplete_hidden_value").val(ui.item.value);
				$(this).val(ui.item.label);
				return false;
			},
			select: function(event, ui) {
				$(this).parent().find(".autocomplete_hidden_value").val(ui.item.value);
				$(this).val(ui.item.label);
				
				var id=ui.item.value;
				var dataString = 'product_id='+ id;
				var base_url = $('.baseUrl').val();
                var manufacturer = $('.manufacturer_hidden_value').val(); 
                if(manufacturer.length==0)
            	{
                    alert("Select a manufacturer");
                    return false;
                }
                var manufacturer_name = $("#manufacturer_name").val();
				$.ajax
				   ({
						type: "POST",
						url: base_url+"Cinvoice/retrieve_product_data",
						data: dataString,
						cache: false,
						success: function(data)
						{
							var obj = jQuery.parseJSON(data);
					
                          	var server_manufacturer=obj.manufacturer_id;
                                                        
                            if(manufacturer != server_manufacturer)
                            {
                            	alert("It's not " +manufacturer_name+"'s  product");
			                    $('.'+priceClass).val("");
			                    $('.'+stock_ctn).val("");
			                    quantity_calculate(cName);
			                    return false;
                            }
                          
                            $('.'+priceClass).val(obj.manufacturer_price);
                            $('.'+stock_ctn).val(obj.total_product);
                            quantity_calculate(cName);
                            
							//This Function Stay on purchase.js page
						} 
					});
				
				$(this).unbind("change");
				return false;
			}
		});
		$( ".productSelection" ).focus(function(){
			$(this).change(APchange);
		
		});
    }
