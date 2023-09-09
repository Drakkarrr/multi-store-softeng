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
                    <center><h4><?php echo display('lease_package_pricing');?></h4></center>
                </div>
            <div class="panel-body">
                   <?php foreach ($lease_pricing as $pricing_store) {
  $details = $this->db->select('product.*,store.store_name,lease_store_map.*,lease_product_map.*,lease.*')
          ->from('lease_store_map')
          ->join('store','lease_store_map.store_id=store.store_id')
          ->join('lease_product_map','lease_store_map.lease_id=lease_product_map.lease_id')
          ->join('product','lease_product_map.product_id=product.product_id')
          ->join('lease','lease_store_map.lease_id=lease.lease_id')
          ->where('lease_store_map.store_id',$pricing_store['store_id'])
          //->group_by('lease_product_map.product_id')
          ->get()
          ->result();
          // echo '<pre>';
// print_r($details);exit;
                    ?>

                <table width="100%" class="table table-striped table-bordered table-hover">
                   <caption><center><h1 style="color:#E56717"><?php echo strtoupper($pricing_store['store_name']); ?></h1></center></caption>
                    <thead>
                        <tr style="background-color: #37a000 ;color:#fff">
                           <th><?php echo display('sl') ?></th> 
                           <th><?php echo display('category') ?></th> 
                           <th><?php echo display('product_name') ?></th>
                           <th><?php echo display('cash_price') ?></th>
                           <th><?php echo display('minimum_price') ?></th>
                           <th><?php echo display('package') ?></th>
                           <th><?php echo display('duration') ?></th>
                           <th><?php echo display('lease_price') ?></th>
                           <th><?php echo display('advance') ?></th>
                           <th><?php echo display('monthly_installment') ?></th>
                        </tr> 
                    </thead>
                     <?php $sl=1; foreach ($details as $leaseproduct) {  ?>
                    <tbody>
                        <tr><td colspan="10">Brand :<?php
$brand=$this->db->select('*')->from('product_brand')->where('brand_id',$leaseproduct->brand)->get()->row();
                         echo $brand->brand_name; ?></td></tr>
                       
                                 <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                     <td><?php  echo $sl; ?></td> 
                                    <td><?php 

$cat=$this->db->select('*')->from('product_category')->where('category_id',$leaseproduct->category)->get()->row();
                                    echo  $cat->category_name;?></td>
                                    <td><?php echo  $leaseproduct->product_name;?></td>
                                    <td><?php echo  number_format($leaseproduct->retail_price,2,'.',',');?></td>
                                    <td><?php echo   number_format($leaseproduct->minimum_price,2,'.',',');?></td>
                                    <td><?php echo  $leaseproduct->package_code; 
                                        echo  '<br>('.$leaseproduct->advance*100;?>%, <?php echo  $leaseproduct->markup*100;?>%)</td>
                                    <td><?php echo  $leaseproduct->lease_duration;?></td>
                                    <td><?php   $advance = $leaseproduct->advance*$leaseproduct->retail_price;
                           $markup = ($leaseproduct->retail_price-$advance)*$leaseproduct->markup;
                            $leasprice = $leaseproduct->retail_price+$markup;        
                                     echo   number_format($leasprice,2,'.',',');  
                                    ?></td>
                                    <td><?php   
                                    echo   number_format($advance,2,'.',','); 
                                    ?></td>
                                    <td><?php   $install=($leasprice-$advance)/$leaseproduct->lease_duration;
                                      echo   number_format($install,2,'.',','); 
                                    ?></td>
                                  </tr>
                                  
                    </tbody>
                     <?php   $sl++;       } ?>  
                </table>  <!-- /.table-responsive -->
                       <?php   } ?>  
                       <?= $links ?>
            </div>
        </div>
        <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div>
        </div>
    </div>
</div>


