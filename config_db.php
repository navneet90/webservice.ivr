<?php 

	// connection settings for local usage
	# needs to change details as per your system
	$con = mysql_connect('localhost','root','timecrunch') 
    or die('Could not connect to the server!');
	
	// select a database:
	mysql_select_db('ivrDB') 
		or die('Could not select a database.');

?>