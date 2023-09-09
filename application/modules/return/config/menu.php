<?php

// module name
$HmvcMenu["return"] = array(
    //set icon
    "icon"           => "<i class='ti-bag'></i>", 

    // stockmovment
 
        'add'    => array( 
            "controller" => "Returns",
            "method"     => "return_form",
            "permission" => "create"
        ), 
        'sale_return_list'  => array( 
            "controller" => "Returns",
            "method"     => "sales_return_list",
            "permission" => "read"
        ), 
         'purchase_return_list'  => array( 
            "controller" => "Returns",
            "method"     => "purchase_return_list",
            "permission" => "read"
        ), 
  
);
   

 