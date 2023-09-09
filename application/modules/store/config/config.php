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
 
$HmvcConfig['store']["_title"]     = "Store Management";
$HmvcConfig['store']["_description"] = "Store Management System";

//Set true/false if module have database 
$HmvcConfig['store']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['store']["_tables"] = array( 
	'store'
);
