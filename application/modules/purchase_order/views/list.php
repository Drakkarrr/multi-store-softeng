<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('purchase_order/purchase_order/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('order_no') ?></th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('total') ?></th>
                                <th><?php echo display('status') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($purchase_orders)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($purchase_orders as $order) { 
                             $total_order = $this->db->select('sum(order_qty) as oqty')->from('purchase_order_details')->where('po_no',$order->po_no)->get()->row();
                                $total_receive = $this->db->select('purchase_receive.*,sum(purchase_receive_details.receive_qty) as rqty')
                                                          ->from('purchase_receive')
                                                          ->join('purchase_receive_details','purchase_receive.receive_id=purchase_receive_details.receive_id')
                                                          ->where('purchase_receive.po_no',$order->po_no)
                                                          ->get()
                                                          ->row();
                                                            $total_orde = $total_order->oqty;
                                                          $total_receive = $total_receive->rqty;
                                                          $diff = $total_orde - $total_receive;

                                ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $order->po_no; ?></td>
                                <td><?php echo $order->createdate; ?></td>
                                <td><?php echo $order->total_amnt; ?></td>
                                <td><?php
                                                          $btnrcb = 0;
                                                          if($diff == 0){
                                                            echo 'Received';
                                                          }else if($diff > 0 AND $diff < $total_orde){
                                                           echo 'Partial Received';
                                                           $btnrcb = 1;
                                                          }else{
                                                            echo 'Pending ..';
                                                            $btnrcb = 1;
                                                          }
                                 ?></td>
                                <td>
                                 
                                <?php if($this->permission->method('purchase_order','read')->access()): ?>
                                    <a href="<?php echo base_url("purchase_order/purchase_order/view/$order->po_no") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($order->isapproved == 1 Or $this->session->userdata('isAdmin')) { ?>
                                
                                <?php if($this->permission->method('purchase_order','read')->access()): ?>
                                    <?php if($btnrcb == 1){?>
                                    <a href="<?php echo base_url("purchase_order/purchase_order/receive_form/$order->po_no") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="receive">receive</a>

                                     <?php }
                                     endif; ?>      
                           <?php } ?>
                              <?php if($this->permission->method('purchase_order','update')->access()): ?>
                                
                                 <?php $userrole=$this->db->select('roleid')->from('sec_userrole')->where('user_id',$this->session->userdata('id'))->get()->result_array();
                                 foreach ($userrole as $role) {}
                                 if($order->isapproved == 0 AND $role['roleid'] == 2  OR $this->session->userdata('isAdmin')) {
                              
                                 ?>
                              
                            <a href="<?php echo base_url("purchase_order/purchase_order/order_up_form/$order->po_no") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="edit"><i class="fa fa-edit" aria-hidden="true"></i></a>
                        <?php } ?>
                          
                             <?php endif; ?>

                                <?php if($this->permission->method('purchase_order','delete')->access()): ?>
                                  <?php if($diff > 0){?>
                                    <a href="<?php echo base_url("purchase_order/purchase_order/delete/$order->po_no") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                    <?php } ?>
                                <?php endif; ?>
                                </td>
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

 