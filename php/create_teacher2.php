<?php
require_once "../dataconn/connect.php";
$teachername=$_POST['teachername'];
$teacherlastname=$_POST['teacherlastname'];
$password=password_hash($_POST['password'],PASSWORD_BCRYPT);
$email=$_POST['email'];
$dateofbirth=$_POST['dateofbirth'];

$sql=$conn->prepare('INSERT INTO `teachers`(`TeacherName`, `TeacherLastName`, `password`, `email`, `DateOfBirth`) 
 VALUES (:teachername,:teacherlastname, :password, :email,:dateofbirth)
');
$sql->execute([
    "teachername"=>$teachername,
    "teacherlastname"=>$teacherlastname,
    "password"=>$password,
    "email"=>$email,
    "dateofbirth"=>$dateofbirth
]);