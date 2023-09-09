
<script type="text/javascript">
function printDiv() {
    var divName = "printArea";
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;
    document.body.innerHTML = printContents;
    // document.body.style.marginTop="-45px";
    window.print();
    document.body.innerHTML = originalContents;
}
</script>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                      <?php if($this->permission->method('return','read')->access()): ?>
                        <a href="<?php echo base_url('return/returns/purchase_return_list') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                         <?php endif; ?>
                         <?php if($this->permission->method('return','create')->access()): ?>
                        <a href="<?php echo base_url('return/returns/return_form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div> 
            <div class="panel-body" id="printArea">
<div class="row">
                            <div class="col-sm-4">
                               <div class="form-group row">
                                    <label for="supplier_sss" class="col-sm-3 col-form-label"><?php echo display('supplier') ?>
                                    </label>
                                    <div class="col-sm-9">
                                      <?php echo $info->supplier_name;?>
                                    </div>
                                </div> 
                            </div>
                             <div class="col-sm-4">
                               <div class="form-group row">
                                    <label for="po_no" class="col-sm-3 col-form-label"><?php echo display('po_no') ?>
                                    </label>
                                    <div class="col-sm-9">
                                      <?php echo $info->po_no;?>
                                    </div>
                                </div> 
                            </div>
                                <div class="col-sm-4">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?>
                                    </label>
                                    <div class="col-sm-9">
                                      <?php echo $info->return_date;?>
                                    </div>
                                </div>
                            </div>
                        </div>


             <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th><?php echo display('product_name') ?></th>
                                         <th><?php echo display('product_code') ?></th>
                                        <th><?php echo display('location') ?></th> 
                                        <th><?php echo display('return_qty') ?>  </th>
                                        <th><?php echo display('um') ?></th>
                                        <th><?php echo display('price') ?> </th>
                                         <th><?php echo display('discount') ?></th>
                                        <th><?php echo display('total') ?></th>
                                       
                                    </tr>
                                </thead>
                                <tbody id="addinvoiceItem">
                                    <?php 
                                    $sl=1;
                                    foreach ($details as $details) {?>
                                      
                                   
                                    <tr>
                                        <td > <?php echo $details['product_name']; ?></td>
                                        <td><?php echo $details['product_code']; ?></td>
                                        <td><?php echo $details['store_name']; ?></td>
                                        <td><?php echo $details['qty']; ?></td>
                                        <td> <?php echo $details['unit']; ?></td>
                                        <td> <?php echo $details['product_rate'];?> </td>
                                        <td><?php echo $details['discount'];?> </td>
                                        <!-- Discount -->
                                        <td><?php echo ($details['qty']*$details['product_rate'])-$details['discount']; ?>              
                                        </td>
                                        
                                    </tr>                              
                                <?php $sl++; } 
                                 ?>
                                </tbody>                               
                                <tfoot>
                                    <tr>
                                        <td colspan="6"><center><label style="text-align:center;" for="reason" class="  col-form-label"><?php echo display('reason') ?></label></center>
                                            <?php echo $info->return_reason;?> <br></td><td><b><?php echo display('grand_total') ?>:</b></td>
                                        <td><?php echo $info->totalamount;?></td>
                                       
                                    </tr>
                                </tfoot>
                            </table>
            </div> 
             <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div>
        </div> 
    </div>
</div>


 