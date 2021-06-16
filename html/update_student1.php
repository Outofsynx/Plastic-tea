<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Update Teacher</title>
</head>
<body>
<h1>Update Teacher Info</h1>
<?php
$email = $_POST["email"];

require_once "../dataconn/connect.php";

$teachers = $conn->prepare("
                select TeacherName, TeacherLastName, email, DateOfBirth
                        from teachers
                        where email = :email
        ");

$teachers->execute(["email" => $email]);

echo "<form action='../php/update_student2.php' method='post'>";
foreach ($teachers as $teacher)
{
    echo " TeacherName: <input type='text' ";
    echo "<input type='hidden' name='TeacherName'";
    echo " value = '".$teacher["TeacherName"]."'";
    echo "><br />";

    echo " TeacherLastName: <input type='text' ";
    echo " name = 'TeacherLastName'";
    echo " value = '".$teacher["TeacherLastName"]."'";
    echo "><br />";

    echo " email: <input type='text' ";
    echo " name = 'email'";
    echo " value = '".$teacher["email"]."'";
    echo "><br />";

    echo " DateOfBirth: <input type='text' ";
    echo " name = 'DateOfBirth'";
    echo " value = '".$teacher["DateOfBirth"]."'";
    echo "><br />";
}
echo "<input class=\"btn\" type='submit'>";
echo "</form>";
?>