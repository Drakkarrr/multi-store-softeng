<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('lease/lease/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('pakage_name') ?></th>
                                <th><?php echo display('duration') ?></th>
                                <th><?php echo display('advance') ?></th>
                                <th><?php echo display('markup') ?></th>
                                <?php if($this->permission->method('lease','update')->access()): ?>
                                <th><?php echo display('isactive') ?></th>
                                 <?php endif; ?>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($leases)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($leases as $leases) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $leases->package_name; ?></td>
                                <td><?php echo $leases->lease_duration; ?></td>
                                <td><?php  echo $leases->advance*100; ?> %</td>
                                <td><?php echo $leases->markup*100; ?> %</td>
                                <td> <?php echo (($leases->isactive==1)?display('active'):display('inactive')); ?></td>
                                    <td class="center">
                                         <?php if($this->permission->method('lease','read')->access()): ?>
                                    <a href="<?php echo base_url("lease/lease/view/$leases->lease_id") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                         <?php if($this->permission->method('lease','update')->access()): ?>
                                        <?php if($leases->isactive == 1) { ?>
                                <a href="<?php echo base_url("lease/lease/isactive/$leases->lease_id/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="right" title="Inactive"><?php echo display('inactive')?></a>
                                <?php } else { ?>
                                <a href="<?php echo base_url("lease/lease/isactive/$leases->lease_id/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="right" title="Active"><?php echo display('active')?></a>
                                <?php } ?>
                                 <?php endif; ?>

                                <?php if($this->permission->method('lease','delete')->access()): ?>
                                    <a href="<?php echo base_url("lease/lease/delete/$leases->lease_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                 <?php if($this->permission->method('lease','update')->access()): ?>
                                    <a href="<?php echo base_url("lease/lease/lease_up_form/$leases->lease_id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
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

 