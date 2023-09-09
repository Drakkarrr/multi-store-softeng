
        <div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 

            <div class="panel-body">
                <table width="100%" class="datatable2 table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('warehouse_name') ?></th>
                            <th><?php echo display('warehouse_phone') ?></th>
                            <th><?php echo display('warehouse_address') ?></th>
                            <th><?php echo display('active') ?></th>
                           <th><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($warehouses)) { ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($warehouses as $warehouses) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $warehouses->warehouse_name; ?></td>
                                    <td><?php echo $warehouses->warehouse_phone; ?></td>
                                    <td><?php echo $warehouses->warehouse_address; ?></td>
                                    <td> <?php echo (($warehouses->isactive==1)?display('active'):display('inactive')); ?></td>
                                    <td class="center">
                                        <?php if($warehouses->isactive == 1) { ?>
                                <a href="<?php echo base_url("warehouse/warehouse/isactive/$warehouses->warehouse_id/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="right" title="Inactive"><?php echo display('inactive')?></a>
                                <?php } else { ?>
                                <a href="<?php echo base_url("warehouse/warehouse/isactive/$warehouses->warehouse_id/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="right" title="Active"><?php echo display('active')?></a>
                                <?php } ?>
                                    <?php if($this->permission->method('warehouses','delete')->access()): ?> 
                                        <a href="<?php echo base_url("warehouse/warehouse/delete/$warehouses->warehouse_id") ?>" class="btn btn-xs btn-danger" onclick="return confirm('<?php echo display('are_you_sure') ?>') "><i class="fa fa-trash"></i></a> 
                                        <?php endif; ?>
                                        

                                 <?php if($this->permission->method('warehouses','update')->access()): ?> 
                                        <a href="<?php echo base_url("warehouse/warehouse/create/$warehouses->warehouse_id") ?>" class="btn btn-xs btn-info"><i class="fa fa-edit"></i></a> 
                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <?php $sl++; ?>
                            <?php } ?> 
                        <?php } ?> 
                    </tbody>
                </table>  <!-- /.table-responsive -->
            </div>
        </div>
    </div>
</div>

