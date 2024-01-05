<?php
$servername = "localhost";
$username = "quanta";
$password = "Quanta@111";
$dbname = "quanta_info";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
