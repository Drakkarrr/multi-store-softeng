<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>  <?php if($this->permission->method('return','create')->access()): ?>
                        <a href="<?php echo base_url('return/returns/return_form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>
                         <?php endif; ?>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('invoice_no') ?></th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('customer') ?></th>
                                <th><?php echo display('store') ?></th>
                                 <th><?php echo display('total') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($s_return)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($s_return as $return) { 
                                ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $return->invoice_no; ?></td>
                                <td><?php echo $return->createdate; ?></td>
                                <td><?php echo $return->customer_name; ?></td>
                                <td><?php echo $return->store_name; ?></td>
                                <td><?php echo $return->totalamount; ?></td>
                                <td>
                                 
                                <?php if($this->permission->method('return','read')->access()): ?>
                                    <a href="<?php echo base_url("return/returns/sales_return_view/$return->sreturn_id") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <?php endif; ?>

                             <!--  <?php if($this->permission->method('return','update')->access()): ?>
                                                             
                            <a href="<?php echo base_url("return/purchase_order/order_up_form/$order->po_no") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="edit"><i class="fa fa-edit" aria-hidden="true"></i></a>

                             <?php endif; ?>

                                <?php if($this->permission->method('return','delete')->access()): ?>                                 
                                    <a href="<?php echo base_url("return/purchase_order/delete/$order->po_no") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                   
                                <?php endif; ?> -->
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

 