<?php  session_start();
require_once "../dataconn/connect.php";
$username=$_POST['username'];
$firstname=password_hash($_POST['firstname'],PASSWORD_BCRYPT);
$lastname=password_hash($_POST['lastname'],PASSWORD_BCRYPT);
$password=$_POST['password'];
$email="hello";
$classname=$_POST['name'];

$hash=password_hash($password,PASSWORD_BCRYPT);


$sql=$conn->prepare('INSERT INTO `users`(`username`, `firstname`, `lastname`,
 `password`, `score`, `email`,classname) 
 VALUES (:username,:firstname,:lastname,:password,:email,:email,:classname)
');
$sql->execute(["username"=>$username,
"firstname"=>$firstname,
"lastname"=>$lastname,
"password"=>$hash,
"email"=>$email,
"classname"=>$classname

]);


// executing the querry
if ($sql){
    $_SESSION['name']=$username;
    header('location:../html/user.php');
}