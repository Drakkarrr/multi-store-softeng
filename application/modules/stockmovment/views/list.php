<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('stockmovment/stockmovment/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('proposal_code') ?></th>
                                <th><?php echo display('proposed_by') ?></th>
                                <th><?php echo display('for_store') ?></th>
                                <th><?php echo display('proposal_datetime') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($stockmovments)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($stockmovments as $movement) { ?>
                            <tr>
    <td><?php echo $sl++; ?></td>
    <td><?php echo $movement->proposal_code; ?></td>
     <td><?php $userinfo = $this->db->select('*')->from('user')->where('id',$movement->proposal_by)->get()->row();

     echo $userinfo->firstname.' '.$userinfo->lastname;

      ?></td>
    <td><?php 
       $for=$this->db->select('store_name')->from('store')->where('store_id',$movement->for_store_id)->get()->row();
       echo $for->store_name;
     ?></td>
    <td><?php echo $movement->proposal_datetime;?></td>
    <?php if($this->session->userdata('isAdmin')==0){ ?>
    <td>
     <?php if($this->permission->method('stockmovment','read')->access()): ?>
        <a href="<?php echo base_url("stockmovment/stockmovment/view/$movement->movement_id") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
    <?php endif; ?>
    <?php if($this->permission->method('stockmovment','create')->access()): ?>
        <?php if($movement->is_issued==0 AND $movement->from_store_id == $this->session->userdata('store_id')){ ?>
   <?php if($movement->is_approved == 1) { ?>
        <a href="<?php echo base_url("stockmovment/stockmovment/issue/$movement->movement_id") ?>"  class="btn btn-info btn-sm" >issue</a>
         <?php } ?>
        <?php } ?>
         <?php if($movement->is_issued==1 AND $movement->is_received==0 AND $movement->for_store_id == $this->session->userdata('store_id')){ ?>
        <a href="<?php echo base_url("stockmovment/stockmovment/receive_form/$movement->movement_id") ?>"  class="btn btn-info btn-sm" >receive</a>
        <?php } ?>
    <?php endif; ?>
    <!-- <?php if($this->permission->method('stockmovment','delete')->access()): ?>
        <a href="<?php echo base_url("stockmovment/stockmovment/delete/$movement->movement_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
    <?php endif; ?> -->
    </td>
    <?php }
    /// For Super Admin
    else{ ?>
     <td>
   
        <a href="<?php echo base_url("stockmovment/stockmovment/view/$movement->movement_id") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
        <?php if($movement->is_issued==0 ){ ?>
        <a href="<?php echo base_url("stockmovment/stockmovment/issue/$movement->movement_id") ?>"  class="btn btn-info btn-sm" >issue</a>
        <?php } 
         if($movement->is_issued==1 AND $movement->is_received==0 ){ ?>
        <a href="<?php echo base_url("stockmovment/stockmovment/receive_form/$movement->movement_id") ?>"  class="btn btn-info btn-sm" >receive</a>
        <?php } ?>
  
        <a href="<?php echo base_url("stockmovment/stockmovment/delete/$movement->movement_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>

    </td>
    <?php } ?>
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

 