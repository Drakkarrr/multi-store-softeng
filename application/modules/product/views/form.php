<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('product/product/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($products->product_id): ?>
                        <a href="<?php echo base_url('product/product/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('product/product/form') ?>
                    <?php echo form_hidden('product_id', $products->product_id) ?>
                     <div class="form-group row">
                        <label for="product_code" class="col-sm-3 col-form-label"><?php echo display('product_code') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="product_code" class="form-control" type="text" placeholder="<?php echo display('product_code') ?>" id="product_code" value="<?php if(empty($products->product_code)){
                                        echo $product_code;
                                    }else{
                                       echo $products->product_code; 
                                    } ?>" required>
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="product_name" class="col-sm-3 col-form-label"><?php echo display('product_name') ?> *</label>
                        <div class="col-sm-9">
                                    
                                    <textarea name="product_name" id="product_name" class="form-control" readonly=""><?php echo $products->product_name; ?></textarea>
                        </div>
                    </div> 
              <div class="form-group row">
                        <label for="category_name" class="col-sm-3 col-form-label"><?php echo display('category_name') ?> *</label>
                        <div class="col-sm-9">
                                  
                                    <?php echo form_dropdown('category_name',$category,(!empty($products->category)?$products->category:null), 'class="form-control superSelect"  ') ?>
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="brand_name" class="col-sm-3 col-form-label"><?php echo display('brand_name') ?> *</label>
                        <div class="col-sm-9">
                                    <?php echo form_dropdown('brand_name',$brand,(!empty($products->brand)?$products->brand:null), 'class="form-control superSelect"  ') ?>
                        </div>
                    </div> 

                   <div class="form-group row">
                        <label for="model_name" class="col-sm-3 col-form-label"><?php echo display('model_name') ?> *</label>
                        <div class="col-sm-9">
                                     <?php echo form_dropdown('model_name',$model,(!empty($products->model)?$products->model:null), 'class="form-control superSelect" ') ?>
                        </div>
                    </div> 
                   
                    
                     <div class="form-group row">
                        <label for="unit_name" class="col-sm-3 col-form-label"><?php echo display('um') ?> *</label>
                        <div class="col-sm-9">
                                     <?php echo form_dropdown('unit_name',$unit,(!empty($products->unit)?$products->unit:null), 'class="form-control"') ?>
                        </div>
                    </div> 
                     
                    <div class="form-group row">
                        <label for="product_details" class="col-sm-3 col-form-label"><?php echo display('product_details') ?> </label>
                        <div class="col-sm-9">
                                    <textarea name="product_details" class="form-control" type="text" placeholder="<?php echo display('product_details') ?>" id="product_detailse"><?php echo $products->product_details; ?></textarea>
                        </div>
                    </div> 
                 
                   <div class="form-group row">
                       
                        <div class="col-sm-9">
                                    <input name="purchase_price" class="form-control" type="hidden" placeholder="<?php echo display('purchase_price') ?>" id="purchase_price" value="<?php
                                    if(!empty($products->purchase_price)){
                                        echo $products->purchase_price;
                                    }else{
                                        echo 0;
                                    }

                                      ?>" >
                        </div>
                    </div> 
                    <div class="form-group row">
                        
                        <div class="col-sm-9">
                                    <input name="minimum_price" class="form-control" type="hidden" placeholder="<?php echo display('minimum_price') ?>" id="minimum_price" value="<?php 
                               if(!empty($products->minimum_price)){
                                echo $products->minimum_price;
                            }else{
                                echo 0;
                            }

                                     ?>" >
                        </div>
                    </div> 
                      <div class="form-group row">
                      
                        <div class="col-sm-9">
                                    <input name="retail_price" class="form-control" type="hidden" placeholder="<?php echo display('retail_price') ?>" id="retail_price" value="<?php
                                 if(!empty($products->retail_price)){
                                     echo $products->retail_price;
                                 }else{
                                    echo 0;
                                 }

                                     ?>" >
                        </div>
                    </div> 
                      <div class="form-group row">
                     
                        <div class="col-sm-9">
                                    <input name="block_price" class="form-control" type="hidden" placeholder="<?php echo display('block_price') ?>" id="block_price" value="<?php 
                                  if(!empty($products->block_price)){
                                     echo $products->block_price;
                                 }else{
                                    echo 0;
                                 }
                                    ?>" >
                        </div>
                    </div> 
         
                    <div class="form-group text-right">
                        <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>

<script type="text/javascript">


$("select.superSelect").change(function () {
    var selectedOptions = [];
    $("select.superSelect").each(function(){
        var value = $(this).val();
        if($.trim(value)){
            selectedOptions.push(value);
        }
    });
    $("#product_name").html(selectedOptions.join('-'));
});
</script>