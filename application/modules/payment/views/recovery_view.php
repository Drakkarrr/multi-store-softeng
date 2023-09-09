<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>  <?php if($this->permission->method('payments','create')->access()): ?> 
                        <a href="<?php echo base_url('payment/payment/create') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add_credit_receiving') ?></a>  
                         
                           <a href="<?php echo base_url('payment/payment/recovery_create') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add_recovery_receiving') ?></a>  
                           <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                               <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('invoice_no') ?></th>
                            <th><?php echo display('customer_name') ?></th>
                            <th><?php echo display('paid_amount') ?></th>
                            <th><?php echo display('due_amnt') ?></th>
                            <th><?php echo display('receive_date') ?></th>
                           <th><?php echo display('action') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($payments)) { ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($payments as $payments) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $payments->invoice_no; ?></td>
                                    <td><?php $customer = $this->db->select('customer_name')->from('customer')->where('customer_id',$payments->customer_id)->get()->row();
                                    echo $customer->customer_name; ?></td>
                                    <td><?php echo $payments->receive_amnt; ?></td>
                                    <td><?php
                                    $total_due = $this->db->select('due_amnt')->from('payment_collection')->where('invoice_no',$payments->invoice_no)->order_by('id','asc')->get()->row();
                                    $paid = $this->db->select('sum(due_amnt) as paid')->from('payment_collection')->where('invoice_no',$payments->invoice_no)->where('id <=', $payments->id)->where('is_installment',1)->get()->row();
                                    
                                    
                                    echo $due=$total_due->due_amnt-(!empty($paid->paid)?$paid->paid:0) ?></td>
                                    <td><?php echo $payments->receive_date; ?></td>
                                    <td class="center">
                                       
                                    <?php if($this->permission->method('payments','delete')->access()): ?> 
                                        <a href="<?php echo base_url("payment/payment/delete/$payments->id") ?>" class="btn btn-xs btn-danger" onclick="return confirm('<?php echo display('are_you_sure') ?>') "><i class="fa fa-trash"></i></a> 
                                        <?php endif; ?>
                                        

                                 <?php if($this->permission->method('payments','update')->access()): ?> 
                                        <a href="<?php echo base_url("payment/payment/create/$payments->id") ?>" class="btn btn-xs btn-info"><i class="fa fa-edit"></i></a> 
                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <?php $sl++; ?>
                            <?php } ?> 
                        <?php } ?> 
                        </tbody>
                    </table>
                    <?= $links ?>
                </div>
            </div> 
        </div>
    </div>
</div>

 