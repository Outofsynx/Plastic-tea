<?php
require_once "../dataconn/connect.php";
$email=$_POST['email'];

$sql=$conn->prepare('DELETE FROM `teachers` WHERE (`email` = :email)
');

$sql->execute([
    "email"=>$email
]);