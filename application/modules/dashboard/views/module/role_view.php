
        <div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 

            <div class="panel-body">
                <table width="100%" class="datatable table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('name') ?></th>
                            <th><?php echo display('active') ?></th>
                           <th><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($roles)) { ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($roles as $role) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $role->name; ?></td>
                                    <td><?php echo (($role->isactive==1)?display('active'):display('inactive')); ?></td>
                                    <td class="center">
                                           <?php if($role->isactive == 1) { ?>
                                           <?php if($role->name !== 'Super Admin'){?>
                                <a href="<?php echo base_url("dashboard/role_permission/isactive/$role->id/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="right" title="Inactive"><?php echo display('inactive')?></a>
                                <?php } ?>
                                <?php } else { ?>
                                 <?php if($role->name !== 'Super Admin'){?>
                                <a href="<?php echo base_url("dashboard/role_permission/isactive/$role->id/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="right" title="Active"><?php echo display('active')?></a>
                                 <?php } ?>
                                <?php } ?>
                                    <?php if($this->permission->method('dashboard','delete')->access()): ?>  <?php if($role->name !== 'Super Admin'){?>
                                        <a href="<?php echo base_url("dashboard/role_permission/delete_Rolesetup/$role->id") ?>" class="btn btn-xs btn-danger" onclick="return confirm('<?php echo display('are_you_sure') ?>') "><i class="fa fa-trash"></i></a> 
                                         <?php } ?>
                                        <?php endif; ?>
                                        <?php if($this->permission->method('dashboard','update')->access()): ?> 
                                             <?php if($role->name !== 'Super Admin'){?>
                                        <a href="<?php echo base_url("dashboard/role_permission/create_role/$role->id") ?>" class="btn btn-xs btn-info"><i class="fa fa-edit"></i></a> 
                                         <?php } ?>
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

