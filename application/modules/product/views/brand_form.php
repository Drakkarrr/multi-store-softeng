<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('product/product/brand_index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($brands->brand_id): ?>
                        <a href="<?php echo base_url('product/product/brand_form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('product/product/brand_form') ?>
                    <?php echo form_hidden('brand_id', $brands->brand_id) ?>
                    <div class="form-group row">
                        <label for="brand_name" class="col-sm-3 col-form-label"><?php echo display('brand_name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="brand_name" class="form-control" type="text" placeholder="<?php echo display('brand_name') ?>" id="brand_name" value="<?php echo $brands->brand_name; ?>">
                        </div>
                    </div>
         
                    <div class="form-group text-right">
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>