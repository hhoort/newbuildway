<?php
require('../crudc2/connection.php');

$fetching_data = "SELECT * from products";
$res = mysqli_query($connect, $fetching_data);
if($res){
  if(mysqli_num_rows($res) > 0){
      
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Fetch Products in php </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
    
<table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Category</th>
      <th scope="col">Description</th>
      <th scope="col">Image</th>
      <th scope="col">update</th>
      <th scope="col">delete</th>
    </tr>
  </thead>
  <tbody>
    <?php
        while($row = mysqli_fetch_assoc($res)){
    ?>
    <tr>
      <th scope="row"><?php echo $row['pname']?></th>
      <td><?php echo $row['pcategory']?></td>
      <td><?php echo $row['pdescription']?></td>
      <!-- <td><?php echo $row['pimage']?></td> -->
    
      <td> <img src="<?php echo 'uploadedimg/' . $row['pimage']?>" alt="" height="50px" width="50px"> </td>
       <td><a href="update.php?id=<?php echo $data['id'];  ?>" class="btn btn-warning">Update</a></td>
                <td><a href="delete.php?id=<?php echo $data['id'];  ?>" class="btn btn-danger">Trash</a></td>
      
    </tr>
    <?php
        }
    ?>
    
  </tbody>
</table>

<?php

}
}

?>


</body>
</html>