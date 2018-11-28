<?php

include 'main.php';

//set username & friend variables
session_start();
$from = $_SESSION["username"];
$to = $_POST["friendname"];
$msg = $_POST["message"];
$to = mysqli_real_escape_string($conn,$to);
$from = mysqli_real_escape_string($conn,$from);
$msg = mysqli_real_escape_string($conn,$msg);

// get messages
$result = $conn->query("call addMessage('$from','$to','$msg')");
$result = $conn->query("call getMessages('$to','$from')");
$table = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($table);

?>
