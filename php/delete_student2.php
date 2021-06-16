<?php
require_once "../dataconn/connect.php";
$schoolname=$_POST['schoolname'];

$sql=$conn->prepare('DELETE FROM `students` WHERE (`schoolname` = :schoolname)
');

$sql->execute([
    "schoolname"=>$schoolname
]);