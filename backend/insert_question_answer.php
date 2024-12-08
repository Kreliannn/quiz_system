<?php

include("database.php");


$question = $_POST['question'];
$answer = $_POST['answer'];
$code = $_POST['code'];

$conn->query("insert into question_answer (question, answer, code) values('$question', '$answer', '$code')");


echo "success";

