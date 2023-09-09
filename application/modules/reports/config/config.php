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
 
$HmvcConfig['reports']["_title"]       = "Reports";
$HmvcConfig['reports']["_description"] = "Reports Information";

//Set true/false if module have database 
$HmvcConfig['reports']['_database'] = true;

// register your module tables. only register tables are imported while installing the module
$HmvcConfig['reports']["_tables"] = array( 
	'test',
);
