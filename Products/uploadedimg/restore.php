<?php
include('connection.php');

$user_id = $_GET['id'];

$restore = "UPDATE `products` SET status = '1' where id = '$user_id' ";
$sqlconn = mysqli_query($connect, $restore);
if($sqlconn){
    
    header('location:fetchpro.php');
}else{
    echo "query failed";
}
?>


?>