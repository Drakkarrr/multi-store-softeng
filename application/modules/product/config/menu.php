<?php

// module name
$HmvcMenu["product"] = array(
    //set icon
    "icon"           => "<i class='ti-bag'></i>", 

    // product
     'category'    => array( 
            "controller" => "product",
            "method"     => "category_index",
            "permission" => "read"
        ), 
        'model'    => array( 
            "controller" => "product",
            "method"     => "model_index",
            "permission" => "read"
        ), 

       'brand'    => array( 
            "controller" => "product",
            "method"     => "brand_index",
            "permission" => "read"
        ),  

       'unit'    => array( 
            "controller" => "product",
            "method"     => "unit_index",
            "permission" => "read"
        ),  

        'add_product'    => array( 
            "controller" => "product",
            "method"     => "form",
            "permission" => "create"
        ), 
        'product_list'  => array( 
            "controller" => "product",
            "method"     => "index",
            "permission" => "read"
        ), 
 
);
   

 