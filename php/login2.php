<?php
require_once "../dataconn/connect.php";
session_start();
// school
$username=$_POST['username'];
//schools
$password=$_POST['password'];
//  checking if the  name is found
$found=false;

$sql=$conn->prepare("SELECT `username`, `password` FROM `users` 
");
// sql is queery uigevoerd
$sql->execute();
//finding 
foreach ($sql as $row ) {
    if ($username==$row['username']){
    // checking if the password exist 
if (password_verify($password,$row['password'])) { ;
     $found=true;

}}}

if ($found) {

    $_SESSION['name']=$username;
    
    header('location:../html/user.php');
}
else {
    header('location:../html/login.php');
}
