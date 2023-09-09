<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                       
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('voucher_no') ?></th>
                                <th><?php echo display('order_no') ?></th>
                                <th><?php echo display('supplier') ?></th>
                                <th><?php echo display('store') ?></th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($purchase_orders)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($purchase_orders as $order) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td> <a href="<?php echo base_url("purchase_order/purchase_order/receive_view/$order->receive_id") ?>"><?php echo $order->voucher_no; ?></a></td>
                                <td><?php echo $order->po_no; ?></td>
                                <td><?php echo $order->supplier_name; ?></td>
                                <td><?php echo $order->store_name; ?></td>
                                <td><?php echo $order->receive_date ; ?></td>
                                <td>
                                <?php if($this->permission->method('purchase_order','read')->access()): ?>
                                    <a href="<?php echo base_url("purchase_order/purchase_order/receive_view/$order->receive_id") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <?php endif; ?>


                                <?php if($this->permission->method('purchase_order','delete')->access()): ?>
                                    <a href="<?php echo base_url("purchase_order/purchase_order/receive_delete/$order->receive_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
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

 