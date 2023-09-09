<style>
            input[type=checkbox] + label {
                display: block;
                margin: 0.2em;
                cursor: pointer;
                padding: 0.2em;
            }

            input[type=checkbox] {
                display: none;
            }

            input[type=checkbox] + label:before {
                content: "\2714";
                border: 0.1em solid #000;
                border-radius: 0.2em;
                display: inline-block;
                width: 20px;
                height: 20px;
                padding-left: 0.2em;
                padding-bottom: 0.3em;
                margin-right: 0.2em;
                vertical-align: bottom;
                color: transparent;
                transition: .2s;
            }

            input[type=checkbox] + label:active:before {
                transform: scale(0);
            }

            input[type=checkbox]:checked + label:before {
                background-color: MediumSeaGreen;
                border-color: MediumSeaGreen;
                color: #fff;
            }

            input[type=checkbox]:disabled + label:before {
                transform: scale(1);
                border-color: #aaa;
            }

            input[type=checkbox]:checked:disabled + label:before {
                transform: scale(1);
                background-color: #bfb;
                border-color: #bfb;
            }
            .btn:focus {
      background-color: #6A5ACD;
    }
    .checkinline input[type=checkbox] + label{
        display: inline-block;
    }
          </style>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('add_lease') ?></h4>
                        </div>
                    </div>

                    <div class="panel-body">


   <?php echo form_open_multipart('lease/lease/form',array('class' => 'form-vertical', 'id' => 'insert_lease','name' => 'insert_lease'))?>
                        

                        <div class="row" id="pakage_code">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="pakage_code" class="col-sm-4 col-form-label"><?php echo display('pakage_code') ?>
                                       
                                    </label>
                                    <div class="col-sm-8">
                                     <input type="text" name="pakage_code" value="" class="form-control" placeholder="<?php echo display('pakage_code')?>">
                                    </div>

                                  
                                </div> 
                               
                            </div>
                             

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="pakage_name" class="col-sm-4 col-form-label"><?php echo display('pakage_name') ?>
                                    </label>
                                    <div class="col-sm-8">
                                        <input type="text" name="pakage_name" value="" class="form-control" placeholder="<?php echo display('pakage_name')?>">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                    <div class="row">
                          <table class="table table-bordered table-hover" id="saleTable">
                                <thead>
                                    <tr>
                                            <th class="text-center"><?php echo display('duration') ?></th> 
                                            <th  class="text-center"><?php echo display('advance') ?>%</th>
                                            <th  class="text-center"><?php echo display('markup') ?>%</th>
                                        </tr>
                                </thead>
                                <tbody>
                                    <td> <input type="text" name="duration" value="" class="form-control" placeholder="<?php echo display('duration')?>"></td>
                                    <td> <input type="text" name="advance" value="" class="form-control" placeholder="<?php echo display('advance')?>"></td>
                                    <td> <input type="text" name="markup" value="" class="form-control" placeholder="<?php echo display('markup')?>"></td>
                                </tbody>
                        </div>
                            
                          <div class="row">
                        
                            <table class="table table-bordered table-hover">
                                <thead>
                                   
    
                                    <tr>
                                         <th class="checkinline"><input type="checkbox" id="checkallproduct"/><label for="checkallproduct"><?php echo display('check_all_product');?></label>  <button type="button" class="btn btn-primary btn-md" data-target="#product" data-toggle="modal">
       <i class="fa fa-plus"></i></button>  <button type='button' class="btn btn-danger btn-md" value='remove' id='rmvBtn' name='test' /><i class="fa fa-minus"></i></button></th>
                                         <th class="checkinline"><input type="checkbox" id="checkallstore"/><label for="checkallstore"><?php echo display('check_all_store');?></label> <button type="button" class="btn btn-primary btn-md" data-target="#stor" data-toggle="modal">
       <i class="fa fa-plus"></i> 
    </button> <button type='button' class="btn btn-danger btn-md" value='' id='rmvStore' name='' /><i class="fa fa-minus"></i></button> </th>
                                        </tr>
                                </thead>
                                <tbody>
                                   
                                    <tr>
                                     <td> 
                                     <span id="pr"></span>  
                                    </td>
                                    <td><span id="st"></span></td>
                                     </tr>
                                          
                                </tbody>
                               
                            </table>
                           </div>
                       
                        <div class="form-group row">
                            <div class="col-sm-12 text-right">
                                <input type="submit" id="add_sale" class="btn btn-primary btn-large" name="add-sale" value="<?php echo display('save') ?>" />
                               
                            </div>
                        </div>
                    <?php echo form_close()?>
  
