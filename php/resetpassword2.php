<?php
session_start();
require_once "../dataconn/connect.php";

$username = $_POST['username'];
$password = $_POST['password'];
$newpassword = $_POST['newpassword'];
$confirmnewpassword = $_POST['confirmnewpassword'];
$sql = "SELECT password FROM users";
if(!$result)
{
    echo "The username you entered does not exist";
}
else if($password!= mysql_result($result, 0))
{
    echo "You entered an incorrect password";
}
if($newpassword=$confirmnewpassword)
    $sql=mysqli_query("UPDATE users SET password='$newpassword' where 

 username='$username'");
if($sql)
{
    echo "Congratulations You have successfully changed your password";
}
else
{
    echo "Passwords do not match";
}
?>