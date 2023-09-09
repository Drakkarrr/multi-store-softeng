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
                               <?= form_open_multipart('reports/reports/product_stock_history') ?>
                               <div class="row">
                                <div class="col-sm-3">
                                  <div class="form-group row">
                                   <label for="for_store" class="col-sm-3 col-form-label"><?php echo display('store') ?>
                                    </label>
                                                                        
                                    <div class="col-sm-9">

                                        <?php
                                    if($this->session->userdata('isAdmin') ==1){

                                    ?>
                                    <select class="form-control" name="store_id" required="">
                                      <option value="all">All</option>
                                       <?php  foreach ($store as $rstore) { ?>                             
                                       <option value="<?php echo $rstore->store_id;?>"><?php echo $rstore->store_name;?></option>
                                       <?php }?>
                                    </select>
                                     
                                      <?php }else{?>
                                      <input type="text" class="form-control" name="dsf" value="<?php $st=$this->db->select('*')->from('store')->where('store_id',$this->session->userdata('store_id'))->get()->row();
                                      echo $st->store_name  ?>">
                                      <input type="hidden" name="store_id" class="form-control" readonly="" value="<?php echo $this->session->userdata('store_id')?>">

                                      <?php } ?>
                                       </div>
                                    </div>
                                  </div>
                                 <div class="col-sm-3">
                                  <div class="form-group row">

                                     <label for="for_store" class="col-sm-3 col-form-label"><?php echo display('product_name') ?></label>
                                       <div class="col-sm-9">
                                        <select name="product_id" class="form-control" required="">
                                          <option value="all">All</option>
                                         <?php foreach($product as $prod){?>
                                         <option value="<?php echo $prod->product_id;?>"><?php echo $prod->product_name;?></option>
                                         <?php } ?>

                                        </select>
  
                                    </div>
                                    </div>
                                    </div>
                                    <div class="col-sm-4">
                                  <div class="form-group row">
                                     <label for="for_store" class="col-sm-2 col-form-label"><?php echo 'start' ?></label>
                                     <div class="col-sm-4">
                                      <input type="text" name="start" class="form-control datepicker" value="" required="">
                                    </div>
                                     <label for="for_store" class="col-sm-2 col-form-label"><?php echo 'End' ?></label>
                                     <div class="col-sm-4">
                                      <input type="text" name="end" class="form-control datepicker" value="" required="">
                                    </div>
                                  </div>
                                </div>
                                     <div class="col-sm-1">
                                        <input type="submit" class="form-control btn btn-success w-md m-b-5" value="Search">
                                    </div>
                             
                        </div>

                             <?php echo form_close() ?>
            </div>  
        </div>
    </div>
</div>