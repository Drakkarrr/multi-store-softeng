<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                      <?php if($this->permission->method('lease','read')->access()): ?>
                        <a href="<?php echo base_url('lease/lease/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                         <?php endif; ?>
                         <?php if($this->permission->method('lease','create')->access()): ?>
                        <a href="<?php echo base_url('lease/lease/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div> 
            <div class="panel-body" id="PrintMe">

                   <div class="card-content-languages">
                        <table class="table table-hover" width="100%">
                            <tr>
                                <th><?php echo display('pakage_name') ?></th>
                                <td>
                                  <?php echo $leases->package_name; ?>
                                </td>
                            </tr>
                            <tr> 
                                <th><?php echo display('pakage_code') ?></th>
                                <td>
                                   <?php echo $leases->package_code; ?>
                                </td>
                            </tr>
                            <tr>  
                                <th><?php echo display('duration') ?></th>
                                <td>
                                  <?php echo $leases->lease_duration; ?>
                                </td>
                            </tr>
                            <tr> 
                                <th><?php echo display('advance') ?></th>
                                <td><?php echo $leases->advance*100; ?>%
                                </td>
                            </tr>
                            <tr>
                                <th><?php echo display('markup') ?></th>
                                <td>
                                   <?php echo $leases->markup*100; ?>%
                                </td>
                            </tr>
                            <tr><th><?php echo display('store_name') ?> <i class="text-danger"></i></th>
                                <td> <?php 
                                    $sl=1;
                                    foreach ($stmap as $sdtails) {?>
                                            <?php echo $sdtails['store_name'].','; ?>
                                <?php $sl++; } 
                                 ?></td>
                            </tr>
                        </table> 
                    </div>

                <div class="row">
                  <div class="col-sm-12">
                      <table class="table table-hover" >
                                <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('product_name') ?> <i class="text-danger"></i></th>
                                         <th class="text-center">Retail Price</th>
                                         <th class="text-center">Advance</th>
                                         <th class="text-center">Installment</th>
                                         <th class="text-center">Package Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $sl=1;
                                    foreach ($pmap as $dtails) {?>
                                    <tr>
                                         
                                        <td class="text-center" >
                                            <?php echo $dtails['product_name']; ?>
                                        </td>
                                           <td class="text-center" >
                                            <?php echo number_format($dtails['retail_price'],2,'.',',');
                                             ?>
                                        </td>
                                        <td class="text-center" >
                                            <?php  $advance = $leases->advance*$dtails['retail_price']; 
                                            echo number_format($advance,2,'.',',');
                                            ?>
                                        </td>
                                        <td class="text-center" >
                                            <?php  $markup = ($dtails['retail_price']-$advance)*$leases->markup;
                                            $Pck_price=$dtails['retail_price']+$markup;
                                            $install = ($Pck_price - $advance)/$leases->lease_duration;
                                            echo number_format($install,2,'.',','); ?>
                                        </td>
                                        <td class="text-center" >
                                            <?php 
                                            echo number_format($Pck_price,2,'.',','); ?>
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
    </div>
</div>


 