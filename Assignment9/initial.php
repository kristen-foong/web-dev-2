<?php

include 'head.php';

$result = $conn->query("call getAll()");
$table = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($table);

?>
