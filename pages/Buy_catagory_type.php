<?php

include 'connect.php';
 
if(isset($_POST['Add'])){
  $name = $_POST['catagori_name'];
 
  $select = "SELECT * FROM `catagori` WHERE `catagori_name`='$name'";
  $result=mysqli_query($con,$select);
  if(mysqli_num_rows($result)==1){
    
   echo 'duplex data';
    
  }
  else{
     
    $sql="INSERT INTO `catagori`(`catagori_name`)VALUES('$name')";
echo $sql;
$result= mysqli_query($con, $sql);
if($result){
  header('location:Buy_Record.php');
}
else{
  die(mysqli_error($con));
}
  }


}

?>