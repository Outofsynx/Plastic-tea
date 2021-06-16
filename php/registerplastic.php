<?php
session_start();
 require_once "connect.php";
$username=$_SESSION['name'];
//the username
$date=date('y/m/d');

$plasticconcious=$_POST['conscious'];
//
echo($plasticconcious);
$plasticuse=$_POST["plastic"];
//

/*switch ($plasticconcious) {
    case 'litter':
        # code...
        break;
    
    case 'value':
        # code...
        break;
case 'value':
    # code...
    break;
case 'value':
    # code...
    break;    
}*/

$sql=$conn->prepare('INSERT INTO `plasticuse`( date, username, instance) 
VALUES (:date,:username,:instance)');

$sql->execute(["date"=>$date,
"username"=>$username,
"instance"=>$plasticuse
]);