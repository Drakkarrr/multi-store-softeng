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
 
$HmvcConfig['supplier']["_title"]       = "supplier Management";
$HmvcConfig['supplier']["_description"] = "supplier Information";

//Set true/false if module have database 
$HmvcConfig['supplier']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['supplier']["_tables"] = array( 
	'supplier'	
);
