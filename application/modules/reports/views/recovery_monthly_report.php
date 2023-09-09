<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>  monthly report
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <div class="">
                    <table class="datatable2 table table-bordered table-hover">
                        <thead>
                            <tr>
                            <th><?php echo display('customer_name') ?></th>
                            <th><?php echo display('installment_amount') ?></th>
                            <th><?php echo display('recovery') ?></th>
                            <th><?php echo display('surplus') ?></th>
                            <th><?php echo display('deficit') ?></th>
                            <th><?php echo display('over_due_amount') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($payments)) { ?>
                            <?php
                            $totalqty=0;

                             foreach ($payments as $payments) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $payments['customer_name']; ?></td>
                                    <td class="text-right"><?php echo $payments['installment_amnt']; ?></td>
                                    <td class="text-right"><?php echo $payments['receive_amnt']  ; ?></td>
                                    <td class="text-right"><?php $surplus=$payments['installment_amnt']-$payments['receive_amnt'] ;
                                    if($surplus > 0){
                                     echo $surplus;
                                    }else{
                                        echo '-';
                                    } ?></td>
                                    <td class="text-right"><?php $surplus=$payments['installment_amnt']-$payments['receive_amnt'] ;
                                    if($surplus < 0){
                                     echo $surplus;
                                    }else{
                                        echo '-';
                                    } ?></td>
                                    <td class="text-right"><?php $overdue=$payments['installment_amnt']+($payments['installment_amnt']-$payments['receive_amnt']) ;
                                     echo $overdue;
                                    ?></td>
                                </tr>

                            <?php } ?>
                        <?php } ?>
                        </tbody>
                        <tfoot>
                                    <tr><td class="text-right"><b><?php echo display('total') ?>:</b></td><td class="text-right"><?php
                          echo $total['total_installment'];
                                                        ?></td>
                                                        <td class="text-right"><?php
                          echo $total['total_recovery'];
                                                        ?></td>
                                                         <td class="text-right"><?php
                          echo $total['total_surplus'];
                                                        ?></td>
                                                         <td class="text-right"><?php
                          echo $total['total_deficit'];
                                                        ?></td>

                                    <td class="text-right"><?php
                          echo $total['total_over_due'];
                                                        ?></td>


                                    </tr>
                                </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

