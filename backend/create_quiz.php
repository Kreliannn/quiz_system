<?php

include("database.php");


$quiz_name = $_POST['quiz_name'];
$quiz_code = $_POST['quiz_code'];
$quiz_items = $_POST['quiz_items'];
$quiz_subject = $_POST['quiz_subject'];
$quiz_deadline = $_POST['quiz_deadline'];

$conn->query("insert into quiz (quiz_name, quiz_code, quiz_items, quiz_subject, quiz_deadline) values('$quiz_name', '$quiz_code', '$quiz_items', '$quiz_subject', '$quiz_deadline')");


echo "success";