<?php

$host = $_ENV["DB_HOST"] ?? '';
$user = $_ENV["DB_USER"] ?? '';
$pass = $_ENV["DB_PASSWORD"] ?? '';
$db   = $_ENV["DB_NAME"] ?? '';

$con = new mysqli($host, $user, $pass, $db);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}



