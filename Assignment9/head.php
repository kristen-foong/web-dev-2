<?php

function clearConnection($mysql){
    while($mysql->more_results()){
       $mysql->next_result();
       $mysql->use_result();
    }
}

// localhost 3306 at home, 4001 at school
$servername = "localhost:3306";
$username = "root";
$password = "";
$db = "assn9";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("He's dead, Jim! " . $conn->connect_error);
}


?>
