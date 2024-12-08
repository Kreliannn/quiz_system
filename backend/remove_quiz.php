<?php

include("database.php");
$code = $_POST['quiz_code'];


$conn->query("delete from quiz where quiz_code = '$code'");
$conn->query("delete from quiz_record where quiz_code = '$code'");
$conn->query("delete from question_answer where code = '$code'");


echo "<script>window.history.back();</script>";























