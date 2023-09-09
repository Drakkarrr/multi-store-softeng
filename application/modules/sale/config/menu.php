<?php

// module name
$HmvcMenu["sale"] = array(
    //set icon
    "icon"           => "<i class='fa fa-shopping-cart'></i>", 

    // sale
 
        'add'    => array( 
            "controller" => "sale",
            "method"     => "form",
            "permission" => "create"
        ), 
        'cash_sale_list'  => array( 
            "controller" => "sale",
            "method"     => "index",
            "permission" => "read"
        ), 
         'credit_sale_list'  => array( 
            "controller" => "sale",
            "method"     => "credit_sale",
            "permission" => "read"
        ), 
          'lease_sale_list'  => array( 
            "controller" => "sale",
            "method"     => "lease_sale",
            "permission" => "read"
        ), 
  
);
   

 