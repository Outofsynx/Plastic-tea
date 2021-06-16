<?php
// connnect to db
require_once "../dataconn/connect.php";

// creating session
$_SESSION['school']=$_POST['schoolname'];
session_start();
$schoolname=$_POST['schoolname'];
$sql=$conn->prepare('SELECT `classname` FROM `classes` 
where schoolname=:schoolname
');//sql querry
//
$sql->execute(["schoolname"=>$schoolname]);
//converting sql data
$data=$sql->fetchAll();
// selecting school

?>
<form action="register.php" method="post"><select name="classname" id="">
<?php foreach ($data as $row): ?>
    <option><?=$row["classname"]?></option>
<?php endforeach ?>
<input type="submit" value="ok">
</select>
</form>

