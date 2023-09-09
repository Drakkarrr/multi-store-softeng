<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <?php if($this->permission->method('purchase_order','read')->access()): ?>
                        <a href="<?php echo base_url('purchase_order/purchase_order/receive_list') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                         <?php endif; ?>
                    </h4>
                </div>
            </div> 
            <div class="panel-body" id="PrintMe">
                 <div class="row">
            <div class="col-sm-6 text-center">
              <h3><?php echo display('supplier')?></h3> <br>
              <?php echo $poreder->supplier_name;?> 
            </div>
            <div class="col-sm-6 text-center">
              <h3><?php echo display('receive_by');?></h3> <br>
              <?php echo $poreder->firstname;?> 
            </div>
                        </div><br>
                          <table class="table table-bordered table-hover" >
                                <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('product_name') ?> <i class="text-danger"></i></th>
                                        <th class="text-center"><?php echo display('receive_qty') ?></th>
                                        <th class="text-center"><?php echo display('store') ?></th>
                                    </tr>
                                </thead>
                                <tbody id="recieve">
                                    <?php 
                                    $sl=1;
                                    foreach ($purchase_orders as $receive) {?>
                                    <tr>
                                        <td class="text-center">
                                            <?php echo $receive['product_name']; ?>
                                        </td>
                                        <td class="text-center">
                                            <?php echo $receive['receive_qty']; ?>
                                      </td>
                                      <td class="text-center">
                                            <?php echo $receive['store_name']; ?>
                                      </td>
                                    </tr>
                              
                                <?php $sl++; } 
                                 ?>
                                </tbody>
                                
                            </table>
            </div> 
        </div> 
    </div>
</div>


 