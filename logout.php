<?php
session_start();
// destroy session, it will remove ALL session settings
session_destroy();
$home_url ="http://localhost:8888/php-oop-crud-level-jou/";
  
//redirect to login page
header("Location: {$home_url}login.php");