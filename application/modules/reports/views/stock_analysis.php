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
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 
<div id="printArea">
     <div class="panel-title">
                    <h4><center><?php echo display('stock_analysis_report');?></center></h4>
                </div>
            <div class="panel-body">
                   <?php foreach ($stock_cat as $stock) {
                       $this->db->query("CALL get_store_stock('".$id."',@store_id,@stock_date,@prod_id,@in_qty,@outqty,@rem,@cat_id,@brand_id,@model_id)");
 $id = 0;   
 $prodcut_stock =   $this->db->select('product.*,tmp_store_stock.*')
                             ->from('product')
                             ->join('tmp_store_stock','product.product_id=tmp_store_stock.ProdID')
                             ->where('product.category',$stock['category_id'])
                             ->group_by('tmp_store_stock.ProdID')
                             ->get()
                             ->result_array();

                    ?>
                <table width="100%" class="table table-striped table-bordered table-hover">
                   <caption><center><h1  style="color:#E56717"><?php echo $stock['category_name']; ?></h1></center></caption>
                    <thead>
                        <tr style="background-color: #37a000 ;color:#fff">

<!--                             <th><?php echo display('store_name') ?></th> -->
                            <th><?php echo display('brand') ?></th>
                            <th><?php echo display('product_name') ?></th>
                            <?php $store_info=$this->db->select('*')->from('store')->where('isactive',1)->get()->result();
                            foreach ($store_info as $store) { ?>

                            <th><?php echo  $store->store_name;?></th>
                          <?php   }  ?>
                           <!--  <th><?php echo display('inqty') ?></th>
                            <th><?php echo display('outqty') ?></th>
                            <th><?php echo display('stock_qty') ?></th>
                            <th><?php echo display('stock_value') ?></th> -->
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($prodcut_stock as $stockinfo) { ?>
                   
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                
                                <!--     <td><?php  echo $stockinfo['StoreID']; ?></td> -->
                                    <td><?php echo  $stockinfo['brand'];?></td>
                                    <td><?php echo  $stockinfo['product_name'];?></td>

                           <?php  foreach ($store_info as $stors) { ?>

                            <td><?php 

$store_pro=$this->db->select('sum(InQty) as InQty,sum(OutQty) as OutQty')->from('tmp_store_stock')->where('StoreID',$stors->store_id)->where('ProdID',$stockinfo['ProdID'])->group_by('ProdID')->group_by('StoreID')->get()->row();
echo $store_pro->InQty-$store_pro->OutQty;
                            ?></td>
                          <?php   }  ?>
                                    <!-- <td><?php echo $stockinfo['InQty']; ?></td>
                                    <td><?php echo $stockinfo['OutQty']; ?></td>
                                    <td><?php echo $stockinfoqtys=$stock['InQty']-$stock['OutQty']; ?></td>
                                    <td><?php
$prinfo  = $this->db->select('Avg(product_rate) as product_rate')->from('purchase_receive_details')->where_in('product_id',$stock['product_id'])->get()->row();

                                     echo $prinfo->product_rate*$stockqtys; ?></td> -->
                                </tr>
                              
                          <?php }   ?> 
           
                    </tbody>
                </table>  <!-- /.table-responsive -->
                             <?php }   ?> 
                              <?= $links ?>
            </div>
        </div>
        <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div>
        </div>
    </div>
</div>


