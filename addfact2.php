<?php
$link=mysqli_connect("localhost","root","","college");

  if($link==false)
  {
      die("error in connection");
  }

  $name=$_POST["nm"];
  $dept=$_POST["dp"];
  $ss=$_POST["frr"];
  $dt=$_POST["dt"];
  echo $name;

$sqll="SELECT * FROM faculty WHERE Name='$name' ";

if($ress=mysqli_query($link,$sqll))
{
$rowcount=mysqli_num_rows($ress);


if($rowcount == 1)
{
 echo "Already exist. ".$uname;
header("location:addfact3.php");
}
 
 else
 {
 	echo "New faculty";
 	
  $sql="insert into faculty values('$name','$dept','$ss','$dt')";
$res=mysqli_query($link,$sql);

if($res==true)
	{
		echo "Record Inserted Successfully";
		
	}
	else
	{ echo "Error: could not insert"; 
}
  }
}
?>