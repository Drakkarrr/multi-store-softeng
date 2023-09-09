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
                                <th><?php echo display('invoice_no') ?></th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('total') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($sales)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($sales as $sales) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $sales->invoice_no; ?></td>
                                <td><?php echo $sales->sales_date; ?></td>
                                
                                <td><?php echo $sales->total_amnt; ?></td>
                                <td>
                                <?php if($this->permission->method('sale','read')->access()): ?>
                                    <a href="<?php echo base_url("sale/sale/view/$sales->sale_id") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                <?php if($this->permission->method('sale','delete')->access()): ?>
                                    <a href="<?php echo base_url("sale/sale/delete/$sales->sale_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                 <?php if($this->permission->method('sale','update')->access()): ?>
                                   
                                   
                                    <a href="<?php echo base_url("sale/sale/lease_sales_up_form/$sales->sale_id") ?>"  class="btn btn-info btn-sm"  title="Update "><i class="fa fa-edit" aria-hidden="true"></i></a>
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

 