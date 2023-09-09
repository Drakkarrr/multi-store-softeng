
           

   <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4><?php echo (!empty($title)?$title:null) ?></h4>
                    </div>
                </div>
                    <div class="panel-body">

                    <?= form_open('dashboard/user/update_user_role') ?>
                  <div class="row">

                    <div class="col-md-8">
                     <div class="form-group row">


                            <label for="user" class="col-sm-3 col-form-label"><?php echo display('user') ?> <i class="text-danger">*</i></label>
                            <div class="col-sm-9">
                            <input type="text" name="user_name" class="form-control" value="<?php echo $user->firstname.' '.$user->lastname ?>" readonly> 
                            <input type="hidden" name="user_id" value="<?php echo $user->id?>">
                            </div>  
                        </div>
                          <div class="form-group row">
                        
                            <label for="role" class="col-sm-3 col-form-label"><?php echo display('role') ?> <i class="text-danger">*</i></label>
                            <div class="col-sm-9">  <?php foreach ($role as $role) {?>
                             
                           
                              
                            <input type="checkbox" name="roles[]"  value="<?php echo $role['id']?>" <?php   $selectrole = $this->db->select("sec_userrole.*,sec_role.name")
                                      ->from('sec_userrole')
                                      ->join('sec_role','sec_userrole.roleid=sec_role.id')
                                      ->where('sec_userrole.user_id',$user->id) 
                                      ->get()
                                      ->result_array();
                                      foreach ($selectrole as $selectrole) {
                                      if($selectrole['roleid'] == $role['id']){
                                        echo 'checked';
                                      }
                                           }?>>
                             <label><?php echo $role['name'] ?></label><br>
                                 <?php    } ?>
                             
                            </div>
                        </div>
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
    

