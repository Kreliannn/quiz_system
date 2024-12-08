<?php

$conn = new mysqli("localhost", "root", "", "quiz_system");


function fetchAll($array)
{
    $data = [];
    while ($variable = $array->fetch_assoc()) {
        $data[] = $variable;
    }

    return $data;

}

session_start();