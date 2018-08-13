<?php
if(!(isset($_SESSION['logged_in']) && $_SESSION['logged_in']==true)){
	//exit("No esta logueado...");
	$home_url ="http://localhost:8888/php-oop-crud-level-jou/";
  
	//redirect to login page
	header("Location: {$home_url}login.php");
}