<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <title>Password Change</title>
</head>
<body>
<h1>Change Password</h1>
<form method="POST" action="resetpassword2.php">
    <table>
        <tr>
            <td>Enter your UserName</td>
            <td><input type="username" size="10" name="username"></td>
        </tr>
        <tr>
            <td>Enter your existing password:</td>
            <td><input type="password" size="10" name="password"></td>
        </tr>
        <tr>
            <td>Enter your new password:</td>
            <td><input type="password" size="10" name="newpassword"></td>
        </tr>
        <tr>
            <td>Re-enter your new password:</td>
            <td><input type="password" size="10" name="confirmnewpassword"></td>
        </tr>
    </table>
    <p><input type="submit" value="Update Password">
</form>
<p><a href="../html/login.php">Home</a>

</body>
</html>