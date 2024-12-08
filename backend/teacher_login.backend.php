<?php

$username = $_POST['username'];
$password = $_POST['password'];

if($username == "teacher" && $password == "123")
{
    echo "success";
}