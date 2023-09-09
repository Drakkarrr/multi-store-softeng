
  <link href="<?php echo base_url('assets/css/Ionicons/css/ionicons.min.css') ?>" rel="stylesheet" type="text/css"/>
  <link href="<?php echo base_url('assets/css/counterIsa.css') ?>" rel="stylesheet" type="text/css"/>
<div class="row">
 <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h4><span class="count-number"><?php echo $total_cashsale->total_cash;?></span>/=</h4>
              <p><?php echo display('cash')?> <?php echo display('sale')?></p>
            </div>
            <div class="icon">
             <i class="fa fa-money"></i>
            </div>
            <a href="#" class="small-box-footer"><?php echo display('total')?> <?php echo display('cash')?></a>
          </div>
        </div>
      
         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box" style="background-color:#8459cf; color:#fff;">
            <div class="inner">
              <h4><span class="count-number"><?php echo $total_creditsale->total_credit;?></span>/=</h4>

              <p><?php echo display('credit')?> <?php echo display('sale')?></p>
            </div>
            <div class="icon">
             <i class="fa fa-money"></i>
            </div>
            <a href="#" class="small-box-footer"><?php echo display('total')?> <?php echo display('credit')?></a>
          </div>
        </div>

         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box" style="background-color: #6cabbc  ">
            <div class="inner">
              <h4><span class="count-number"><?php echo $total_leasesale->total_lease;?></span>/=</h4>

              <p><?php echo display('lease')?> <?php echo display('sale')?></p>
            </div>
            <div class="icon">
             <i class="fa fa-money"></i>
            </div>
            <a href="#" class="small-box-footer"><?php echo display('total')?> <?php echo display('lease')?></a>
          </div>
        </div>


         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box" style="background-color:  #749057 ">
            <div class="inner">
              <h4><span class="count-number"><?php echo $stockqty;?></span>/<span class="count-number"><?php echo $total_stock;?></span></h4>

              <p><?php echo display('stock')?></p>
            </div>
            <div class="icon">
        <i class="ion-ios-pie"></i>
            </div>
            <a href="#" class="small-box-footer"><?php echo display('qty')?>/<?php echo display('value')?></a>
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-primary">
            <div class="inner">
              <h4><span class="count-number"><?php echo $total_user->total_user; ?></span>/<span class="count-number"><?php echo $total_user->total_user; ?></span></h4>

              <p><?php echo display('users')?></p>
            </div>
            <div class="icon">
             <i class="ion-ios-people"></i>
            </div>
            <a href="#" class="small-box-footer"><?php echo display('total')?> / <?php echo display('active')?></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box" style="background-color:  #b5c0c2 ">
            <div class="inner">
              <h4><span class="count-number"><?php echo $total_customer->total_customer;?></span>/<span class="count-number"><?php echo $cash_customer->total_customer;?></span>/<span class="count-number"><?php echo $credit_customer->total_customer;?></span>/<span class="count-number"><?php echo $lease_customer->total_customer;?></span> <sup style="font-size: 20px"></sup></h4>

              <p><?php echo display('customers')?></p>
            </div>
            <div class="icon">
              <i class="fa fa-user-secret"></i>

            </div>
            <a href="#" class="small-box-footer"><?php echo display('total')?> / <?php echo display('cash')?> / <?php echo display('credit')?> / <?php echo display('lease')?> </a>
          </div>
        </div>
           <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box" style="background-color:  #d6d117 ">
            <div class="inner">
              <h4><span class="count-number"><?php echo $total_store->total_store;?></span>/<span class="count-number"><?php echo $active_store->total_store;?></span></h4>

              <p><?php echo display('stores')?></p>
            </div>
            <div class="icon">
              <i class="fa fa-industry"></i>
            </div>
            <a href="#" class="small-box-footer"><?php echo display('total')?> / <?php echo display('active')?></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box" style="background-color: #5985cf ; color:#fff;">
            <div class="inner">
              <h4><span class="count-number"><?php echo $total_product->total_product;?></span>/<span class="count-number"><?php echo $active_product->total_product;?></span></h4>

              <p><?php echo display('products')?></p>
            </div>
            <div class="icon">
               <i class="ion-ios-cart"></i>
            </div>
            <a href="#" class="small-box-footer"><?php echo display('total')?> / <?php echo display('active')?></a>
          </div>
        </div>

        
        </div>
    </section>
    
    <!-- Bar Chart -->
    <div class="col-sm-12 col-md-8">
        <div class="panel panel-bd lobidisable">

            <div class="panel-heading">
                <div class="panel-title">
                    <span><?php echo display('over_due_analysis')?></span>
                </div>
            </div>
            <div class="panel-body">
                <canvas id="barChart" height="185"></canvas>
            </div>
        </div>
    </div>
    <div class="col-sm-12 col-md-4">
        <div class="panel panel-bd lobidisable">
            <div class="panel-heading">
                <div class="panel-title">
                    <span><?php echo display('accounts')?></span>
                </div>
            </div>
            <div class="panel-body">
                <canvas id="pieChart" height="410"></canvas>
            </div>
        </div>
    </div>  
   
    

   <div class="col-sm-12 col-md-12">
                            <div class="panel panel-bd lobidrag">
                                <div class="panel-heading">
                                    <div class="panel-title">
                                        <span><?php echo display('monthly_sales_performance')?></span>
                                    </div>
                                </div>
                                <div class="panel-body">                                    
                                    <canvas id="lineChart" height="100"></canvas>                                    
                                </div>
                            </div>
                        </div>
