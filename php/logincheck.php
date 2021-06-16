<?php
if(!isset($_SESSION['name'])){
    header('location:../html/login.php');
}