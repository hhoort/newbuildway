<?php
include('connection.php');

// print_r($_POST);
$userid = $_POST['id'];
$username = $_POST['pname'];
$userage = $_POST['pcategory'];
$usergender = $_POST['pdescription'];
$userimge = $_POST['pimage'];



$updatequery = "update `products` set id = '$userid', pname = '$username', pcategory = '$usercategory', pdescription = '$userdescription', pimage ='$userimage' where id = '$userid'";

$result = mysqli_query($connect, $updatequery);
if(!$result){
    die("query failed");
}

header('location:http://localhost/classworkB3-main%20(1)/classworkB3-main/Products/fetchpro.php');


?>