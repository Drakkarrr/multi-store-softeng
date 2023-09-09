<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                      <?php if($this->permission->method('stockmovment','read')->access()): ?>
                        <a href="<?php echo base_url('stockmovment/stockmovment/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                         <?php endif; ?>
                         <?php if($this->permission->method('stockmovment','create')->access()): ?>
                        <a href="<?php echo base_url('stockmovment/stockmovment/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div> 
            <div class="panel-body" id="PrintMe">
                 <div class="row">
            <div class="col-sm-6 text-center">
              <h2><?php echo 'Proposal From' ?></h2> <br>
             <?php 
                   $for=$this->db->select('*')->from('store')->where('store_id',$moved->for_store_id)->get()->row();
                          ?> 
                    <?php echo $for->store_name;?><br> 
               <i class="fa fa-phone"></i> <?php echo $for->store_phone;?><br> 
                <?php echo $for->store_address;?>
            </div>

                         <div class="col-sm-6 text-center">
                          <h2> <?php echo 'Request To' ?></h2><br>
                           <?php echo $moved->store_name;?><br> 
               <i class="fa fa-phone"></i> <?php echo $moved->store_phone;?><br> 
                <?php echo $moved->store_address;?>
                        
                            </div>
                            
                            <div class="col-sm-12">
                          
                              <h4>Prepared By: <?php echo $moved->firstname.' '.$moved->lastname;?></h4></div>
                        </div><hr></hr>
                          <table class="table table-hover" >
                                <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('product_code') ?> <i class="text-danger"></i></th>
                                        <th class="text-center"><?php echo display('product_name') ?> <i class="text-danger"></i></th>
                                        <th class="text-center"><?php echo 'Request '.display('quantity') ?></th>
                                        <th class="text-center"><?php echo 'Issue Qty' ?></th>
                                        <th class="text-center"><?php echo 'Received Qty' ?></th>
                                    </tr>
                                </thead>
                                <tbody id="addsale">
                                    <?php 
                                    $sl=1;
                                    foreach ($movedtails as $dtails) {?>
                                    <tr>
                                         <td class="text-center" style="width: 200px;">
                                            <?php echo $dtails['product_code']; ?>
                                        </td>
                                        <td class="text-center" style="width: 200px;">
                                            <?php echo $dtails['product_name']; ?>
                                        </td><td class="text-center">
                                            <?php echo $dtails['proposal_qty']; ?>
                                        </td>                                        
                                        <td class="text-center">
                                            <?php 
                                              if($dtails['issue_qty']>0)
                                                echo $dtails['issue_qty'];
                                              else
                                                  echo 'Pending';
                                             ?>
                                        </td>
                                        <td class="text-center">
                                            <?php 
                                                if($dtails['received_qty']>0)
                                                  echo $dtails['received_qty'];
                                                else
                                                  echo 'Pending';
                                             ?>
                                        </td>
                                    </tr>
                              
                                <?php $sl++; } 
                                 ?>
                                </tbody>     
                           <tfoot> 
       <?php  if ($this->session->userdata('isAdmin')){
         ?>
                                    <tr>
            <td colspan="6" class="text-right">
                              
       <?php if($moved->is_approved == 1) { ?>
      <!-- <a href="<?php echo base_url("stockmovment/stockmovment/isapproved/$moved->movement_id/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="right" title="Inactive"><?php echo 'Approved';?></a> -->
      <?php } else { ?>
      <a href="<?php echo base_url("stockmovment/stockmovment/isapproved/$moved->movement_id/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="right" title="Active"><?php echo display('approved')?></a>
      <?php } ?></td>
                                           
                                    </tr>
                                   <?php } ?>
                                   
                                </tfoot>
                            </table>
            </div> 
        </div> 
    </div>
</div>


 