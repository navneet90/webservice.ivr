<?php
	require_once('config_db.php');   // require database connection to operate
	
	// build query:
	$sql = "SELECT * FROM users "; // fetch all users table records
	 
	// execute query:
	$result = mysql_query($sql) 
		or die('A error occured: ' . mysql_error());
	 
	// get result count:
	$count = mysql_num_rows($result);
	// print "Showing $count rows:<hr/>";
	$output['JsonArray'] = array();
	// print_r($_SERVER['REQUEST_TIME']); die();
	
	header('content-type:application/json');   // produces output as json
	// fetch results:
	while ($row = mysql_fetch_assoc($result)) {
		// $output[] = $row;
		array_push( $output['JsonArray'], $row );
	}
	$output['ServerTimestamp'] = $_SERVER['REQUEST_TIME'];
	$output = json_encode($output);
	// return ($output);
	print_r( $output );     // sample output shown in sample_response.js file

?>