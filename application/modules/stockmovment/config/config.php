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
 
$HmvcConfig['stockmovment']["_title"]       = "stockmovment Management";
$HmvcConfig['stockmovment']["_description"] = "stockmovment Information";

//Set true/false if module have database 
$HmvcConfig['stockmovment']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['stockmovment']["_tables"] = array( 
	'stock_movement',
	'stock_movement_details',	
);
