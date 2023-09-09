<?php

// module name
$HmvcMenu["stock"] = array(
    //set icon
    "icon"           => "<i class='fa fa-home'></i>", 
    
    "stock" => array( 
        "controller" => "stock",
        "method"     => "procedure",
        "permission" => "read"
    ), 

     "stock_history" => array( 
        "controller" => "stock",
        "method"     => "stock_history_report",
        "permission" => "read"
    ), 
);
   

 