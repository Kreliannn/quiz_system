<?php

include("database.php");

$code = $_POST['quiz_code'];

$data = $conn->query("select question, answer from question_answer where code = '$code'");

$all_items = fetchAll($data );

die(json_encode($all_items));