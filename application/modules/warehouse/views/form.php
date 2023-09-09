<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>warehouse</title>
    <!-- Latest compiled and minified CSS -->
  
  </head>
  <body>
 

    <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel panel-bd lobidrag">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4><?php echo (!empty($title)?$title:null) ?></h4>
                    </div>
                </div>
                <div class="panel-body">

                    <?= form_open('warehouse/warehouse/create') ?>
                    <?php echo form_hidden('warehouse_id',$warehouse->warehouse_id); ?>
                        <div class="form-group row">
                            <label for="warehouse_name" class="col-sm-3 col-form-label"><?php echo display('warehouse_name') ?> *</label>
                            <div class="col-sm-9">
                                <input name="warehouse_name" class="form-control" type="text" placeholder="<?php echo display('warehouse_name') ?>" id="warehouse_name" value="<?php echo $warehouse->warehouse_name?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="warehouse_code" class="col-sm-3 col-form-label"><?php echo display('warehouse_code') ?> *</label>
                            <div class="col-sm-9">
                                <input name="warehouse_code" class="form-control" type="text" placeholder="<?php echo display('warehouse_code') ?>" id="warehouse_code" value="<?php echo $warehouse->warehouse_code ?>">
                            </div>
                        </div> 

                        <div class="form-group row">
                            <label for="phone" class="col-sm-3 col-form-label"><?php echo display('phone') ?> </label>
                            <div class="col-sm-9">
                                <input name="warehouse_phone" class="form-control" type="phone" placeholder="<?php echo display('phone') ?>" id="phone" value="<?php echo $warehouse->warehouse_phone ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="warehouse_address" class="col-sm-3 col-form-label"><?php echo display('warehouse_address') ?></label>
                            <div class="col-sm-9">
                                <textarea name="warehouse_address" placeholder="<?php echo display('warehouse_address') ?>" class="form-control" id="warehouse_address"><?php echo $warehouse->warehouse_address ?></textarea>
                            </div>
                        </div> 
     
             
                        <div class="form-group text-right">
                            <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                            <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                        </div>
                    <?php echo form_close() ?>

                </div>  
            </div>
        </div>
    </div>
    
  </body>
</html>


