<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <title>Plasteam Register</title>
</head>
<header>
    <?php
    include "../navigation/loggedoutnav.html";
   // connnect to db
//require_once ".../dataconn/connect.php";

$classname=$_POST['classname'];
session_start();
var_dump($classname);
    ?>
</header>
<body>
<div class="regform">
    <form class="frm" action="../php/register2.php" method="post">
        <label>Fill in your username:</label>
        <input class="formfill" type="text" placeholder="username" name="username">
        
        <label>select class:</label>
<?php echo"'<input type='hidden' name='name' id='' value='.$classname.'>";?>
        <label>Fill in your first name:</label>
        <input class="formfill" type="text" placeholder="first name" name="firstname">

        <label>Fill in your last name:</label>
        <input class="formfill" type="text" placeholder="last name" name="lastname">

        <label>Fill in your password:</label>
        <input class="formfill" type="password" placeholder="password" name="password">

        <label for="country">Select your country:</label>
        <select class="formfill" id="country" name="country">
            <option value="Netherlands">Netherlands</option>
            <option value="Italy">Italy</option>
            <option value="England">England</option>
            <option value="Romania">Romania</option>
            <option value="Greece">Greece</option>
        </select>

        <button class="submit1" type="submit" value="Register">Register</button>
        <p class="message">Already got an account? <a href="login.php">Login</a></p>

    </form>
</div>

</body>
</html>