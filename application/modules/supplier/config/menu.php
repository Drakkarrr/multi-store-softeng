<?php

// module name
$HmvcMenu["supplier"] = array(
    //set icon
    "icon"           => "<i class='fa fa-handshake-o'></i>", 

    // supplier
 
        'add'    => array( 
            "controller" => "supplier",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "supplier",
            "method"     => "index",
            "permission" => "read"
        ), 
  
);
   

 