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
 
$HmvcConfig['lease']["_title"]       = "lease Management";
$HmvcConfig['lease']["_description"] = "lease Information";

//Set true/false if module have database 
$HmvcConfig['lease']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['lease']["_tables"] = array( 
	'lease',
	'lease_product_map',
	'lease_store_map'
);
