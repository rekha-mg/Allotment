<?php

$link=mysqli_connect("localhost","root","","college");

  if($link==false)
  {
      die("error in connection");
  }
  ?>

<html>

<head>
<link rel="stylesheet" href="styles2.css">
<style type="text/css">
	table{
		padding-top: 140px;
		padding-left: 160px;
		width: 80%;
	}

	table th{
      border:2px solid white;
      background-color:orange;
      color: black;
    }
 tr td
 {
border:2px solid black;
background-color:yellow;
      color: black;

  
  
}
</style>

</head>

<body>


<div>
<h1> Invigilation Duty Allotment </h1>
<div>

<ul>
<li><a href="home.php"> Home</a></li>
<li><a href="addfact.php">Add Faculty</a></li>
<li><a href="rooms.php">Calculate Rooms</a></li>
<li><a href="duty.php">Faculty Allocation</a></li>
</ul>

<div>
<?php

 $sql="SELECT * FROM faculty "; 
  $res=mysqli_query($link,$sql);

  if($res === false){
    throw new Exception(mysqli_error($connection));
}
 ?>


 <table id="ttab"  >
  <tr>
    <th> Name</th>
    <th> Department </th>
    <th> Session </th>
    <th> Date </th>
      </tr>

 <?php
 
    while ($row = mysqli_fetch_assoc($res))
     {
        ?>
        <tr>
            <td><?php echo $row['Name']; ?></td> 
            <td><?php echo $row['Dept']; ?></td> 
            
            <td><?php echo $row['session']; ?></td> 
            <td><?php echo $row['Date']; ?></td> 
           
            
        </tr>
        <?php
    
       }   
?>  

</table>


</div>
	</body>

</html>