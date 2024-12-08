<?php

include("database.php");


$student_id = $_POST['student_id'];
$password = $_POST['password'];

$q = $conn->query("select * from student where student_id = '$student_id' && student_password = '$password'");
$student = $q->fetch_assoc();
if($student)
{
    echo "success";
    $_SESSION["student"] = $student; 
}
else
{
    echo "invalid";
}