<?php

include("database.php");

$name = $_SESSION['student']['student_name'];
$section = $_SESSION['student']['student_section'];
$student_id = $_POST['student_id'];
$quiz_score = $_POST['quiz_score'];
$quiz_code = $_POST['quiz_code'];


$q = $conn->query("select * from quiz where quiz_code= '$quiz_code'");
$quiz = $q->fetch_assoc();

$qname = $quiz['quiz_name'];
$sub =  $quiz['quiz_subject'];

$conn->query("insert into quiz_record (student_id, quiz_score, quiz_code, student_name, quiz_subject , quiz_name, section ) values ('$student_id ','$quiz_score','$quiz_code', '$name', '$sub', '$qname', '$section')");


echo "success";
