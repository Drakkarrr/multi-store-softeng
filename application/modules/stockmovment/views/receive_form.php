<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('stockmovment/stockmovment/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($stockmovments->stockmovment_id): ?>
                        <a href="<?php echo base_url('stockmovment/stockmovment/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('stockmovment/stockmovment/receive_form') ?>
                  
                         <div class="row" id="">
                            <div class="col-sm-4">
                               <div class="form-group row">
                                    <label for="proposal_code" class="col-sm-4 col-form-label"><?php echo display('proposal_code') ?>
                                       
                                    </label>
                                    <div class="col-sm-8">
                                        <input type="hidden" name="movement_id" value="<?php echo $move_data->movement_id; ?>">
                                     <input type="text" name="proposal_code" value="<?php echo  $move_data->proposal_code; ?>" class="form-control">
                                      <input type="hidden" name="issue_code" value="<?php echo $move_data->issue_code; ?>">
                                       <input type="hidden" name="proposal_by" value="<?php echo $move_data->proposal_by; ?>">
                                         <input type="hidden" name="issue_by" value="<?php echo $move_data->issue_by; ?>">
                                    </div>

                                   
                                </div> 
                            </div>
                           
                            <div class="col-sm-4">
                               <div class="form-group row">
                                   <label for="for_store" class="col-sm-2 col-form-label"><?php echo display('for_store') ?>
                                    </label>
                                       
                                    
                                    <div class="col-sm-4">
                                       <?php
                                    if($this->session->userdata('isAdmin') ==1){

                                    ?>
                                      <?php echo form_dropdown('for_store',$store,(!empty($move_data->for_store_id)?$move_data->for_store_id:null), 'class="form-control" required') ?>
                                        <?php }else{?>
                                        <input type="text" name="" value="<?php 
$store=$this->db->select('*')->from('store')->where('store_id',$this->session->userdata('store_id'))->get()->row(); echo $store->store_name;?>" class="form-control" readonly>
                                        <input type="hidden" name="for_store" value="<?php echo $this->session->userdata('store_id'); ?>">
                                      <?php }?>
                                    </div>
                                      <label for="for_store" class="col-sm-2 col-form-label"><?php echo display('from_store') ?></label>
                                       <div class="col-sm-4">
                                          <?php
                                    if($this->session->userdata('isAdmin') ==1){

                                    ?>
                                      <?php echo form_dropdown('from_store',$store,(!empty($move_data->from_store_id)?$move_data->from_store_id:null), 'class="form-control" required') ?>
                                        <?php }else{?>
                                        <input type="text" name="from_storess" value="<?php 
$store=$this->db->select('*')->from('store')->where('store_id',$move_data->from_store_id)->get()->row(); echo $store->store_name;?>" class="form-control" readonly>
<input type="hidden" name="from_store" value="<?php echo $move_data->from_store_id;?>">
  <?php }?>
                                    </div>

                                   
                                </div> 
                            </div>
                            
                             <div class="col-sm-4">
                               <div class="form-group row">
                                   <label for="proposal_datetime" class="col-sm-4 col-form-label"><?php echo display('proposal_datetime') ?>
                                    </label>
                                       
                                    
                                    <div class="col-sm-8">
                                      <input type="text" name="proposal_datetime" class="form-control datetimepicker" value="<?php echo $move_data->proposal_datetime; ?>" >
                                    </div>

                                   
                                </div> 
                            </div>

                             
                        </div>
                    
                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="proposalTable">
                                <thead>
                                    <tr>
                                            <th class="text-center" width="20%"><?php echo display('product_code') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('product_name') ?></th>
                                             <th class="text-center"><?php echo display('proposal_qty') ?> </th>
                                             <th class="text-center"><?php echo display('issue_qty') ?></th>
                                            <th class="text-center"><?php echo display('receive_qty') ?> <i class="text-danger">*</i></th>
                                             <th class="text-center"><?php echo display('action') ?> <i class="text-danger"></i></th>
                                        </tr>
                                </thead>
                                <tbody id="aProposals">
                                  <?php 
                                  $sl=1;
                                  foreach ($move_details as $details) {?>
                                  
                               
                                    <tr>
                                       <td class="proposal">
                                           <input type="text" name="product_code"  class="form-control product_code" placeholder="<?php echo display('product_code') ?>" value="<?php echo $details['product_code'] ?>" id="product_code_1" tabindex="5" readonly>

                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]" value="<?php echo $details['product_id'] ?>" id="SchoolHiddenId"/>

                                            <input type="hidden" class="sl" value="1"/>
                                        </td>
                                      

                                       <td class="wt">
                                                 <input type="text" name="product_name" required class="form-control product_name"  placeholder="<?php echo display('product_name') ?>" id="product_name_1" tabindex="5" value="<?php echo $details['product_name'] ?>" readonly>

                                           
                                            </td>
                                          <td class="text-right">
                                               
                                                <input type="text" class="form-control"  id="pro_qty_<?php  echo $sl; ?>" value="<?php echo $details['proposal_qty'] ?>" readonly>
                                                
                                            </td>
                                             <td class="text-right">
                                               <input type="text"  id="issu_quantity_<?php  echo $sl; ?>" class="form-control text-right "  placeholder="proposal quantity" value="<?php echo $details['issue_qty'] ?>"  tabindex="8" required="required" readonly/>
                                                
                                            </td>
                                            <td class="text-right">
                                                <input type="text"  id="quantity_<?php  echo $sl; ?>" class="form-control text-right "  placeholder="proposal quantity" value="<?php echo $details['issue_qty'] ?>"  tabindex="8" required="required"/>
                                            </td>
                                           <td>
                                                <input type="checkbox" class="form-control" name="send_movement[]" id="check_id_<?php  echo $sl; ?>" onclick="checkboxcheck(<?php  echo $sl; ?>)">
                                            </td>
                                    </tr>
                                    <?php  $sl++;  }  ?>
                                </tbody>
                                
                            </table>
                        </div>
         
                    <div class="form-group text-right">
                       
                        <button type="submit" id="add" class="btn btn-success w-md m-b-5"><?php echo display('receive') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>

 <script type="text/javascript">
            $(function () {
                $('.datetimepicker').datetimepicker({dateFormat: "yy-mm-dd"});
            });
        </script>
        <script type="text/javascript">
    $('#add').prop("disabled", true);
    $('input:checkbox').click(function() {
    var check=$('[name="send_movement[]"]:checked').length;
        if (check > 0) {
            
            $('#add').prop("disabled", false);
        } else {
        if (check < 1){

            $('#add').attr('disabled',true);}
        }
});

     function checkboxcheck(sl){
        var check_id    ='check_id_'+sl;
        var total_qntt  ='quantity_'+sl;
       var propsal_qntt  ='pro_qty_'+sl;
        var issue_qntt  ='issu_quantity_'+sl;

        if($('#'+check_id).prop("checked") == true){
            document.getElementById(total_qntt).setAttribute("required","required");
            document.getElementById(total_qntt).setAttribute("name","total_qntt[]");
            document.getElementById(propsal_qntt).setAttribute("name","pro_qntt[]");
            document.getElementById(issue_qntt).setAttribute("name","issue_qntt[]");
        }
        else if($('#'+check_id).prop("checked") == false){
            document.getElementById(total_qntt).removeAttribute("required");
            document.getElementById(total_qntt).removeAttribute("name");
            document.getElementById(propsal_qntt).removeAttribute("name");
            document.getElementById(issue_qntt).removeAttribute("name");
        }
    };
</script>