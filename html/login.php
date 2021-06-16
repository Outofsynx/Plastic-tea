<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <title>Plasteam Login</title>
</head>
<header>
    <?php
    include "../navigation/loggedoutnav.html"
    ?>
</header>
<body>

<div class="regform">
    <form class="frm" action="../php/login2.php" method="post">
        <label>Fill in your username:</label>
        <input class="formfill" type="text" placeholder="username" name="username">

        <label>Fill in your password:</label>
        <input class="formfill" type="password" placeholder="password" name="password">

        <button class="submit1" type="submit" value="Login">Login</button>
        <p class="message">Not registered? <a href="register.php">Create an account</a></p>
        <p class="message">I forgot my password <a href="../php/resetpassword.php">reset password</a></p>
    </form>
</div>

</body>
</html>
