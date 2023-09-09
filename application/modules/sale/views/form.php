
<style type="text/css">
    .close{color:white;}
    .nav-tabs>li>a {
    color: #ffffff;
    background-color:#4185F5; 
    font-weight: 600;
}
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
     color: #ffffff;
    background-color:green;
    margin-right: 2px;
    line-height: 1.42857143;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
}
   
   
</style>

        <!-- sale report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('add_sale') ?></h4>
                            <?php echo $url2 = $this->uri->segment(4);  ?>
                           
                        </div>
                    </div>

                    <div class="panel-body">

<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#cashsale"><?php echo display('cashsale'); ?></a></li>
  <li><a data-toggle="tab" href="#creditsale"><?php echo display('creditsale'); ?></a></li>
  <li><a data-toggle="tab" href="#leasesale"><?php echo display('leasesale'); ?></a></li>
</ul>
<br>
<br>

<div class="tab-content">
  <div id="cashsale" class="tab-pane fade in active">
   <?php echo form_open_multipart('sale/sale/form',array('class' => 'form-vertical', 'id' => 'insert_sale','name' => 'insert_sale'))?>
                        

                        <div class="row" id="invoice_id">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="invoice_id" class="col-sm-3 col-form-label"><?php echo display('invoice_id') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="invoice_no" value="<?php echo $invoice_no ?>" class="form-control" placeholder="Invoice ID" readonly>
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="customer_name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?>
                                    </label>
                                    <div class="col-sm-6">
                                        <?php echo form_dropdown('customer_id',$customer,(!empty($customerr->customer_id)?$customer->customer_id:null), 'class="form-control" id="customer_id" required') ?>
                                    </div>
                                     <div class="col-sm-3">
                                         <?php if($this->permission->method('customer','create')->access()): ?>
                                        <a type="button" class="test btn btn-primary btn-sm" onclick="modal_customer()" data-toggle="modal"><i class="fa fa-plus"></i></a>
                                         <?php endif; ?>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                    <div class="row" id="Sales_man">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="Sales_man" class="col-sm-3 col-form-label"><?php echo display('sales_man') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="sales_man" value="<?php echo $this->session->userdata('fullname'); ?>" class="form-control" placeholder="Sales man" readonly>
                                     <input type="hidden" name="sale_type" value="1">
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?>
                                    </label>
                                    <div class="col-sm-9">
                                       <input type="text" name="salesdate" class="datepicker form-control" placeholder="date" value="<?php echo date('Y-m-d'); ?>">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="saleTable">
                                <thead>
                                    <tr>
                                            <th class="text-center" width="20%"><?php echo display('product_name') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('stock_ctn') ?></th>
                                            <th class="text-center"><?php echo display('quantity') ?> <i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('price') ?><i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('total') ?></th>
                                            
                                            <th class="text-center"><?php echo display('action') ?></th>
                                        </tr>
                                </thead>
                                <tbody id="addsaleItem">
                                    <tr>
                                       <td class="span3 manufacturer">
                                           <input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="product_sale_list(1);" placeholder="<?php echo display('product_name') ?>" id="product_name_1" tabindex="5" >

                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]" id="SchoolHiddenId"/>

                                            <input type="hidden" class="sl" value="1">
                                        </td>
                                      

                                       <td class="wt">
                                                <input type="text" id="available_quantity_1" class="form-control text-right stock_ctn_1" placeholder="0.00" readonly/>
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="product_quantity[]" id="quantity_1" class="form-control text-right store_cal_1" onkeyup="calculate_store(1),checkqty(1);" onchange="calculate_store(1);" placeholder="0.00" value="" min="0" tabindex="8" required="required"/>
                                            </td>
                                            <td class="test">
                                                <input type="text" name="product_rate[]" onkeyup="calculate_store(1),checkqty(1);" onchange="calculate_store(1);" id="product_rate_1" class="form-control product_rate_1 text-right" placeholder="0.00" value="" min="0" tabindex="9" required="required" />
                                                <input type="hidden" name="">
                                                 <input type="hidden" name="" id="cminimum_price_1" />
                                                 <input type="hidden" name="" id="cblock_price_1" />
                                            </td>
                                           

                                            <td class="text-right">
                                                <input class="form-control total_price text-right" type="text" name="total_price[]" id="total_price_1" value="0.00"  />
                                            </td>
                                            <td>

                                               

                                                <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)" tabindex="10"><i class="fa fa-close" aria-hidden="true"></i></button>
                                            </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="2">
                                            <input type="button" id="add_invoice_item" class="btn btn-info" name="add-invoice-item"  onClick="addsaleOrderField1('addsaleItem');" value="<?php echo display('add_new_item') ?>"  tabindex="11"/>
                                          <input type="hidden"   class="text-right form-control" name="paid_amount" value=""  />
                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                        </td>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('total_amount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="grandTotal" class="text-right form-control" name="grand_total_price" value="0.00" readonly="readonly" />
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="add_sale" class="btn btn-primary btn-large" name="add-sale" value="<?php echo display('submit') ?>" />
                                <input type="submit" value="<?php echo display('submit_and_add_another') ?>" name="add-sale-another" class="btn btn-large btn-success" id="add_sale_another" >
                            </div>
                        </div>
                    <?php echo form_close()?>
  </div>
  <div id="creditsale" class="tab-pane fade">
   <br>
   <br>
  <?php echo form_open_multipart('sale/sale/form',array('class' => 'form-vertical', 'id' => 'insert_crsale','name' => 'insert_crsale'))?>
                        

                        <div class="row" id="invoice_id">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="invoice_id" class="col-sm-3 col-form-label"><?php echo display('invoice_id') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="invoice_no" value="<?php echo $invoice_no ?>" class="form-control" placeholder="Invoice ID" readonly>
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="customer_name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?>
                                    </label>
                                    <div class="col-sm-6">
                                        <?php echo form_dropdown('customer_id',$cr_customer,(!empty($customerr->customer_id)?$customer->customer_id:null), 'class="form-control" id="cr_customer" required') ?>
                                    </div>
                                    <div class="col-sm-3">
                                         <?php if($this->permission->method('customer','create')->access()): ?>
                                         <a type="button" class="test btn btn-primary btn-sm" onclick="credit_modal_customer()" data-toggle="modal"><i class="fa fa-plus"></i></a>
                                          <?php endif; ?>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                    <div class="row" id="Sales_man">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="Sales_man" class="col-sm-3 col-form-label"><?php echo display('sales_man') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="sales_man" value="<?php echo $this->session->userdata('fullname'); ?>" class="form-control" placeholder="Sales man" readonly>
                                     <input type="hidden" name="sale_type" value="2">
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?>
                                    </label>
                                    <div class="col-sm-9">
                                       <input type="text" name="salesdate" class="datepicker form-control" placeholder="date" value="<?php echo date('Y-m-d'); ?>">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="cr_saleTable">
                                <thead>
                                    <tr>
                                            <th class="text-center" width="20%"><?php echo display('product_name') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('stock_ctn') ?></th>
                                            <th class="text-center"><?php echo display('quantity') ?> <i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('price') ?><i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('total') ?></th>
                                            
                                            <th class="text-center"><?php echo display('action') ?></th>
                                        </tr>
                                </thead>
                                <tbody id="crsale">
                                    <tr>
                                       <td class="span3">
                                           <input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="cr_product_sale_list(1);" placeholder="<?php echo display('product_name') ?>" id="cr_product_name_1" tabindex="5" >

                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]" id="SchoolHiddenId"/>

                                            <input type="hidden" class="sl" value="1">
                                        </td>
                                      

                                       <td class="wt">
                                                <input type="text" id="cr_available_quantity_1" class="form-control text-right stock_ctn_1" placeholder="0.00" readonly/>
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="product_quantity[]" id="cr_quantity_1" class="form-control text-right store_cal_1" onkeyup="calculate_crsal(1),checkcrqty(1);" onchange="calculate_crsal(1);" placeholder="0.00" value="" min="0" tabindex="8" required="required"/>
                                            </td>
                                            <td class="test">
                                                <input type="text" name="product_rate[]" onkeyup="calculate_crsal(1),checkcrqty(1);" onchange="calculate_crsal(1);" id="cr_product_rate_1" class="form-control cr_product_rate_1 text-right" placeholder="0.00" value="" min="0" tabindex="9" required="required" />
                                                 <input type="hidden" name="" id="crd_minimum_price_1" />
                                                 <input type="hidden" name="" id="crd_block_price_1" />
                                            </td>
                                           

                                            <td class="text-right">
                                                <input class="form-control total_cr_price text-right" type="text" id="cr_total_price_1" name="total_price[]" value="0.00"  />
                                            </td>
                                            <td>

                                               

                                                <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowcr(this)" tabindex="10"><i class="fa fa-close" aria-hidden="true"></i></button>
                                            </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                  <tr>
                                        
                                        <td style="text-align:right;" colspan="4"><b><?php echo display('total_amount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="crgrandTotal" class="text-right form-control" name="grand_total_price" value="0.00" readonly="readonly" />
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td style="text-align:right;" colspan="4"><b><?php echo display('paid_amount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="paidAmount" onkeyup="invoice_paidamount()" class="text-right form-control" name="paid_amount" value=""  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <input type="button" id="add_invoice_item_cr" class="btn btn-info" name="add-invoice-item"  onClick="crsale('crsale');" value="<?php echo display('add_new_item') ?>"  tabindex="11"/>

                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                        </td>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('remaining_amnt') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="remaining_amnt" class="text-right form-control" name="remaining_amnt" value="0.00" readonly="readonly" />
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" id="add_sale_cr" class="btn btn-primary btn-large" name="add-sale" value="<?php echo display('submit') ?>" />
                                <input type="submit" value="<?php echo display('submit_and_add_another') ?>" name="add-sale-another" class="btn btn-large btn-success" id="add_sale_another_cr" >
                            </div>
                        </div>
                    <?php echo form_close()?>
  </div>
  <div id="leasesale" class="tab-pane fade">
    <?php echo form_open_multipart('sale/sale/form',array('class' => 'form-vertical', 'id' => 'insert_lssale','name' => 'insert_lssale'))?>
                        

                        <div class="row" id="invoice_id">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="invoice_id" class="col-sm-3 col-form-label"><?php echo display('invoice_id') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="invoice_no" value="<?php echo $invoice_no ?>" class="form-control" placeholder="Invoice ID" readonly>
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="customer_name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?>
                                    </label>
                                     
                                       <div id="gurrrantorErr" class="alert hide"></div> 
                                    <div class="col-sm-4">
                                        <?php echo form_dropdown('customer_id',$ls_customer,(!empty($customerr->customer_id)?$customer->customer_id:null), 'class="form-control" id="ls_customer"  required') ?>
                                    </div>
                                     <div class="col-sm-5">
                                          <?php if($this->permission->method('customer','create')->access()): ?>
                                       <a type="button" class="test btn btn-primary btn-sm" onclick="lease_modal_customer()" data-toggle="modal"><i class="fa fa-plus"></i>Customer</a>
                                        <?php endif; ?>
                                         <span id="adgur"></span><a type="button" class="test btn btn-primary btn-sm" onclick="modal_load(),g_code()" data-toggle="modal">New Gurrantor</a>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
             <div id="gurrantor" class="text-right"></div>

                    <div class="row" id="Sales_man">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="Sales_man" class="col-sm-3 col-form-label"><?php echo display('sales_man') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     <input type="text" name="sales_man" value="<?php echo $this->session->userdata('fullname'); ?>" class="form-control" placeholder="Sales man" readonly>
                                     <input type="hidden" name="sale_type" value="3">
                                    </div>

                                   <div id="adcus"></div>
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?>
                                    </label>
                                    <div class="col-sm-9">
                                       <input type="text" name="salesdate" class="datepicker form-control" placeholder="date" value="<?php echo date('Y-m-d'); ?>">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                    <div class="row" id="inquiry">
                            <div class="col-sm-6">
                               <div class="form-group row">
                                    <label for="inquiry_officer" class="col-sm-3 col-form-label"><?php echo display('inquiry_officer') ?>
                                       
                                    </label>
                                    <div class="col-sm-9">
                                     
                                     <?php echo form_dropdown('inquiry',$inquiry,(!empty($inquiry->id)?$inquiry->id:null), 'class="form-control"') ?>
                                     <input type="hidden" name="" id="grantorcheck">
                                    </div>

                                   
                                </div> 
                            </div>

                             <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="lease_package" class="col-sm-3 col-form-label"><?php echo display('lease_package') ?>
                                    </label>
                                    <div class="col-sm-9">
                                        <?php echo form_dropdown('lease_id',$leasinfo,(!empty($leasinfo->lease_id)?$leasinfo->lease_id:null), 'class="form-control"id="lease_id" onchange="leas_advanceinfo(this.value)" required') ?>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="les_saleTable">
                                <thead>
                                    <tr>
                                            <th class="text-center" width="20%"><?php echo display('product_name') ?><i class="text-danger">*</i></th> 
                                            <th class="text-center"><?php echo display('stock_ctn') ?></th>
                                            <th class="text-center"><?php echo display('quantity') ?> <i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('u_pack_price') ?><i class="text-danger">*</i></th>
                                            <th class="text-center"><?php echo display('advance')?></th>
                                            <th class="text-center"><?php echo display('total_pack_price') ?></th>
                                            
                                            <th class="text-center"><?php echo display('action') ?></th>
                                        </tr>
                                </thead>
                                <tbody id="lssale">
                                 <tr>
                                       <td class="span3">
                                           <input type="text" name="product_name" required class="form-control product_name productSelection" onkeyup="ls_product_sale_list(1);" placeholder="<?php echo display('product_name') ?>" id="ls_product_name_1" tabindex="5" >

                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]" id="SchoolHiddenId"/>

                                            <input type="hidden" class="sl" value="1">
                                        </td>
                                      

                                       <td class="wt">
                                                <input type="text" id="ls_available_quantity_1" class="form-control text-right stock_ctn_1" placeholder="0.00" readonly/>
                                            </td>
                                        
                                            <td class="text-right">
                                                <input type="text" name="product_quantity[]" id="ls_quantity_1" class="form-control text-right store_cal_1" onkeyup="calculate_lssal(1),checklsqty(1),installpreview();" onchange="calculate_lssal(1);" placeholder="0.00" value="" min="0" tabindex="8" required="required"/>
                                            </td>
                                            <td class="test">
                                                <input type="text" name="lease_unit_rate[]" onkeyup="calculate_lssal(1),checklsqty(1);" onchange="calculate_lssal(1);" id="ls_product_rate_1" class="form-control ls_product_rate_1 text-right" placeholder="0.00" value="" min="0" tabindex="9" required="required" />
                                                 <input type="hidden" name="" id="ls_minimum_price_1" />
                                                 <input type="hidden" name="" id="ls_block_price_1" />
                                                 <input type="hidden" name="product_rate[]" id="retail_p_1" >
                                                 <input type="hidden"  class="retail" name="retail_calc[]" id="retail_calc_1" >
                                            </td>
                                           <td class="text-right">
                                                <input class="form-control advance text-right" type="text" id="advance_pr_1" name="advance_pr" value="0.00"  />
                                                <input type="hidden" id="unit_adv_1">
                                            </td>

                                            <td class="text-right">
                                                <input class="form-control total_ls_price text-right" type="text" id="ls_total_price_1" name="total_price[]" value="0.00"  />
                                            </td>
                                            <td>

                                               

                                                <button style="text-align: right;" class="btn btn-danger red" type="button" value="<?php echo display('delete')?>" onclick="deleteRowls(this)" tabindex="10"><i class="fa fa-close" aria-hidden="true"></i></button>
                                            </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                  
                                    <tr>
                                        
                                        <td style="text-align:right;" colspan="5"><b><?php echo display('total_advance_amount') ?>:</b></td>
                                        <td class="text-right">
                                             <input type="hidden" id="total_retail_price" class="text-right form-control" name="grand_total_price" value=""   readonly="" />
                                            <span id="lspackege"></span>
                                            <input type="text" id="lspaidAmount" onkeyup="invoice_lspaidamount()" class="text-right form-control" name="paid_amount" value=""   readonly="" />
                                        </td>
                                    </tr>
                                     <tr>
                                        
                                        <td style="text-align:right;" colspan="5"><b><?php echo display('total_package_amount') ?>:</b></td>
                                        <td class="text-right">
                                          <input type="hidden" id="install_price" name="installment_price">
                                            <input type="text" id="package_price" class="text-right form-control" name="package_price" value=""   readonly="" />
                                             
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <input type="button" id="add_invoice_item_sl" class="btn btn-info" name="add-invoice-item"  onClick="lssale('lssale');" value="<?php echo display('add_new_item') ?>"  tabindex="11"/>

                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>
                                        </td>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('remaining_amnt') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="slremaining_amnt" class="text-right form-control" name="remaining_amnt" value="0.00" readonly="readonly" />
                                        </td>

                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="submit" onClick="gurrantoralert()" id="add_sale_sl" class="btn btn-primary btn-large" name="add-sale" value="<?php echo display('submit') ?>"  />
                                <input type="submit" value="<?php echo display('submit_and_add_another') ?>" name="add-sale-another" class="btn btn-large btn-success" id="add_sale_another_sl" >
                            </div>
                        </div>
                    <?php echo form_close()?>

                    <div  class="table-responsive col-sm-12">
                      <table class="table table-bordered table-hover" id="install_preview">  
                         </table>
                    </div>
  </div>
</div>


                    </div>
                </div>
            </div>
        </div>


<div id="gur" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>New Gurrantor</strong></center>
            </div>
            <div class="modal-body">

               <div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
           
            <div class="panel-body">

              
                 <?= form_open_multipart('sale/sale/gurantor_insert', array("id"=>"gurantor")) ?>
                   <div class="row" >
                            <div class="col-sm-6">
                                <h4 class="text-center">Gurrantor 1</h4>
                               <div class="form-group row">
                        <label for="gurrantor_code" class="col-sm-3 col-form-label"><?php echo display('code') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="gurrantor_code_two" class="form-control" type="text" placeholder="<?php echo display('gurrantor_code') ?>"  value="<?php echo $gurrantor->gurrantor_code; ?>" id="gurrantor_code_2" required readonly>
                        </div>
                    </div>  
                    

                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="gurrantor_name_two" class="form-control" type="text" placeholder="<?php echo display('gurrantor_name') ?>"  >
                        </div>
                    </div> 
                   <div class="form-group row">
                        <label for="gurrantor_phone" class="col-sm-3 col-form-label"><?php echo display('phone') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="gurrantor_phone_two" class="form-control" type="text" placeholder="<?php echo display('phone') ?>"  required>
                        </div>
                    </div> 
                   <div class="form-group row">
                        <label for="gurrantor_cnic" class="col-sm-3 col-form-label"><?php echo display('cnic') ?>*</label>
                        <div class="col-sm-9">
                            <input  type="text" name="gurrantor_cnic_two" class="form-control cnics" type="gurrantor_cnic" placeholder="<?php echo display('gurrantor_cnic') ?>" id="gurrantor_cnic" required>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="job_designation" class="col-sm-3 col-form-label"><?php echo display('designation') ?></label>
                        <div class="col-sm-9">
                            <input name="job_designation_two" class="form-control" type="text" placeholder="<?php echo display('designation') ?>" id="job_designation">
                           
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="gurrantor_address" class="col-sm-3 col-form-label"><?php echo display('address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="gurrantor_address_two" class="form-control" type="gurrantor_address" placeholder="<?php echo display('address') ?>" id="gurrantor_address"></textarea>
                        </div>
                    </div> 
                   
                    <div class="form-group row">
                        <label for="business_address" class="col-sm-3 col-form-label"><?php echo display('business_address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="business_address_two" class="form-control" type="business_address" placeholder="<?php echo display('business_address') ?>" id="business_address"></textarea>
                        </div>
                    </div> 
                            </div>

                             <div class="col-sm-6">
                                 <h4 class="text-center">Gurrantor 2</h4>
                                  <div class="form-group row">
                        <label for="gurrantor_code" class="col-sm-3 col-form-label"><?php echo display('code') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="gurrantor_code" class="form-control" type="text" placeholder="<?php echo display('gurrantor_code') ?>"  value="<?php echo $gurrantor->gurrantor_code; ?>" id="gurrantor_code" required readonly>
                        </div>
                    </div>  
                    

                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="gurrantor_name" class="form-control" type="text" placeholder="<?php echo display('gurrantor_name') ?>"  >
                        </div>
                    </div> 
                   <div class="form-group row">
                        <label for="gurrantor_phone" class="col-sm-3 col-form-label"><?php echo display('phone') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="gurrantor_phone" class="form-control" type="text" placeholder="<?php echo display('phone') ?>" 
                                     required>
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="gurrantor_cnic" class="col-sm-3 col-form-label"><?php echo display('cnic') ?>*</label>
                        <div class="col-sm-9">
                            <input  type="text"  name="gurrantor_cnic" class="form-control cnics"  placeholder="<?php echo display('gurrantor_cnic') ?>"   required>
                        </div>
                    </div> 


                    <div class="form-group row">
                        <label for="job_designation" class="col-sm-3 col-form-label"><?php echo display('designation') ?></label>
                        <div class="col-sm-9">
                            <input name="job_designation" class="form-control" type="text" placeholder="<?php echo display('designation') ?>" >
                            
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="gurrantor_address" class="col-sm-3 col-form-label"><?php echo display('address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="gurrantor_address" class="form-control" type="gurrantor_address" placeholder="<?php echo display('address') ?>"></textarea>
                        </div>
                    </div> 
                   
                    <div class="form-group row">
                        <label for="business_address" class="col-sm-3 col-form-label"><?php echo display('business_address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="business_address" class="form-control" type="business_address" placeholder="<?php echo display('business_address') ?>" ></textarea>
                        </div>
                    </div> 
                               
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
                </div>
            </div>
        </div>
    </div>
    <!-- customer modal -->
    <div id="customar_modal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>New Cash Customer</strong></center>
                 <div id="customerMess1" class="alert hide"></div>
              
            </div>
            <div class="modal-body">
  <div id="customerErrr1" class="alert hide"></div>
               <div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
           
            <div class="panel-body">

              
                 <?= form_open_multipart('sale/sale/new_customer', array("id"=>"customer_insert")) ?>
                   
                    <div class="form-group row">
                        <label for="customer_code" class="col-sm-3 col-form-label"><?php echo display('customer_code') ?> </label>
                        <div class="col-sm-9">
                                    <input name="customer_code" class="form-control" type="text" placeholder="<?php echo display('customer_code') ?>" id="customer_code" value="<?php 
          $result = $this->db->select('*')->from('customer')->where('type',1)->order_by('customer_id','desc')->get()->row();
            $customer_code = $result->customer_code;

            $ccode = substr($customer_code,3);
            $c_code = $ccode+1; 
            $ext ='cc-';
           echo  $ext.$c_code;
                                    ?>" readonly>
                        </div>
                    </div>  
                    

                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="customer_name" class="form-control" type="text" placeholder="<?php echo display('customer_name') ?>"  value="" required>
                                    <input type="hidden" name="customer_type" value="1">
                        </div>
                    </div> 
                   <div class="form-group row">
                        <label for="customer_phone" class="col-sm-3 col-form-label"><?php echo display('contact') ?></label>
                        <div class="col-sm-9">
                                    <input name="customer_phone" class="form-control" type="text" placeholder="<?php echo display('phone') ?>" id="customer_phone" value="">
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="customer_cnic" class="col-sm-3 col-form-label"><?php echo display('customer_cnic') ?></label>
                        <div class="col-sm-9">
                            <input  type="number" name="customer_cnic" class="form-control cnics" type="customer_cnic" placeholder="<?php echo display('customer_cnic') ?>" id="customer_cnic" value="">
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
                </div>
            </div>
        </div>
    </div>
    <!-- ###########  lease customer modal ############## -->
       <div id="lease_customar_modal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>New Lease Customer</strong></center>
                <div id="customerMess2" class="alert hide"></div>
               
            </div>
            <div class="modal-body">
 <div id="customerErrr2" class="alert hide"></div>
               <div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
           
            <div class="panel-body">

              
                 <?= form_open_multipart('sale/sale/new_customer', array("id"=>"l_customer_insert")) ?>
                   
                    <div class="form-group row">
                        <label for="customer_code" class="col-sm-3 col-form-label"><?php echo display('customer_code') ?> </label>
                        <div class="col-sm-9">
                                    <input name="customer_code" class="form-control" type="text" placeholder="<?php echo display('customer_code') ?>" id="customer_code" value="<?php 
          $result = $this->db->select('*')->from('customer')->where('type',3)->order_by('customer_id','desc')->get()->row();
            $customer_code = $result->customer_code;

            $ccode = substr($customer_code,3);
            $c_code = $ccode+1; 
            $ext ='ls-';
           echo  $ext.$c_code;
                                    ?>" readonly>
                        </div>
                    </div>  
                    

                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="customer_name" class="form-control" type="text" placeholder="<?php echo display('customer_name') ?>"  value="" required>
                                    <input type="hidden" name="customer_type" value="3">
                        </div>
                    </div> 
                   
                   <div class="form-group row">
                        <label for="customer_phone" class="col-sm-3 col-form-label"><?php echo display('contact') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="customer_phone" class="form-control" type="text" placeholder="<?php echo display('phone') ?>" id="customer_phone" value="" required>
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="customer_cnic" class="col-sm-3 col-form-label"><?php echo display('customer_cnic') ?>*</label>
                        <div class="col-sm-9">
                            <input  type="number" name="customer_cnic" class="form-control cnics" type="customer_cnic" placeholder="<?php echo display('customer_cnic') ?>" id="customer_cnic" value="" required>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="customer_address" class="col-sm-3 col-form-label"><?php echo display('address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="customer_address" class="form-control" type="customer_address" placeholder="<?php echo display('address') ?>" id="customer_address"></textarea>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="job_designation" class="col-sm-3 col-form-label"><?php echo display('designation') ?></label>
                        <div class="col-sm-9">
                            <input name="job_designation" class="form-control" type="text" placeholder="<?php echo display('designation') ?>" id="job_designation" value="">
                        </div>
                    </div> 

                   
                    <div class="form-group row">
                        <label for="business_address" class="col-sm-3 col-form-label"><?php echo display('business_address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="business_address" class="form-control" type="business_address" placeholder="<?php echo display('business_address') ?>" id="business_address"></textarea>
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
                </div>
            </div>
        </div>
    </div>
    <!-- Credit Sale -->
           <div id="credit_customar_modal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>New Credit Customer</strong></center>
            </div>
            <div class="modal-body">
                <div id="customerErrr3" class="alert hide"> </div>
               <div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
           
            <div class="panel-body">

              
                 <?= form_open_multipart('sale/sale/new_customer', array("id"=>"cr_customer_insert")) ?>
                   
                    <div class="form-group row">
                        <label for="customer_code" class="col-sm-3 col-form-label"><?php echo display('customer_code') ?> </label>
                        <div class="col-sm-9">
                                    <input name="customer_code" class="form-control" type="text" placeholder="<?php echo display('customer_code') ?>"  value="<?php 
          $result = $this->db->select('*')->from('customer')->where('type',2)->order_by('createdate','desc')->limit(1)->get()->row();
            $customer_code = $result->customer_code;

            $ccode = substr($customer_code,3);
            $c_code = $ccode+1; 
            $ext ='cr-';
           echo  $ext.$c_code;
                                    ?>" readonly>
                        </div>
                    </div>  
                    

                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="customer_name" class="form-control" type="text" placeholder="<?php echo display('customer_name') ?>"  value="" required>
                                    <input type="hidden" name="customer_type" value="2">
                        </div>
                    </div> 
                   
                   <div class="form-group row">
                        <label for="customer_phone" class="col-sm-3 col-form-label"><?php echo display('contact') ?> *</label>
                        <div class="col-sm-9">
                                    <input name="customer_phone" class="form-control" type="text" placeholder="<?php echo display('phone') ?>" id="customer_phone" value="" required>
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="customer_cnic" class="col-sm-3 col-form-label"><?php echo display('customer_cnic') ?>*</label>
                        <div class="col-sm-9">
                            <input  type="number" name="customer_cnic" class="form-control cnics" type="customer_cnic" placeholder="<?php echo display('customer_cnic') ?>" id="customer_cnic" value="" required>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="customer_address" class="col-sm-3 col-form-label"><?php echo display('address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="customer_address" class="form-control" type="customer_address" placeholder="<?php echo display('address') ?>" id="customer_address"></textarea>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="job_designation" class="col-sm-3 col-form-label"><?php echo display('designation') ?></label>
                        <div class="col-sm-9">
                            <input name="job_designation" class="form-control" type="text" placeholder="<?php echo display('designation') ?>" id="job_designation" value="">
                        </div>
                    </div> 

                   
                    <div class="form-group row">
                        <label for="business_address" class="col-sm-3 col-form-label"><?php echo display('business_address') ?></label>
                        <div class="col-sm-9">
                            <textarea name="business_address" class="form-control" type="business_address" placeholder="<?php echo display('business_address') ?>" id="business_address"></textarea>
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
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
 $('.cnics').bind('keypress', function (event) {
    var regex = new RegExp("^[0-9 \-]+$");
    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
       event.preventDefault();
       return false;
    }
});
function gurrantoralert() {
    var x;
    x = document.getElementById("grantorcheck").value;
    if (x == "") {
        alert("Please Add Two gurrantor");
        return false;
    };
}
function modal_load(){
    $('#gur').modal('show');
}

function modal_customer(){
   
    $('#customar_modal').modal('show');
}
function lease_modal_customer(){
   
    $('#lease_customar_modal').modal('show');
}
function credit_modal_customer(){
   
    $('#credit_customar_modal').modal('show');
}
</script>

<script type="text/javascript">
   $("#gurantor").submit(function(e){
        e.preventDefault();
        var gurrrantorMsg    = $("#gurrrantorMsg");
        var gurrrantorErr    = $("#gurrrantorErr");
        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: $(this).serialize(),
            beforeSend: function()
            {
                gurrrantorMsg.removeClass('hide');
                gurrrantorErr.removeClass('hide');

            },

            success: function(data)
            {  
                if (data.exception) {
                    gurrrantorErr.addClass('alert-danger').removeClass('alert-success').html(data.exception);

                  
                }else{
                    gurrrantorMsg.addClass('alert-success').removeClass('alert-danger').html(data.message);
                     
                     
                      $('#grantorcheck').val(1);
                    $('#adgur').append('<input type="checkbox" name="gurrantor_id[]" checked value="'+data.id+'" />' + data.name2);
                    $('#adgur').append('<input type="checkbox" name="gurrantor_id[]" checked value="'+data.id2+'" />' + data.name);
                    console.log(data.d1);
                     $("#gur").modal('hide');
                }
            },
            error: function(xhr)
            {
                alert('failed!');
            }

        });

    });



//new customer insert
 $("#l_customer_insert").submit(function(e){
        e.preventDefault();
        var customerMess    = $("#customerMess2");
        var customerErrr    = $("#customerErrr2");
        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: $(this).serialize(),
            beforeSend: function()
            {
                customerMess.removeClass('hide');
                customerErrr.removeClass('hide');

            },

            success: function(data)
            {  
                if (data.exception) {
                    customerErrr.addClass('alert-danger').removeClass('alert-success').html(data.exception);

                  
                }else{
                  
                    $('#ls_customer').append('<option value = "' + data.id + '"  selected> '+ data.name + ' </option>');
               
                     console.log(data.coadata);
                  
                     $("#lease_customar_modal").modal('hide');
                }
            },
            error: function(xhr)
            {
                alert('failed!');
            }

        });

    });
 // credit Customer insert
 //new customer insert
 $("#cr_customer_insert").submit(function(e){
        e.preventDefault();
        var customerMess    = $("#customerMess3");
        var customerErrr    = $("#customerErrr3");
        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: $(this).serialize(),
            beforeSend: function()
            {
                customerMess.removeClass('hide');
                customerErrr.removeClass('hide');

            },

            success: function(data)
            {  
                if (data.exception) {
                    customerErrr.addClass('alert-danger').removeClass('alert-success').html(data.exception);

                  
                }else{
                  
                    $('#cr_customer').append('<option value = "' + data.id + '"  selected> '+ data.name + ' </option>');
               
                     console.log(data.id);
                  
                     $("#credit_customar_modal").modal('hide');
                }
            },
            error: function(xhr)
            {
                alert('failed!');
            }

        });

    });
 /// cash and credit customer modal 
 $("#customer_insert").submit(function(e){
        e.preventDefault();
        var customerMess    = $("#customerMess1");
        var customerErrr    = $("#customerErrr1");
        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: $(this).serialize(),
            beforeSend: function()
            {
                customerMess.removeClass('hide');
                customerErrr.removeClass('hide');

            },

            success: function(data)
            {  
                if (data.exception) {
                    customerErrr.addClass('alert-danger').removeClass('alert-success').html(data.exception);
                  
                }else{
                   customerMess.addClass('alert-success').removeClass('alert-danger').html(data.message);
                   if(data.type==1){
                     $('#customer_id').append('<option value = "' + data.id + '"  selected> '+ data.name + ' </option>');
                 }else if(data.type==2){
                    $('#cr_customer').append('<option value = "' + data.id + '"  selected> '+ data.name + ' </option>');
                }
               
                     console.log(data.id);
                  
                     $("#customar_modal").modal('hide');
                }
            },
            error: function(xhr)
            {
                alert('failed!');
            }

        });

    });
  function hidemodal() {
     var x = document.getElementById("customar_modal");
                     x.style.display = "none";
}

