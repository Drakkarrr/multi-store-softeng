<?php

// module name
$HmvcMenu["payment"] = array(
    //set icon
    "icon"           => "<i class='fa fa-handshake-o'></i>", 
    
    //1st level menu name
    "credit_receive" => array( 
        "controller" => "payment",
        "method"     => "create",
        "permission" => "create"
    ), 
     "recovery_received" => array( 
        "controller" => "payment",
        "method"     => "recovery_create",
        "permission" => "create"
    ),   
     "customer_recovery" => array( 
        "controller" => "payment",
        "method"     => "overdue_info",
        "permission" => "create"
    ),  
);
   

 