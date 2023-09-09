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
                                <th><?php echo display('date') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($pur_return)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($pur_return as $return) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td> <a href="<?php echo base_url("return/returns/purchase_return_form/$return->voucher_no") ?>"><?php echo $return->voucher_no; ?></a></td>
                                <td><?php echo $return->po_no; ?></td>
                                <td><?php echo $return->supplier_name; ?></td>
                                <td><?php echo $return->receive_date ; ?></td>
                               
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                  
                </div>
            </div> 
        </div>
    </div>
</div>

 