
<style type="text/css">
  .p{
    background-color: silver;
  }
</style>
           

   <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4><?php echo (!empty($title)?$title:null) ?></h4>
                    </div>
                </div>
                    <div class="panel-body">

                    <?= form_open('dashboard/user/create_user_role') ?>
                   <?php echo form_hidden('id',$role->id); ?>
                  
                  <div class="row">

                    <div class="col-md-8">
                     <div class="form-group row">
                            <label for="user" class="col-sm-3 col-form-label"><?php echo display('user') ?> <i class="text-danger">*</i></label>
                            <div class="col-sm-9">
                               <?php echo form_dropdown('user_id', $user_list,(!empty($role->user_id)?$role->user_id:null), 'class="form-control" id="user_id"   onchange="userRole(this.value)"') ?>
                            </div>
                           
                        </div>
                          <div class="form-group row">
                        
                            <label for="role" class="col-sm-3 col-form-label"><?php echo display('role') ?> <i class="text-danger">*</i></label>
                            <div class="col-sm-9">
                                 <?php echo form_dropdown('roleid',$role_list,(!empty($role->roleid)?$role->roleid:null), 'class="form-control"') ?>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-4" style="border: 1px">
                          <h3>Exsisting Role</h3>
                            <div id="existrole">
                      
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
    
            

<script type="text/javascript">
function userRole(id){
    $.ajax({
        url : "<?php echo site_url('dashboard/user/select_to_rol/')?>" + id,
        type: "GET",
        dataType: "json",
        success: function(data)
        {
            $('#existrole').html(data);
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
}
</script>

