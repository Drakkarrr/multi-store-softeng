<style type="text/css">
    .in_pr{
        width: 100px;
    }
</style>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('product/product/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">

                     <?= form_open_multipart('product/product/update_product') ?>
                    <table class="datatable2 table table-bordered table-hover">
                         <?php if($this->permission->method('product','update')->access()): ?>
                         <p class="text-right"> <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button></p>
                         <?php endif ?>
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('product_name') ?></th>
                                <th><?php echo display('category') ?></th>
                                <th><?php echo display('model') ?></th>
                                <th><?php echo display('pur_price') ?></th>
                                <th><?php echo display('min_price') ?></th>
                                <th><?php echo display('retprice') ?></th>
                                <th><?php echo display('bl_price') ?></th>
                                <th><a href="<?php echo base_url("product/product/index") ?>" class="btn btn-info btn-xs" >All</a><a href="<?php echo base_url("product/product/active_list") ?>" class="btn btn-info btn-xs" >A</a>
                                <a href="<?php echo base_url("product/product/inactive_list") ?>" class="btn btn-info btn-xs" >I</a>
                                </th>
                                
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($products)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($products as $product) { 

$product_info = $this->db->select('product.*,product_category.category_name,product_model.model_name,product_brand.brand_name,product_unit.unit_name')
                         ->from('product')
                         ->join('product_category','product.category=product_category.category_id')
                         ->join('product_model','product.model=product_model.model_id')
                         ->join('product_brand','product.brand=product_brand.brand_id')
                         ->join('product_unit','product.unit=product_unit.unit_id')
                         ->where('product_id',$product->product_id)
                         ->get()
                         ->row();
                         //print_r($product_info);

                                ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $product->product_name; ?><input type="hidden" name="product_name[]" class="form-control" value="<?php echo $product->product_name; ?>"/>
                                    <input type="hidden" name="product_code[]" style="width:100px" class="form-control" value="<?php echo $product->product_code; ?>"/>
                                <input type="hidden" name="product_id[]" value="<?php echo $product->product_id; ?>">
                                <input type="hidden" name="model[]" value="<?php echo $product->model; ?>">
                                <input type="hidden" name="unit[]" value="<?php echo $product->unit; ?>">
                                <input type="hidden" name="brand[]" value="<?php echo $product->brand; ?>">
                                <input type="hidden" name="category[]" value="<?php echo $product->category; ?>">
                                </td>
                                 <td><?php echo $product_info->category_name; ?></td>
                                 <td><?php echo $product_info->model_name; ?></td>
                                <td>
                                    <input type="text" name="purchase_p[]" style="width:70px" class="form-control" value="<?php echo $product->purchase_price; ?>" <?php if(!$this->permission->method('product','update')->access()): echo 'readonly'; endif?>/>
                                </td>
                                <td><input type="text" name="minim_p[]" style="width:70px" class="form-control" value="<?php echo $product->minimum_price; ?>" <?php if(!$this->permission->method('product','update')->access()): echo 'readonly'; endif?>/></td>
                                <td><input type="text" name="retail_p[]" style="width:70px" class="form-control" value="<?php echo $product->retail_price; ?>" <?php if(!$this->permission->method('product','update')->access()): echo 'readonly'; endif?>/></td>
                                <td><input type="text" name="block_p[]" style="width:70px" class="form-control" value="<?php echo $product->block_price; ?>" <?php if(!$this->permission->method('product','update')->access()): echo 'readonly'; endif?>/>
                              <input type="hidden" name="product_details[]" value="<?php echo $product->product_details; ?>">
                              <input type="hidden" name="isactive[]" value="<?php echo $product->isactive; ?>">
                                 </td>
                                <td> <?php echo (($product->isactive==1)?display('active'):display('inactive')); ?>
                                </td>
                                <td>
                                   <?php if($product->isactive == 1) { ?>
                                <a href="<?php echo base_url("product/product/isactive/$product->product_id/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-xs" data-toggle="tooltip" data-placement="right" title="Inactive">I</a>
                                <?php } else { ?>
                                <a href="<?php echo base_url("product/product/isactive/$product->product_id/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="right" title="Active">A</a>
                                <?php } ?>

                                <?php if($this->permission->method('product','update')->access()): ?>
                                    <a href="<?php echo base_url("product/product/form/$product->product_id") ?>" class="btn btn-info btn-xs" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('product','delete')->access()): ?>
                                    <a href="<?php echo base_url("product/product/delete/$product->product_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                </td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                     <?php echo form_close() ?>
                    <?= $links ?>
                </div>
            </div> 
        </div>
    </div>
</div>

 