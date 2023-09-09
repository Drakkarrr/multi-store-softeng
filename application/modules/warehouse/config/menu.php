<?php

// module name
$HmvcMenu["warehouse"] = array(
    //set icon
    "icon"           => "<i class='fa fa-home'></i>", 
    
    //1st level menu name
    "add_warehouse" => array( 
        "controller" => "warehouse",
        "method"     => "create",
        "permission" => "create"
    ), 

    "list_warehouse" => array( 
        "controller" => "warehouse",
        "method"     => "index",
        "permission" => "read"
    ), 
);
   

 