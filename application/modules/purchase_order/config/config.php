<?php
/*
|___________________________________________________________________
|	-> Configuration variable name must be $HmvcConfig
|	-> Module Name must be unique 
|	-> Module Name must be same as the module directory
|	-> Set a title and description 
|	-> Set true/false if module have database 
|	-> Must be register your database tables
|___________________________________________________________________
|
*/
 
$HmvcConfig['purchase_order']["_title"]       = "purchase_order Management";
$HmvcConfig['purchase_order']["_description"] = "purchase_order Information";

//Set true/false if module have database 
$HmvcConfig['purchase_order']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['purchase_order']["_tables"] = array( 
	'purchase_order',
	'purchase_order_details',
	'purchase_receive',
	'purchase_receive_details'	
);
