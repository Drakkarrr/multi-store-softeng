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
 
$HmvcConfig['product']["_title"]       = "Product Management";
$HmvcConfig['product']["_description"] = "Product Information";

//Set true/false if module have database 
$HmvcConfig['product']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['product']["_tables"] = array( 
	'product'	
);
