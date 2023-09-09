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
 
$HmvcConfig['customer']["_title"]       = "Customer Management";
$HmvcConfig['customer']["_description"] = "Customer Information";

//Set true/false if module have database 
$HmvcConfig['customer']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['customer']["_tables"] = array( 
	'customer'	
);
