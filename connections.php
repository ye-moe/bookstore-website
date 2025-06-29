<?php

$host = getenv("sql5.freesqldatabase.com");
$user = getenv("sql5787461");
$pass = getenv("aLQ1xnEgbq");
$db   = getenv("sql5787461");

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>
