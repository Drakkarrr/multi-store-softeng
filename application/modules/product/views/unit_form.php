<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('product/product/unit_index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($units->unit_id): ?>
                        <a href="<?php echo base_url('product/product/unit_form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('product/product/unit_form') ?>
                    <?php echo form_hidden('unit_id', $units->unit_id) ?>
                    <div class="form-group row">
                        <label for="unit_name" class="col-sm-3 col-form-label"><?php echo display('unit_name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="unit_name" class="form-control" type="text" placeholder="<?php echo display('unit_name') ?>" id="unit_name" value="<?php echo $units->unit_name; ?>">
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