</div>
 




<!-- Chart js -->
<script src="<?php echo base_url('assets/js/Chart.min.js') ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/jquery.flot.js') ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/jquery.flot.min.js') ?>" type="text/javascript"></script>

 

<script type="text/javascript">
$(document).ready(function(){

    //bar chart
    var ctx = document.getElementById("barChart");
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["0-1", "2-3", "4-6", "7-9", "10-12", "12+"],
            datasets: [
                {
                    label: "<?php echo display('no_customer')?>",
                    data: [<?php echo $over_due['total_du_acc1'];?>, <?php echo $over_due['total_du_ac2'];?>, <?php echo $over_due['total_du_ac4'];?>, <?php echo $over_due['total_du_ac7'];?>, <?php echo $over_due['total_du_ac10'];?>, <?php echo $over_due['total_du_ac12'];?>],
                    borderColor: "rgba(55, 160, 0, 0.9)",
                    borderWidth: "0",
                    backgroundColor: "rgba(55, 160, 0, 0.5)"
                },
                
            ]
        },
        options: {
            scales: {
                yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
            }
        }
    });




    //pie chart
    var ctx = document.getElementById("pieChart");
    var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            datasets: [{
                    data: [<?php echo $piechart['cashpie'];?>,<?php echo $piechart['bankpie'];?>, <?php echo $piechart['receivepie'];?>, <?php echo $piechart['paybalepie'];?>],
                    backgroundColor: [
                        "rgba(170, 43, 19, 0.88)",
                        "rgba(55,160,0,0.7)",
                        "rgba(255,168,0,0.7)",
                        "rgba(113, 137, 77, 0.78)"
                    ],
                    hoverBackgroundColor: [
                        "rgba(237, 43, 19, 0.88)",
                        "rgba(10,160,0,0.7)",
                        "rgba(255,168,0,0.7)",
                        "rgba(113, 128, 77, 0.98)"
                    ]

                }],
            labels: [
                "<?php echo display('total_cash')?>: <?php echo $piechart['hcash'];?>/=",
                "<?php echo display('total_bank')?>: <?php echo $piechart['bankbal'];?>/=",
                "<?php echo display('total_receivable')?>: <?php echo $piechart['rcbbalence'];?>/=",
                "<?php echo display('total_payable')?>: <?php echo $piechart['paybalance'];?>/="
            ]
        },
        options: {
            responsive: true
        }
    });

});

$('.count-number').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 4000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});

//line chart
                var ctx = document.getElementById("lineChart");
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: [<?php foreach($sales_per['dates'] as $sperfo){
                           // echo $sperfo.',';
                           echo  date('d', strtotime($sperfo)).',';
                        }?>],
                        datasets: [                            
                            {
                                label: "<?php echo display('sales_amount')?>",
                                borderColor: "rgba(55, 160, 0, 0.9)",
                                fill: false,
                                borderWidth: "1",
                                backgroundColor: "rgba(55, 160, 0, 0.5)",
                                pointHighlightStroke: "rgba(26,179,148,1)",
                                data: [<?php foreach($sales_per['sp_v'] as $val){

                                    $sales = $this->db->select('sum(total_amnt) as amount')->from('sales_parent')->where('sales_date',$val)->group_by('sales_date')->get()->row();
                                    echo $sales->amount.',';
                        }?>]
                            }
                        ]
                    },
                    options: {
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            intersect: false
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                gridLines: {
                                    drawOnChartArea: false
                                }
                            }],
                            yAxes: [{
                                gridLines: {
                                    drawOnChartArea: false
                                }
                            }]
                        }

                    }
                });
</script>
