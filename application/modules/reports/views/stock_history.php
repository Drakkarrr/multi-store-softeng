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

<!--  <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('reports/reports/stock_history_report',array('class' => 'form-inline'))?>
                            <div class="form-group">
                                <label for="start_date">Start Date :</label>
                                <input type="text" name="start_date"  value="<?php echo date('Y-m-d') ?>" class="datepicker form-control" />
                            </div> 
                          <div class="form-group">
                                <label for="end_date">End Date :</label>
                                <input type="text" class="datepicker form-control" name="end_date" value="<?php echo date('Y-m-d') ?>"  />
                            </div> 
                            <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                          
                       <?php echo form_close()?>
                    </div>
                </div>
            </div>
        </div> -->
        <div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 
<div id="printArea">
     <div class="panel-title">
                    <center><h4><?php $companyinfo = $this->db->select('*')->from('setting')->get()->row();
           echo $companyinfo->title.'<br>';
           echo $companyinfo->address.'<br>';
         echo "Phone :".$companyinfo->phone;

                    ?></h4></center>
                </div>
            <div class="panel-body">
                <?php if(!empty($stockhis)){?>
                <?php foreach ($stockhis as $stocstore) {    

            $stock = $this->db->select('purchase_receive_details.*,sum(purchase_receive_details.receive_qty) as total_purchase,product.*')
                       ->from('purchase_receive_details')
                       ->join('product','purchase_receive_details.product_id=product.product_id')
                       ->where('purchase_receive_details.store_id',$stocstore->store_id)
                       ->group_by('product.product_id')
                       ->get()
                       ->result();

                    ?>
    
            
                <table width="100%" class="table table-striped table-bordered table-hover">
                    <caption><center><h2 1  style="color:#E56717"><?php echo $stocstore->store_name;?></h2></center></caption>
                    <thead>
                        <tr style="background-color: #37a000 ;color:#fff">
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('product_code') ?></th>
                            <th><?php echo display('product_name') ?></th>
                            <th><?php echo display('purchase_qty') ?></th>
                            <th><?php echo display('purchase_return') ?></th>
                            <th><?php echo display('sale_qty') ?></th>
                            <th><?php echo display('sales_return') ?></th>
                            <th><?php echo display('store_isssue') ?></th>
                            <th><?php echo display('store_receive') ?></th>                            
                            <th><?php echo display('balance_qty') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                       <?php $sl=1;
                        foreach ($stock as $stockinfo) {?>
         
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php  echo $stockinfo->product_code;?></td>
                                    <td><?php echo $stockinfo->product_name;?></td>
                                    <td><?php echo $total_purchase=$stockinfo->total_purchase; ?></td>
                                    <td><?php 
                                      $purreturn = $this->db->select('sum(qty) as toal_pur_return')
                                     ->from('purchase_return_details')
                                     ->where('store_id',$stocstore->store_id)
                                     ->where('product_id',$stockinfo->product_id)
                                     ->get()
                                     ->row();
                                      echo $total_pur_ret=$purreturn->toal_pur_return;
                                     ?></td>
                                    <td><?php 
$totalsale =   $this->db->select('sum(sale_details.qty) as OutQty,sales_parent.*')
                       ->from('sale_details')
                       ->join('sales_parent','sale_details.sale_id=sales_parent.sale_id')
                       ->where('sales_parent.store_id',$stocstore->store_id)
                       ->where('sale_details.product_id',$stockinfo->product_id)
                       ->get()
                       ->row();
                       echo $total_sale= $totalsale->OutQty;

$movein = $this->db->select('sum(stock_movement_details.received_qty) as move_in,stock_movement.*')
                       ->from('stock_movement_details')
                       ->join('stock_movement','stock_movement_details.movement_id=stock_movement.movement_id')
                       ->where('stock_movement.for_store_id',$stocstore->store_id)
                       ->where('stock_movement_details.product_id',$stockinfo->product_id)
                       ->get()
                       ->row();
 $moveout = $this->db->select('sum(stock_movement_details.issue_qty) as move_out,stock_movement.*')
                       ->from('stock_movement_details')
                       ->join('stock_movement','stock_movement_details.movement_id=stock_movement.movement_id')
                       ->where('stock_movement_details.product_id',$stockinfo->product_id)
                       ->where('stock_movement.from_store_id',$stocstore->store_id)
                       ->get()
                       ->row();
                   
                      $movein_total = $movein->move_in;
                      $moveout_total = $moveout->move_out;
                

                                 ?></td>
                                 <td><?php $salesreturn = $this->db->select('sales_return.*,sum(sales_return_details.qty) as total_sales_return')
                       ->from('sales_return_details')
                       ->join('sales_return','sales_return_details.sreturn_id=sales_return.sreturn_id')
                       ->where('sales_return.store_id',$stocstore->store_id)
                       ->where('sales_return_details.product_id',$stockinfo->product_id)
                       ->get()
                       ->row();
                       echo $total_sale_retu = $salesreturn->total_sales_return;
                                     ?></td>
                                 <td><?php echo $moveout_total;?></td>
                                 <td><?php echo $movein_total;?></td>                                
                                    
                                     <td><?php  
                                    // echo 'in-'.$total_purchase.','.$movein_total.','.$total_sale_retu."<br>";
                                    // echo 'out-'.$total_sale.','.$moveout_total.','.$total_pur_ret."<br>";
                                     $in = $total_purchase+$movein_total+$total_sale_retu;
                                     $out =  $total_sale+$moveout_total+$total_pur_ret;
                                     echo $in-$out; ?></td>
                                </tr>
                             <?php $sl++; } ?>


                    </tbody>
                </table>  <!-- /.table-responsive -->
                <?php } ?>
                  <?php } ?>
                   <?= $links ?>
             </div>
        </div>
        <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div>
        </div>
    </div>
</div>



