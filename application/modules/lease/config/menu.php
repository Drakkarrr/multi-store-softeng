<?php

// module name
$HmvcMenu["lease"] = array(
    //set icon
    "icon"           => "<i class='fa fa-shopping-cart'></i>", 

    // lease
 
        'add'    => array( 
            "controller" => "lease",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "lease",
            "method"     => "index",
            "permission" => "read"
        ), 
  
);
   

 