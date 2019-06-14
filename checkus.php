<?php
$link=mysqli_connect("localhost","root","","college");

  if($link==false)
  {
      die("error in connection");
  }
$unm=$_POST["nm"];
$passw=$_POST["psw"];

//check the user exist in db

$sql="select * from admin where username='$unm' and password='$passw' ";
if($res=mysqli_query($link,$sql))
{
	   $rowcount=mysqli_num_rows($res);
}

if($rowcount ==1)
  header("location:adminhome.php");
 else
 	 header("location:home.php");
  
 


  ?>