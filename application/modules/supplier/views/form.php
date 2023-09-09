<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('supplier/supplier/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($supplier->supplier_id): ?>
                        <a href="<?php echo base_url('supplier/supplier/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('supplier/supplier/form') ?>
                    <?php echo form_hidden('supplier_id', $suppliers->supplier_id) ?>
                     <div class="form-group row">
                        <label for="supplier_code" class="col-sm-3 col-form-label"><?php echo display('supplier_code') ?> *</label>
                        <div class="col-sm-9">
            <input name="supplier_code" class="form-control" type="text" placeholder="<?php echo display('supplier_code') ?>" id="supplier_code" value="<?php

            if(empty($suppliers->supplier_code)){
            echo $supplier_code;}else{
            echo $suppliers->supplier_code;
            } ?>" readonly>
                        </div>
                    </div> 
                    
                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('supplier_name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="supplier_name" class="form-control" type="text" placeholder="<?php echo display('supplier_name') ?>" id="supplier_name" value="<?php echo $suppliers->supplier_name; ?>">
                                    <input type="hidden" name="oldname" value="<?php echo $suppliers->supplier_name; ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="address" class="col-sm-3 col-form-label"><?php echo display('address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="address" class="form-control" type="address" placeholder="<?php echo display('address') ?>" id="address"><?php echo $suppliers->address; ?></textarea>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="phone" class="col-sm-3 col-form-label"><?php echo display('phone') ?></label>
                        <div class="col-sm-9">
                            <input name="phone" class="form-control" type="text" placeholder="<?php echo display('phone') ?>" id="phone" value="<?php echo $suppliers->phone ?>" >
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="email" class="col-sm-3 col-form-label"><?php echo display('email') ?></label>
                        <div class="col-sm-9">
                            <input name="email" class="form-control" type="email" placeholder="<?php echo display('email') ?>" id="email" value="<?php echo $suppliers->email ?>">
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="contact_person" class="col-sm-3 col-form-label"><?php echo display('contact_per_name') ?></label>
                        <div class="col-sm-9">
                            <input name="contact_per_name" class="form-control" type="text" placeholder="<?php echo display('contact_per_name') ?>" id="contact_person" value="<?php echo $suppliers->contact_per_name ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="contact_person_contact" class="col-sm-3 col-form-label"><?php echo display('c_p_contact') ?></label>
                        <div class="col-sm-9">
                            <input name="c_p_contact" class="form-control" type="text" placeholder="<?php echo display('c_p_contact') ?>" id="contact_person_contact" value="<?php echo $suppliers->c_p_contact ?>">
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