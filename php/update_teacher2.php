<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>teacher update 2</title>
</head>
<body>

<?php
$TeacherName = $_POST["TeacherName"];
$TeacherLastName = $_POST["TeacherLastName"];
$email = $_POST["email"];
$DateOfBirth = $_POST["DateOfBirth"];

require_once "../dataconn/connect.php";

$sql = $conn->prepare
("update teachers set 
    TeacherName = :TeacherName,
    TeacherLastName = :TeacherLastName,
    email = :email,
    DateOfBirth = :DateOfBirth
    where email = :email
    ");

$sql->execute
([
    "TeacherName" => $TeacherName,
    "TeacherLastName" => $TeacherLastName,
    "email" => $email,
    "DateOfBirth" => $DateOfBirth
]);

echo "<h2>The update was a success.</h2> <br />";
