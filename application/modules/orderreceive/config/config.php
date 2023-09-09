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
 
$HmvcConfig['orderreceive']["_title"]       = "Purchase Order Permission";
$HmvcConfig['orderreceive']["_description"] = "Purchase Order Permission";

//Set true/false if module have database 
$HmvcConfig['orderreceive']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['orderreceive']["_tables"] = array( 
	'test22',
);
