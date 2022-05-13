<?php // connects to database 
	$dbConnect = mysqli_connect("localhost","burgosd2_admin","[_3j(yS~PG*.","burgosd2_online_banking");
    if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	die();
    }
?>