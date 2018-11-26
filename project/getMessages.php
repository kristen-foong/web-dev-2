<?php

include 'main.php';

//set username & friend variables
session_start();
$from = $_SESSION["username"];
$to = $_POST["friendname"];
$to = mysqli_real_escape_string($conn,$to);
$from = mysqli_real_escape_string($conn,$from);

// get messages
$result = $conn->query("call getMessages('$to','$from')");
$table = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($table);

?>
