<?php

// module name
$HmvcMenu["purchase_order"] = array(
    //set icon
    "icon"           => "<i class='fa fa-list'></i>", 

    // purchase_order
 
        'add'    => array( 
            "controller" => "purchase_order",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "purchase_order",
            "method"     => "index",
            "permission" => "read"
        ), 
        'receive_list'  => array( 
            "controller" => "purchase_order",
            "method"     => "receive_list",
            "permission" => "read"
        ), 
  
);
   

 