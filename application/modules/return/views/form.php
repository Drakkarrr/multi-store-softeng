<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('stockmovment/stockmovment/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($stockmovments->stockmovment_id): ?>
                        <a href="<?php echo base_url('stockmovment/stockmovment/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('stockmovment/stockmovment/form') ?>
                    <?php echo form_hidden('stockmovment_id', $stockmovments->stockmovment_id) ?>
                         <div class="row" id="">
                            <div class="col-sm-4">
                               <div class="form-group row">
                                    <label for="proposal_code" class="col-sm-4 col-form-label"><?php echo display('proposal_code') ?>
                                       
                                    </label>
                                    <div class="col-sm-8">
                                     <input type="text" name="proposal_code" value="<?php echo  $proposal_code; ?>" class="form-control">
                                    </div>

                                   
                                </div> 
                            </div>
                           
                            <div class="col-sm-4">
                               <div class="form-group row">
                                   <label for="from_store" class="col-sm-4 col-form-label"><?php echo display('from_store') ?>
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                        <?php echo form_dropdown('from_store',$store,(!empty($store->from_store_id)?$store->from_store_id:null), 'class="form-control" required') ?>
                                    </div>
                                   
                                </div> 
                            </div>
                            
                             <div class="col-sm-4">
                               <div class="form-group row">
                                   <label for="proposal_datetime" class="col-sm-4 col-form-label"><?php echo display('proposal_datetime') ?>
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                      <input type="text" name="proposal_datetime" class="form-control datetimepicker" value="<?php echo date('Y-m-d H:i:s'); ?>" >
                                    </div>

                                   
                                </div> 
                            </div>

                             
                        </div>
                    
                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="proposalTable">
                                <thead>
                                    <tr>
                                            <th class="text-center" width="20%"><?php echo display('product_code') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('product_name') ?></th>
                                            <th class="text-center"><?php echo display('proposal_qty') ?> <i class="text-danger">*</i></th>
                                             <th class="text-center"><?php echo display('action') ?> <i class="text-danger"></i></th>
                                        </tr>
                                </thead>
                                <tbody id="aProposals">
                                    <tr>
                                       <td class="proposal">
                                           <input type="text" name="product_code" required class="form-control product_code productSelection" placeholder="<?php echo display('product_code') ?>" onkeyup="proposal(1);" id="product_code_1" tabindex="5" >

                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]" id="SchoolHiddenId"/>

                                            <input type="hidden" class="sl" value="1"/>
                                        </td>
                                      

                                       <td class="wt">
                                                 <input type="text" name="product_name" required class="form-control product_name productSelection"  placeholder="<?php echo display('product_name') ?>" id="product_name_1" tabindex="5" >

                                           
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="proposal_qty[]" id="quantity_1" class="form-control text-right store_cal_1"  placeholder="proposal quantity" value=""  tabindex="8" required="required"/>
                                            </td>
                                           <td>
                                                <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)" tabindex="10"><?php echo display('delete')?></button>
                                            </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="4">
                                            <input type="button" id="add_newProposal" class="btn btn-info" name="add-invoice-item"  onClick="addproposal('aProposals');" value="<?php echo display('add_new_item') ?>"  tabindex="11"/>

                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                        </td>
                                        
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
         
                    <div class="form-group text-right">
                       
                        <button type="submit" id="add"class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>
<script type="text/javascript">

  // Counts and limit for purchase order
    var count = 2;
    var limits = 500;

    function addproposal(divName){

        if (count == limits)  {
            alert("You have reached the limit of adding " + count + " inputs");
        }
        else{
            var newdiv = document.createElement('tr');
            var tabin="product_code_"+count;
             tabindex = count * 3 ,
           newdiv = document.createElement("tr");
            tab1 = tabindex + 1;
            tab2 = tabindex + 2;
            tab3 = tabindex + 3;
            tab4 = tab3 + 1;
            tab5 = tab4 + 1;
           


            newdiv.innerHTML ='<td class="proposal"> <input type="text" name="product_code" required class="form-control product_code" placeholder="<?php echo display('product_code') ?>" id="product_code_'+ count +'" onkeyup="proposal('+ count +');" tabindex="5" ><input type="hidden" class="autocomplete_hidden_value product_id_'+ count +'" name="product_id[]" id="SchoolHiddenId"/> <input type="hidden" class="sl" value="'+ count +'">  </td><td class="wt"> <input type="text" name="product_name" required class="form-control product_name productSelection"  placeholder="<?php echo display("product_name") ?>" id="product_name_'+ count +'" tabindex="'+tab1+'" >  </td><td class="text-right"><input type="text" name="proposal_qty[]" tabindex="'+tab2+'" required  id="quantity_'+ count +'" class="form-control text-right store_cal_' + count + '" placeholder="proposal quantity" value="" min="0"/>  </td><td> <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)"><?php echo display('delete')?></button></td>';
            document.getElementById(divName).appendChild(newdiv);
            document.getElementById(tabin).focus();
           
            count++;

}

}
function deleteRow(e) {
        var t = $("#proposalTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
    }


    function proposal(sl) {

    // Auto complete
    var options = {
        minLength: 0,
        source: function( request, response ) {
            var product_code = $('#product_code_'+sl).val();
            
        $.ajax( {
          url: "<?php echo site_url('stockmovment/stockmovment/proposal_product')?>",
          method: 'post',
          dataType: "json",
          data: {
            term: request.term,
            product_code:product_code,
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
            var product_name    = 'product_name_'+sl;
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('stockmovment/stockmovment/retrieve_product_data')?>",
                 data: {product_id:product_id},
                cache: false,
                success: function(data)
                {
                    console.log(data);
                    obj = JSON.parse(data);
                   $('#'+product_name).val(obj.product_name);
                  
                } 
            });


            $(this).unbind("change");
            return false;
       }
   }

   $('body').on('keydown.autocomplete', '.product_code', function() {
       $(this).autocomplete(options);
   });

}

</script>
 <script type="text/javascript">
            $(function () {
                $('.datetimepicker').datetimepicker({dateFormat: "yy-mm-dd"});
            });
        </script>