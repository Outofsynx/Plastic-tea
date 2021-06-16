<!doctype html>
<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Adding student</title>

</head>
<body>
<h1>Adding student</h1>
<p>
    write here information for the students
</p>
<form action="../php/create_student2.php" method="post">
    student name:               <input type="text" name="studentname"> <br/>
    student last name:          <input type="text" name="studentlastname"> <br/>
    student password:           <input type="password" name="password"> <br/>
    school name:                <input type="text" name="schoolname"> <br/>
    date of birth               <input type="date" name="dateofbirth"> <br/>


    <input type="submit">
</form>
</body>
</html>