<?php
require_once "../dataconn/connect.php";
$studentname=$_POST['studentname'];
$studentlastname=$_POST['studentlastname'];
$password=password_hash($_POST['password'],PASSWORD_BCRYPT);
$schoolname=$_POST['schoolname'];
$dateofbirth=$_POST['dateofbirth'];

$sql=$conn->prepare('INSERT INTO `students`(`StudentName`, `StudentLastName`, `password`, `SchoolName`, `DateOfBirth`) 
 VALUES (:studentname,:studentlastname, :password, :schoolname,:dateofbirth)
');
$sql->execute([
    "studentname"=>$studentname,
    "studentlastname"=>$studentlastname,
    "password"=>$password,
    "schoolname"=>$schoolname,
    "dateofbirth"=>$dateofbirth
]);