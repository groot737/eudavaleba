<?php
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "ecommerce"; 


$connect = mysqli_connect($servername, $username, $password, $database);


if ($connect->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>
