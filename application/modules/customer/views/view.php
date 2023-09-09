<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('customer/customer/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                        <a href="<?php echo base_url('customer/customer/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                    </h4>
                </div>
            </div> 
            <div class="panel-body" id="PrintMe">
                <table class="table table-hover" width="100%">
                    <thead>
                        <tr>
                            <th><?php echo $customers->customer_name ?></th> 
                            <td><?php echo $customers->job_designation ?></td> 
                        </tr>
                        <tr>
                            <th><?php echo display('store') ?></th>
                            <td><?php echo $customers->store_id;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('address') ?></th>
                            <td><?php echo $customers->customer_address;?></td>
                        </tr> 
                        
                        <tr>
                            <th><?php echo display('isactive') ?></th>
                            <td><?php echo (($customers->isactive==1)?display('active'):display('inactive')); ?></td>
                        </tr> 
                    </thead>
                </table>  
            </div> 
        </div> 
    </div>
</div>


 