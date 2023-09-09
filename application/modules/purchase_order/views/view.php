<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                      <?php if($this->permission->method('purchase_order','read')->access()): ?>
                        <a href="<?php echo base_url('purchase_order/purchase_order/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                         <?php endif; ?>
                         <?php if($this->permission->method('purchase_order','create')->access()): ?>
                        <a href="<?php echo base_url('purchase_order/purchase_order/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div> 
            <div class="panel-body" id="PrintMe">
                
                         <table width="100%" border="1">
  <tr>
    <td align="center"><h2>PURCHASE ORDER<br /></h2>
  (PARTIALRECEIVED)</td>
  </tr>
  <tr>
    <td><table width="100%" border="1" cellpadding="2">
      <tr>
        <td align="left" valign="top"><table width="100%" border="1" cellpadding="2">
          <tr>
            <td width="39%" align="left">Supplier Code:</td>
            <td width="61%" align="right"><?php echo $poreder->supplier_code;?> </td>
          </tr>
          <tr>
            <td align="left">Supplier Name:</td>
            <td align="right"><?php echo $poreder->supplier_name;?></td>
          </tr>
          <tr>
            <td align="left">Purchase Order No.:</td>
            <td align="right"><?php echo $poreder->po_no;?></td>
          </tr>
          <tr>
            <td align="left">Purchase Order Date:</td>
            <td align="right"><?php echo $poreder->createdate;?></td>
          </tr>
          <tr>
            <td align="left">Currency:</td>
            <td align="right">Pak Rupee</td>
          </tr>
          <tr>
            <td align="left">Contact Person:</td>
            <td align="right"><?php echo $poreder->contact_per_name;?></td>
          </tr>
        </table></td>
        <td align="right" valign="top" width="50%"><?php echo $hd_office->address; ?></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center"><h2>&nbsp;</h2></td>
  </tr>
  <tr>
    <td>
  <table width="100%" border="1" cellpadding="2">
  <tr>
    <td width="4%" align="center"><strong>SL#</strong></td>
    <td width="11%" align="center"><strong>Product Code</strong></td>
    <td width="36%" align="center"><strong>Product Name</strong></td>
    <td width="7%" align="center"><strong>Qty</strong></td>
    <td width="8%" align="center"><strong>UOM</strong></td>
    <td width="8%" align="center"><strong>Rate</strong></td>
    <td width="9%" align="center"><strong>Discount</strong></td>
    <td width="17%" align="center"><strong>Value</strong></td>
  </tr>
    <?php
  

     foreach ($purchase_orders as $order) {?>


  <tr>
    <td colspan="8">Location Name: 
    <?php echo $order['store_name'] ?><br />
     Adress and Phone No.: <?php echo $order['store_address'].' '. $order['store_phone'] ?> </td>
  </tr>

  <?php 
   $details =  $this->db->select('product.*,purchase_order_details.*,store.*,product_unit.unit_name')
              ->from('purchase_order_details')
              ->join('store','purchase_order_details.store_id = store.store_id')
              ->join('product','purchase_order_details.product_id=product.product_id')
              ->join('product_unit','product_unit.unit_id=product.unit')
              ->where('purchase_order_details.po_no',$order['po_no'])
              ->where('purchase_order_details.store_id',$order['store_id'])
              ->get()
              ->result_array();
             $subquntity=0;
             $subtotal = 0;
             $total_dis = 0;
              foreach ($details  as $details) { 
      $subquntity +=$details['order_qty'];
      $subtotal += $details['product_rate']*$details['order_qty'];
      $total_dis += $details['discount'];
                ?>
          

  <tr>
    <td>1</td>
    <td><?php echo $details['product_code'] ?></td>
    <td><?php echo $details['product_name'] ?></td>
    <td align="right"><?php echo $details['order_qty'] ?></td>
    <td align="center"><?php echo $details['unit_name'] ?></td>
    <td align="right"><?php echo $details['product_rate'] ?></td>
    <td align="right"><?php echo $details['discount'] ?></td>
    <td align="right"><?php echo number_format($details['product_rate']*$details['order_qty'],2,'.',','); ?></td>
  </tr>
  <?php     } ?>
  <tr>
    <td colspan="3">Sub Total:</td>
    <td align="right"><?php echo $subquntity; ?></td>
    <td align="center">&nbsp;</td>
    <td align="right">&nbsp;</td>
    <td align="right">&nbsp;</td>
    <td align="right"><?php echo number_format($subtotal,2,'.',','); ?></td>
  </tr>
  <tr>
    <td colspan="3">Total</td>
    <td align="right"><?php echo $subquntity; ?></td>
    <td colspan="4" align="right"><?php echo number_format($subtotal,2,'.',','); ?></td>
    </tr>
  <tr>
    <td colspan="6">Discount Amount</td>
    <td colspan="2" align="right"><?php echo number_format($total_dis,2,'.',','); ?></td>
    </tr>
  <tr>
    <td colspan="6"><strong>Grand Total</strong></td>
    <td colspan="2" align="right"><strong><?php echo number_format($subtotal-$total_dis,2,'.',',');?></strong></td>
    </tr>
    <?php } ?>

    </table>
