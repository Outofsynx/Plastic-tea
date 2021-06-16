<?php
require_once "../dataconn/connect.php";


$sql=$conn->prepare('SELECT `schoolname` FROM `school`
');
$sql->execute();
$data=$sql->fetchAll();

?>
<form action="selectclass.php" method="post"><select name="schoolname" id="">
<?php foreach ($data as $row): ?>
    <option><?=$row["schoolname"]?></option>
<?php endforeach ?>
<input type="submit" value="ok">
</select>
</form>