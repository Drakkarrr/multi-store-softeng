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
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                
                    <h4>
                      <?php if($this->permission->method('sale','read')->access()): ?>
                        <a href="<?php echo base_url('sale/sale/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                         <?php endif; ?>
                         <?php if($this->permission->method('sale','create')->access()): ?>
                        <a href="<?php echo base_url('sale/sale/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div> 
        <div id="printArea">
            <div class="panel-body" >
                 <div class="row">
                 <div class="form-group">
                 	<div class="col-sm-4" style="width: 33.33333333%; float: left;">                 		
						
          				<?php $companyinfo = $this->db->select('*')->from('setting')->get()->row();?>
                        <img src="<?php echo base_url((!empty($companyinfo->logo)?$companyinfo->logo:'assets/img/icons/default.jpg')) ?>" alt="User Image"><br>
                        <?php echo $companyinfo->title;?>
                        <br>
                        <?php echo $companyinfo->address;?>
                        <br>
                        <?php echo 'Phone No : '. $companyinfo->phone;?>
                        <br>
                        <?php echo 'Email : '. $companyinfo->email;?>
              			      
                    </div>
                    <div class="col-sm-4" style="text-align: center; width: 33.33333333%; float: left;">
                    	 <h2>Sales Invoice</h2>
                    </div>
                     <div class="col-sm-4" style="text-align: right; width: 33.33333333%; float: left;">
                         Invoice NO: <?php echo $sales->invoice_no;?><br>
    					 Invoice Date: <?php echo $sales->sales_date;?><br> 
                         Salesman: <?php echo $sales->firstname.' '.$sales->lastname;?>                         
                     </div>
                   </div>
                   </div>
                   <div class="row">  
                   	<div class="form-group">
                        <div class="col-sm-6" style="padding-left: 70px; width: 50%; float: left;">
                            <h2>Store</h2>
                            <?php echo $s_info->store_name;?><br> 
                            <?php if(!empty($s_info->store_phone)){?><i class="fa fa-phone"></i><?php } ?>  <?php echo $s_info->store_phone;?><br> 
                            <?php echo $s_info->store_address;?>
                        </div>
                        
                        <div class="col-sm-6" style="text-align: right; padding-right: 70px;width: 50%; float: right;">
                            <h2> <?php echo display('customer') ?></h2>
                            <?php echo $sales->customer_name;?> <br>
                           <?php if(!empty($s_info->customer_phone)){?><i class="fa fa-phone"></i><?php } ?> <?php echo $sales->customer_phone;?> 
                            <?php
                                if($sales->customer_address){
                            ?>
                                <br><i class="fa fa-address-card-o"></i> <?php echo $sales->customer_address;?> 
                            <?php
                                }
                                ?>
                        </div>
                    </div>
                        </div><br>
                          <table class="table table-hover" >
                                <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('product_name') ?> <i class="text-danger"></i></th>
                                        <th class="text-center"><?php echo display('quantity') ?></th>
                                        <th class="text-center"><?php echo display('price') ?> <i class="text-danger"></i></th>
                                        <th class="text-center"><?php echo display('total') ?></th>
                                    </tr>
                                </thead>
                                <tbody id="addsale">
                                    <?php 
                                    $sl=1;
                                    foreach ($saledts as $dtails) {?>
                                    <tr>
                                        <td class="text-center" style="width: 200px;">
                                            <?php echo $dtails['product_name']; ?>
                                        </td>
                                        <td class="text-center">
                                            <?php echo $dtails['qty']; ?>
                                      </td>
                                        <td class="text-center">    
                                          <?php echo number_format($dtails['sell_price'],2,'.',',');?>
                                        </td>
                                        <td class="text-center">   
                                          <?php $Tot = $dtails['qty']*$dtails['sell_price'];
										  echo number_format($Tot,2,'.',',');
										   ?></td>     
                                    </tr>
                              
                                <?php $sl++; } 
                                 ?>
                                </tbody>
                                
                                <tfoot>
                                    <tr>
          <td class="text-right"><b><?php echo display('total') ?>:</b></td><td class="text-center"><?php 
     $totalqty=0;
      foreach($saledts as $st){
          $qty = $st['qty'];
          
           $totalqty +=$qty;   

      } echo $totalqty;
                                    ?>   
                                    </td>
                                        <td  style="text-align:right;"></td>
                                        <td class="text-center">
                                           <?php echo $sales->total_amnt;?> 
                                        </td>
                                    </tr>
                                    <?php if($sales->sale_type_id ==2){?> 
                                    <tr><td colspan="3" class="text-right"><?php echo display('paid_amount')?></td><td class="text-center"> <?php echo $sales->advance_amnt;?> </td></tr>
                                    <tr><td colspan="3" class="text-right"><?php echo display('due_amnt')?></td><td class="text-center"> <?php echo $sales->due_amnt;?> </td></tr>
                                    <?php } ?>
                                     <?php if($sales->sale_type_id ==3){?> 
                                    <tr><td colspan="3" class="text-right"><?php echo display('advance_amount')?></td><td class="text-center"> <?php echo $sales->advance_amnt  ;?> </td></tr>
                                    <tr><td colspan="3" class="text-right"><?php echo display('installment_amnt')?></td><td class="text-center"> <?php echo $sales->installment_amnt;?> </td></tr>
                                    <tr><td colspan="3" class="text-right"><?php echo display('package_amount')?></td><td class="text-center"> <?php echo $sales->package_price;?> </td></tr>
                                   <tr>
                                    <tr><td colspan="3" class="text-right"><?php echo display('remaining_amnt')?></td><td class="text-center"> <?php echo $sales->remaining_amnt;?> </td></tr>
                                   <tr>
                                   
                       <?php 
			  		$lease_dur = $this->db->select('*')->from('lease')->where('lease_id',$sales->lease_id)->get()->row();
					$lease_duration =$lease_dur->lease_duration;
					$remainfo = $sales->remaining_amnt;
					$ins_price = $sales->installment_amnt;
					$month_number =date("m",strtotime($sales->sales_date));
					?>            
                                   <table class="table table-hover" width="80%" align="center">
                                    <caption><h2><center>Installment Preview</center></h2></caption>
                                    <thead>
                       <tr style="background-color:silver">
                              <th>SL#</th>
                              <th>Months</th>
                              <th class="text-right">Installment <?php echo ' ('.$lease_duration.')';?></th>
                              <th class="text-right">Remaining Balance</th>
                            </tr>
                                                 </thead>
                        <tbody>
                  

              <?php
					  for ($x = 0; $x <=$lease_duration; $x++) {
						$reinstall = $remainfo-($ins_price*$x);
                ?>  <tr>
                            <td><?php echo $x;?></td>
                            <td><?php echo date("F", mktime(0, 0, 0, $month_number+$x, 10));?></td>
                            <td align="right"><?php 
							if($x>0)
								echo number_format($ins_price,2,'.',',');
							else
								echo '0.00';
							?></td>
                            <td align="right"><?php if($reinstall > 0){
                              echo number_format($reinstall,2,'.',',');
                            }else{
                                echo '0.00';
                              }?></td>
                          </tr>
                         <?php    }  ?>
                        </tbody>
                      </table>

        </tr>


                                    <?php } ?>
                               
                                </tfoot>
                            </table>
            </div> 
            <div>
            	<div class="col-sm-12 text-right">
                    Print Date: <?php echo date('d/m/Y h:i:s a');?><br>
                    Printed By: <?php echo $printby->firstname.' '.$printby->lastname;?>
                </div>
            </div>
        </div>
        <div class="text-center" id="print" style="margin: 20px">
                <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv();"/>
                
            </div>
        </div> 
    </div>
</div>


 