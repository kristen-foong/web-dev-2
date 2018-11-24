<?php

include 'head.php';

$u = $_POST["username"];
$m = $_POST["message"];

$u = mysqli_real_escape_string($conn, $u);
$m = mysqli_real_escape_string($conn, $m);
$newMsg = $conn->query("call insertMsg('$u','$m')");

$result = $conn->query("call getLatest()");
$table = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($table);

?>
