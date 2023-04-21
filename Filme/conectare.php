<?php
$con = mysqli_connect("localhost","root","student123","filme");
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
		}
?>