function leas_advanceinfo(id){
    $.ajax({
        url : "<?php echo site_url('sale/sale/lease_percent/')?>" + id,
        type: "GET",
        dataType: "json",
        success: function(data)
        {
            $('#lspackege').html(data);
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
}

</script>

<script type="text/javascript">

// gurrantor code
function g_code(){
    $.ajax({
        url : "<?php echo site_url('sale/sale/gurrantor_code/')?>",
        type: "GET",
        dataType: "json",
        success: function(data)
        {
            console.log(data);
         
                var c = data.g_code;
                var d = data.g_code2;
                var t = 'gc-';
                $('#gurrantor_code_2').val(t+c);
                $('#gurrantor_code').val(t+d);
            
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
}
</script>


 <?php $this->load->view('sales.js.php') ?>
 <script type="text/javascript">
    function installpreview(){
            var remainig     = $('#slremaining_amnt').val();
            var leas_ids     = $('#lease_id').val();
            var ins_price = $('#install_price').val();
           // alert(leas_ids);
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('sale/sale/installmentpreview')?>",
                 data: {remainig:remainig,leas_ids:leas_ids,ins_price:ins_price},
                cache: false,
                success: function(data)
                {
                     $('#install_preview').html(data);
                    console.log(data);
                  
                  
                } 
            });
            }
</script>