</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td width="50%" valign="top"><table width="100%" border="1" cellpadding="2">
          <tr>
            <td colspan="3" align="center" valign="top">Category Wise Summary</td>
          </tr>
          <tr>
            <td valign="top"><strong>Category</strong></td>
            <td valign="top"><strong>Model</strong></td>
            <td align="center" valign="top"><strong>Qty</strong></td>
          </tr>
          <?php 
          $total_qtys = 0;
          foreach ($purchase_orders as $order_details) {

             $order_category_details =  $this->db->select('product.*,purchase_order_details.*,store.*,count(purchase_order_details.product_id) as row,product_category.category_name,product_brand.brand_name,product_model.model_name')
              ->from('purchase_order_details')
              ->join('store','purchase_order_details.store_id = store.store_id')
              ->join('product','purchase_order_details.product_id=product.product_id')
              ->join('product_category','product_category.category_id=product.category')
              ->join('product_brand','product_brand.brand_id=product.brand')
              ->join('product_model','product_model.model_id=product.model')
              ->where('purchase_order_details.po_no',$order_details['po_no'])
              ->where('purchase_order_details.store_id',$order_details['store_id'])
              ->group_by('purchase_order_details.product_id')
              ->get()
              ->result_array();
               
              foreach ($order_category_details as $category_details) {
              $total_qtys +=$category_details['order_qty'];
         ?>
          <tr>
            <td valign="top"><?php echo $category_details['category_name'] ?></td>
            <td valign="top"><?php echo $category_details['model_name'] ?></td>
            <td align="center" valign="top"><?php echo $category_details['order_qty'] ?></td>
          </tr>
          <?php  } ?>
           <?php  } ?>
          <tr>
            <td colspan="2" align="right" valign="top"><b>Total</b></td>
            <td align="center" valign="top"><b><?php echo $total_qtys ?></b></td>
          </tr>
        </table></td>
        <td width="50%" valign="top">
          <table width="100%" border="1" cellpadding="2" cellspacing="2">
          <tr>
            <td colspan="3" align="center" valign="top">Location Wise Summary</td>
          </tr>
          <tr>
            <td valign="top"><strong>Location</strong></td>
            <td valign="top"><strong>Category</strong></td>
            <td align="center" valign="top"><strong>Qty</strong></td>
          </tr>
           <?php 
            $total_qty_stowise = 0;
          foreach ($purchase_orders as $order_detail) {
       
           $location_details =  $this->db->select('product.*,purchase_order_details.*,store.*,count(purchase_order_details.product_id) as row,product_category.category_name,product_brand.brand_name,product_model.model_name')
              ->from('purchase_order_details')
              ->join('store','purchase_order_details.store_id = store.store_id')
              ->join('product','purchase_order_details.product_id=product.product_id')
              ->join('product_category','product_category.category_id=product.category')
              ->join('product_brand','product_brand.brand_id=product.brand')
              ->join('product_model','product_model.model_id=product.model')
              ->where('purchase_order_details.po_no',$order_detail['po_no'])
              ->where('purchase_order_details.store_id',$order_detail['store_id'])
              ->group_by('purchase_order_details.product_id')
              ->get()
              ->result_array();
           
              foreach ($location_details as $location_information) {
                $total_qty_stowise +=$location_information['order_qty']?>
               
          <tr>
              <td row="<?php echo  $location_information['row'];?>" valign="top"><?php echo $order_detail['store_name']?></td>
            <td><?php echo $location_information['category_name'] ?></td>
             <td  align="center" valign="top"><?php echo  $location_information['order_qty'] ?></td>
          </tr>
          <?php } ?>
          <?php } ?>

         
            <td colspan="2" align="right" valign="top"><b>Total</b></td>
            <td align="center" valign="top"><b><?php echo $total_qty_stowise; ?></b></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
      <tfoot> 
       <?php  if ($this->session->userdata('isAdmin')){
         ?>
                                    <tr>
            <td colspan="6" class="text-right">
                                         
                  <?php if($poreder->isapproved == 1) { ?>
      <a href="<?php echo base_url("purchase_order/purchase_order/isapproved/$poreder->po_no/inactive") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="right" title="Inactive"><?php echo display('disapprove')?></a>
      <?php } else { ?>
      <a href="<?php echo base_url("purchase_order/purchase_order/isapproved/$poreder->po_no/active") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="right" title="Active"><?php echo display('approved')?></a>
      <?php } ?></td>
                                           
                                    </tr>
                                   <?php } ?>
                                   
                                </tfoot>
</table>

            </div> 
        </div> 
    </div>
</div>


 