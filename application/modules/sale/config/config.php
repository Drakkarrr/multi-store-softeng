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
 
$HmvcConfig['sale']["_title"]       = "sale Management";
$HmvcConfig['sale']["_description"] = "sale Information";

//Set true/false if module have database 
$HmvcConfig['sale']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['sale']["_tables"] = array( 
	'sales_parent',
	'sale_details',
	'sale_type',
	'payment_collection'
);
