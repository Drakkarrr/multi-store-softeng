<?php

// module name
$HmvcMenu["stockmovment"] = array(
    //set icon
    "icon"           => "<i class='ti-bag'></i>", 

    // stockmovment
 
        'add'    => array( 
            "controller" => "Stockmovment",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "Stockmovment",
            "method"     => "index",
            "permission" => "read"
        ), 
  
);
   

 