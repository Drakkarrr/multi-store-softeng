<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('supplier/supplier/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('supplier_code') ?></th>
                                <th><?php echo display('supplier_name') ?></th>
                                <th><?php echo display('phone') ?></th>
                                <th><?php echo display('email') ?></th>
                                <th><?php echo display('isactive') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($suppliers)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($suppliers as $supplier) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $supplier->supplier_code; ?></td>
                                <td><?php echo $supplier->supplier_name; ?></td>
                                <td><?php echo $supplier->phone; ?></td>
                                <td><?php echo $supplier->email; ?></td>
                                <td><?php echo (($supplier->isactive==1)?display('active'):display('inactive')); ?></td>
                                <td>
                                     <?php if($this->permission->method('supplier','update')->access()): ?>
                                   <?php if($supplier->isactive == 1) { ?>
                                <a href="<?php echo base_url("supplier/supplier/isactive/$supplier->supplier_id/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="right" title="Inactive"><?php echo display('inactive')?></a>
                                <?php } else { ?>
                                <a href="<?php echo base_url("supplier/supplier/isactive/$supplier->supplier_id/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="right" title="Active"><?php echo display('active')?></a>
                                <?php } ?>
                                <?php endif; ?>
                                <?php if($this->permission->method('supplier','read')->access()): ?>
                                    <a href="<?php echo base_url("supplier/supplier/view/$supplier->supplier_id") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('supplier','update')->access()): ?>
                                    <a href="<?php echo base_url("supplier/supplier/form/$supplier->supplier_id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('supplier','delete')->access()): ?>
                                    <a href="<?php echo base_url("supplier/supplier/delete/$supplier->supplier_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                </td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                    <?= $links ?>
                </div>
            </div> 
        </div>
    </div>
</div>

 