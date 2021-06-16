<!doctype html>
<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>add taechers</title>

</head>
<body>
<h1>Adding teacher</h1>
<p>
    write here information for the teachers
</p>
<form action="../php/create_teacher2.php" method="post">
    teacher name:           <input type="text" name="teachername"> <br/>
    teacher last name:      <input type="text" name="teacherlastname"> <br/>
    teacher password:          <input type="password" name="password"> <br/>
    teacher email:          <input type="email" name="email"> <br/>
    date of birth:          <input type="date" name="dateofbirth"> <br/>
    <input type="submit">
</form>
</body>
</html>