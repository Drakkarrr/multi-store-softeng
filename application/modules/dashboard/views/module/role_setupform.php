
   <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4><?php echo (!empty($title)?$title:null) ?></h4>
                    </div>
                </div>
                    <div class="panel-body">

                    <?= form_open('dashboard/role_permission/create_role') ?>
                      <?php echo form_hidden('id',$role->id); ?>
                    <div class="form-group row">
                            <label for="name" class="col-sm-3 col-form-label"><?php echo display('role_name') ?> <i class="text-danger">*</i></label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" name="name" id="name" required="" value="<?php echo $role->name; ?>" placeholder="<?php echo display('name') ?>" />
                            </div>
                        </div>
                     <div class="form-group row">
                            <label for="isactive" class="col-sm-3 col-form-label"><?php echo display('isactive') ?> <i class="text-danger">*</i></label>
                            <div class="col-sm-6">
                               <select name="isactive" class="form-control">
                                   <option value="1" <?php if($role->isactive=1){
                                    echo 'selected';
                                   } ?>>Active</option>
                                    <option value="0" <?php if($role->isactive=0){
                                    echo 'selected';
                                   } ?>>Inactive</option>
                               </select>
                            </div>
                        </div>
                        <div class="form-group text-center">
                            <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                            <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('set') ?></button>
                        </div>
                    <?php echo form_close() ?>

                 </div>  
             </div>
        </div>
    </div>
    
    
