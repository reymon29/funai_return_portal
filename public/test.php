<?php
$servername = "10.136.32.76";
$username = "rey";
$password = "tokyoboy001";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>

