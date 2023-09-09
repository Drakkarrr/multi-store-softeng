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
                    <center><h4><?php $companyinfo = $this->db->select('*')->from('setting')->get()->row();
           echo $companyinfo->title.'<br>';
           echo $companyinfo->address.'<br>';
         echo "Phone :".$companyinfo->phone;

                    ?></h4></center>
                </div>
            <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('product_code') ?></th>
                            <th><?php echo display('product_name') ?></th>
                            <th><?php echo display('inqty') ?></th>
                            <th><?php echo display('outqty') ?></th>
                            <th><?php echo display('stock_qty') ?></th>
                            <th><?php echo display('sale_price') ?></th>
                            <th><?php echo display('stock_value') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                <?php 

                         
                    
                   
                        if (!empty($stockinfo)) { 

                ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($stockinfo as $stock) {

                            ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $pid = $stock['product_code'];?></td>
                                    <td><?php echo $pid = $stock['product_name'];?></td>
                                    <td><?php echo $stock['InQty']; ?></td>
                                    <td><?php echo $stock['OutQty']; ?></td>
                                    <td><?php echo $stockqtys=$stock['InQty']-$stock['OutQty']; ?></td>
                                     <td><?php echo $stock['retail_price']; ?></td>
                                    <td><?php
$prinfo  = $this->db->select('Avg(product_rate) as product_rate')->from('purchase_receive_details')->where('product_id',$stock['product_id'])->get()->row();

                                     echo $prinfo->product_rate*$stockqtys; ?></td>
                                </tr>
                                <?php $sl++; ?>
                            <?php } ?> 
                        <?php } 



                        ?> 
                    </tbody>
                </table>  <!-- /.table-responsive -->
            </div>
            </div>
              <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div>
        </div>
    </div>
</div>


