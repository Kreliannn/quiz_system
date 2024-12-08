<?php

include("database.php");

$name = $_POST['name'];
$student_id = $_POST['student_id'];
$section = $_POST['section'];
$password = $_POST['password'];

$q = $conn->query("select * from student where student_id = '$student_id'");
$student = $q->fetch_assoc();

if($student)
{
    die("error");
}

$conn->query("insert into student (student_id, student_password, student_name, student_section) values('$student_id','$password','$name','$section')");

echo "success";