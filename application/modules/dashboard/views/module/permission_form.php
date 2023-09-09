<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4><?php echo (!empty($title)?$title:null) ?></h4>
                </div>
            </div>
            <div class="panel-body">
 

                <?php echo form_open("dashboard/role_permission/create/") ?>

                    <div class="form-group row">
                        <label for="blood" class="col-sm-3 col-form-label"><?php echo display('role_name') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('role_id', $user_list, $role_permission->role_id, ' class="form-control" onchange="userPermission(this.value)"') ?> 
                        </div>
                    </div>


                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('module_name') ?></th>
                                <th><?php echo display('create') ?></th>
                                <th><?php echo display('read') ?></th>
                                <th><?php echo display('update') ?></th>
                                <th><?php echo display('delete') ?></th> 
                            </tr>
                        </thead>
                        <?php $sl = 0 ?>
                        <?php if (!empty($module_list)) { ?>
                        <?php foreach ($module_list as $fk_module_id => $module_name) { ?>
                        <?php 
                            $createID = 'id="create'.$fk_module_id.'"';
                            $readID   = 'id="read'.$fk_module_id.'"';
                            $updateID = 'id="update'.$fk_module_id.'"';
                            $deleteID = 'id="delete'.$fk_module_id.'"'; 
                        ?>
                        <tbody>
                            <tr>
                                <td><?php echo ($sl+1) ?></td>
                                <td>
                                    <?php echo $module_name?>
                                    <input type="hidden" name="fk_module_id[<?php echo $sl ?>][]" value="<?php echo $fk_module_id ?>" id="id_<?php echo $fk_module_id ?>">
                                </td>
                                <td>
                                    <div class="checkbox checkbox-success text-center">
                                        <?php echo form_checkbox('create['.$sl.'][]', '1', null, $createID); ?>
                                        <label for="create<?php echo $fk_module_id ?>"></label>
                                    </div>
                                </td> 
                                <td>
                                    <div class="checkbox checkbox-success text-center">
                                        <?php echo form_checkbox('read['.$sl.'][]', '1', null, $readID); ?>
                                        <label for="read<?php echo $fk_module_id ?>"></label>
                                    </div>
                                </td> 
                                <td>
                                    <div class="checkbox checkbox-success text-center">
                                        <?php echo form_checkbox('update['.$sl.'][]', '1', null, $updateID); ?>
                                        <label for="update<?php echo $fk_module_id ?>"></label>
                                    </div>
                                </td> 
                                <td>
                                    <div class="checkbox checkbox-success text-center">
                                        <?php echo form_checkbox('delete['.$sl.'][]', '1', null, $deleteID); ?>
                                        <label for="delete<?php echo $fk_module_id ?>"></label>
                                    </div>
                                </td> 
                            </tr>
                        </tbody>
                        <?php $sl++ ?>
                        <?php } ?>
                        <?php } //endif ?>
                    </table>
         
                    <div class="form-group text-right">
                        <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>
        </div>
    </div>
</div>
<body></body>

 <script type="text/javascript">
function userPermission(id){
    $.ajax({
        url : "<?php echo site_url('dashboard/role_permission/select_rolepermission/')?>" + id,
        type: "GET",
        dataType: "json",
        success: function(data)
        {
  var output = '';
  for (var property in data) {
  output += property+':'+ data[property].name + ': '+'create' + data[property].create+';read'+ data[property].read+';delete '+ data[property].delete+';update'+data[property].update + ";";
   //var  ids='id_'+property;
  var ids=  $('#id_'+property).val();
  if(ids == property && data[property].create==1){
  document.getElementById("create"+property).checked = true;
  }else{
    document.getElementById("create"+property).checked = false;
  }
if(ids == property && data[property].read==1){
  document.getElementById("read"+property).checked = true;
  }else{
    document.getElementById("read"+property).checked = false;
  }
  if(ids == property && data[property].delete==1){
  document.getElementById("delete"+property).checked = true;
  }else{
    document.getElementById("delete"+property).checked = false;
  }
  if(ids == property && data[property].update==1){
  document.getElementById("update"+property).checked = true;
  }else{
    document.getElementById("update"+property).checked = false;
  }
}
//alert(output);
        console.log(data);
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
}
</script>