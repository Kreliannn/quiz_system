<?php

include("database.php");


$quiz_name = $_POST['quiz_name'];
$quiz_code = $_POST['quiz_code'];
$quiz_items = $_POST['quiz_items'];
$quiz_subject = $_POST['quiz_subject'];
$quiz_deadline = $_POST['quiz_deadline'];

$q = $conn->query("select * from quiz where quiz_name = '$quiz_name' && quiz_subject = '$quiz_subject'");
$quiz = $q->fetch_assoc();

if($quiz)
{
    echo "exist";
}
else if(empty($quiz_name) || empty($quiz_items) || empty($quiz_subject) || empty($quiz_deadline))
{
    die("empty");
}
else
{
    echo "success";
}



