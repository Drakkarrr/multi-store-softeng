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

                    <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('return/returns/sales_return',array('class' => 'form-inline'))?>
                         <div class="col-sm-12">
                              <center> <h4>Sales Return</h4></center>
                            </div> 
                            <div class="form-group">
                                <label for="invoice_no" class="col-sm-4"><?php echo display('invoice_no') ?>:</label>
                                <div class="col-sm-8">
                                <input type="text" name="invoice_no" class="form-control" id="to_date" placeholder="<?php echo display('invoice_no')?>" required="required">
                            </div>
                            </div>  
                            <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                       <?php echo form_close()?>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                      <div class="panel-body"> 
                        <?php echo form_open('return/returns/purchase_return',array('class' => 'form-inline'))?>
                            <div class="col-sm-12">
                              <center> <h4>Purchase Return</h4></center>
                            </div> 
                            <label for="supplier" class="col-sm-4"><?php echo display('supplier') ?>:</label>

                              <div class="form-group">
                                  <?php echo form_dropdown('supplier_id',$supplier,(!empty($supplier->supplier_id)?$supplier->supplier_id:null), 'class="form-control" tabindex="1" required') ?>
                            </div>  


                            <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                       <?php echo form_close()?>
                    </div>
                </div>
            </div>
        </div>
            </div>  
        </div>
    </div>
</div>

 