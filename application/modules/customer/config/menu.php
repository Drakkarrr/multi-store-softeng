<?php

// module name
$HmvcMenu["customer"] = array(
    //set icon
    "icon"           => "<i class='fa fa-user'></i>", 

    // customer
 
        'add'    => array( 
            "controller" => "customer",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "customer",
            "method"     => "index",
            "permission" => "read"
        ), 
  
);
   

 