<?php

// module name
$HmvcMenu["reports"] = array(
    //set icon
    "icon"           => "<i class='ti-bag'></i>", 

    // stockmovment

     "lease_and_recovery_report" => array( 
    "lease_package_pricing" => array(
        "controller" => "reports",
        "method"     => "lease_package_pricing",
        "permission" => "read"
    ),

        "recovery_list" => array( 
        "controller" => "reports",
        "method"     => "recover_report_form",
        "permission" => "read"
    ),

    "recovery_summary_report" => array(
        "controller" => "reports",
        "method"     => "recovery_summary_report",
        "permission" => "read"
    ),
    "recovery_summary_report_datewise" => array(
        "controller" => "reports",
        "method"     => "recovery_summary_report_daywise",
        "permission" => "read"
    ),

    "overdue_analysis" => array(
        "controller" => "reports",
        "method"     => "over_due_analysis",
        "permission" => "read"
    ),

    "branch_wise_ov_du_analisis" => array(
        "controller" => "reports",
        "method"     => "branchwise_ovdue_anly_details",
        "permission" => "read"
    ),
       
    ),
   
 "stock_report" => array(
      "stock_analysis_report" => array(
        "controller" => "reports",
        "method"     => "stock_analysis_report",
        "permission" => "read"
    ),
       "stock" => array( 
        "controller" => "reports",
        "method"     => "procedure",
        "permission" => "read"
    ), 

     "stock_history" => array( 
        "controller" => "reports",
        "method"     => "stock_history_report",
        "permission" => "read"
    ), 

"store_ledger" => array( 
        "controller" => "reports",
        "method"     => "store_stock_history_report",
        "permission" => "read"
    ), 
    ),
);
   

 