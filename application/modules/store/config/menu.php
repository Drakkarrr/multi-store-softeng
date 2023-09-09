<?php

// module name
$HmvcMenu["store"] = array(
    //set icon
    "icon"           => "<i class='fa fa-home'></i>", 
    
    //1st level menu name
    "add_store" => array( 
        "controller" => "Store",
        "method"     => "create",
        "permission" => "create"
    ), 

    "list_store" => array( 
        "controller" => "Store",
        "method"     => "index",
        "permission" => "read"
    ), 
);
   

 