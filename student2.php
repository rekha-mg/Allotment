<?php

$link=mysqli_connect("localhost","root","","college");

  if($link==false)
  {
      die("error in connection");
  }


$yrr=$_POST["yyrr"];
$stunum=$_POST["stu"];

$rowcount="";

$sql="SELECT count(*) as c FROM student WHERE year='$yrr' ";
if($res=mysqli_query($link,$sql))
{
	     
		if($res > 1)
		{
   			header("Location:student.php");
			}
 			else
 			{

			$sql2="INSERT INTO student VALUES ('MCA','$yrr','$stunum')";

			if(mysqli_query($link,$sql2))
			{
				header("Location:duty.php");
				}
		else
			{ echo "Error: could not insert"; 
    //  echo("Error description: ".mysqli_error($sql2)) ;
  		 }
  		}
}
?>