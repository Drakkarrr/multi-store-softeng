
        <div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 

            <div class="panel-body">
                <table width="100%" class="datatable2 table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('store_name') ?></th>
                            <th><?php echo display('store_phone') ?></th>
                            <th><?php echo display('store_address') ?></th>
                            <th><?php echo display('active') ?></th>
                           <th><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($stores)) { ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($stores as $stores) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $stores->store_name; ?></td>
                                    <td><?php echo $stores->store_phone; ?></td>
                                    <td><?php echo $stores->store_address; ?></td>
                                    <td> <?php echo (($stores->isactive==1)?display('active'):display('inactive')); ?></td>
                                    <td class="center">
                                        <?php if($this->permission->method('stores','update')->access()): ?> 
                                        <?php if($stores->isactive == 1) { ?>
                                <a href="<?php echo base_url("store/Store/isactive/$stores->store_id/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="right" title="Inactive"><?php echo display('inactive')?></a>
                                <?php } else { ?>
                                <a href="<?php echo base_url("store/Store/isactive/$stores->store_id/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="right" title="Active"><?php echo display('active')?></a>
                                <?php } ?>
                                <?php endif; ?>
                                 <?php if($this->permission->method('stores','update')->access()): ?> 
                                        <a href="<?php echo base_url("store/Store/create/$stores->store_id") ?>" class="btn btn-xs btn-info"><i class="fa fa-edit"></i></a> 
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

