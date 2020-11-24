<?php
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "zamaDB";


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
die("<h2>Database Connection Failed : " . $conn->connect_error . "</h2><hr>");
} 
?>