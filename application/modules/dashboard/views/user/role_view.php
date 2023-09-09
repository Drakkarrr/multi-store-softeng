
        <div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 

            <div class="panel-body">
                <table width="100%" class="datatable table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('user') ?></th>
                            <th><?php echo display('role') ?></th>
                           <th><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($roles)) { ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($roles as $role) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $role->firstname.' '.$que->lastname;; ?></td>
                                    <td><?php echo $role->name; ?></td>
                                    <td class="center">
                                    <?php if($this->permission->method('dashboard','delete')->access()): ?> 
                                        <a href="<?php echo base_url("dashboard/user/delete_Rolesetup/$role->id") ?>" class="btn btn-xs btn-danger" onclick="return confirm('<?php echo display('are_you_sure') ?>') "><i class="fa fa-trash"></i></a> 
                                        <?php endif; ?>
                                         <?php if($this->permission->method('dashboard','update')->access()): ?> 
                                        <a href="<?php echo base_url("dashboard/user/update_user_role/$role->user_id") ?>" class="btn btn-xs btn-info"><i class="fa fa-edit"></i></a> 
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

