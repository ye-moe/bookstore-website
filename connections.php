<?php

$host = $_ENV["sql5.freesqldatabase.com"] ?? '';
$user = $_ENV["sql5787461"] ?? '';
$pass = $_ENV["aLQ1xnEgbq"] ?? '';
$db   = $_ENV["sql5787461"] ?? '';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>
// trigger redeploy