</div>


                    </div>
                </div>
            </div>
        </div>

        <div id="product" class="modal fade" role="dialog">
       <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>Add product</strong></center>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="panel">
                           <form id="p_ad">
                            <?php foreach ($product as $product) { ?>
                            <input type="hidden" id="pr_<?php echo $product['product_id']?>" value="<?php echo $product['product_name']?>">
                                        <input type="checkbox" name="" class="prch" value="<?php echo $product['product_id']?>" id="product_<?php echo $product['product_id']?>"> <label for="product_<?php echo $product['product_id']?>"><?php echo $product['product_name']?></label><?php } ?>
                                  <input type="button" id="btn_" value="ok" class="btn btn-success" />
                              </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


     <div id="stor" class="modal fade" role="dialog">
       <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>Add store</strong></center>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="panel">
                   <form id="s_ad">
                            <?php foreach ($store as $store) { ?>
                            <input type="hidden" id="st_<?php echo $store['store_id']?>" value="<?php echo $store['store_name']?>">
                                        <input type="checkbox" name="" class="strcheck" value="<?php echo $store['store_id']?>" id="stor_<?php echo $store['store_id']?>">  <label for="stor_<?php echo $store['store_id']?>"><?php echo $store['store_name']?></label><?php } ?>
                                  <input type="button" id="str" value="ok" class="btn btn-success" />
                              </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- sale Report End -->


<script type="text/javascript">
       $("#btn_").on('click', function () {
    var checkbox_value = "";
    $(".prch:checkbox").each(function () {
        var ischecked = $(this).is(".prch:checked");
             
   if (ischecked) {
           var ids=$(this).val();
    var pr_name =$('#pr_'+ids).val();
          var Lab= "lbl_"+ids;
         // alert(Lab);
           $("#pr").append('<input type="checkbox" id="'+$(this).val()+'" class="prdcheck" id="'+$(this).val()+'" name="product_id[]" value="'+$(this).val()+'" /><label for="'+$(this).val()+'" id="'+Lab+'">'+pr_name+'</label><br id="'+$(this).val()+'">');
        $('#product').modal('hide');
        }
      
    });
     document.getElementById("p_ad").reset();

});
    // store check info

 $("#str").on('click', function () {
    var checkbox_value = "";
    $(".strcheck:checkbox").each(function () {
        var ischecked = $(this).is(".strcheck:checked");
             
        if (ischecked) {


            var Labs= "lbls_"+$(this).val();
  $("#st").append('<input type="checkbox" id="'+$(this).val()+'" name="store_id[]" id="'+$(this).val()+'" value="'+$(this).val()+'" /><label for="'+$(this).val()+'" id="'+Labs+'">'+document.getElementById("st_"+$(this).val()).value+'</label><br id="strb'+$(this).val()+'">');
 $('#stor').modal('hide');

        }
      
    });
     document.getElementById("s_ad").reset();

});



</script>
<script type="text/javascript">
     // remove checked product 
var rmvBtn = document.getElementById('rmvBtn');

rmvBtn.addEventListener('click', function(){
   var rmvCheckBoxes = document.getElementsByName('product_id[]');
    
    for(var i = 0; i < rmvCheckBoxes.length; i++)
    {
        if(rmvCheckBoxes[i].checked)
        {
            var elem_id = rmvCheckBoxes[i].id;
            var lbl="lbl_"+elem_id;
            document.getElementById(lbl).remove();
            document.getElementById(elem_id).remove();
        }
    }  
});
    function removeElm(elm){
   elm.parentElement.removeChild(elm);
}



</script>
<script type="text/javascript">
    //check all in a click

    $("#checkallproduct").change(function () {
    $(document.getElementsByName('product_id[]')).prop('checked', $(this).prop("checked"));
});
    $("#checkallstore").change(function () {
    $(document.getElementsByName('store_id[]')).prop('checked', $(this).prop("checked"));
});


 var rmvStore = document.getElementById('rmvStore');

rmvStore.addEventListener('click', function(){
   var rmvsTores = document.getElementsByName('store_id[]');
    
    for(var i = 0; i < rmvsTores.length; i++)
    {
        if(rmvsTores[i].checked)
        {
            //removeStore(rmvsTores[i]);  
            var elems_id = 'strb'+rmvsTores[i].id;
            var lbls="lbls_"+rmvsTores[i].id;
            document.getElementById(lbls).remove();
            document.getElementById(elems_id).remove();
              
        }
    }  
});

function removeStore(elm){
   elm.parentElement.removeChild(elm);
}
</script>

