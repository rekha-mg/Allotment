<html>

<head>
<link rel="stylesheet" href="styles.css">
<script type="text/javascript">
	function validate()
      {
      if( document.myFrm.cur.value == "" )
         {
            alert( "select the Course" );
            document.myFrm.cur.focus();
            return false;
         }
         if(document.myFrm.yyrr.value="")
	    {
		  alert("null value not accepted");
		   document.myFrm.yyrr.focus();
            return false;
	      }
         if( document.myFrm.stu.value == "" )
         {
            alert( "enter number of  Student " );
            document.myFrm.stu.focus();
            return false;
         }else if(document.myFrm.stu.value<0 )
         {
         	alert("Negative Number not allowed");
         }
         
         
     }
</script>
<style type="text/css">
	
	ul{
	margin:0px;
	 text-align: center;

}
	

ul li{
	  list-style-type:none;
	  float:left;
	  width:400px;
      background-color:brown;
}

ul li a{
	 text-decoration:none;
	 font-size: 24px;
	 color:orange;
	}
	table{ margin-top:160px;
	   margin-left: 150px; }
	   table tr td{
	   	 padding: 8px;font-size: 20px;
	   }
	   #txt {
	   	 width:80px;
	   }
</style>
</head>

<body>


<div>
<h1> Invigilation Duty Allotment </h1>
<div>
<ul>
<li><a href="home.php"> Home</a></li>
<li><a href="admin.php">Admin Login</a></li>
<li><a href="contact.php">Contact Us</a></li>
</ul>
</div>
<div>
	<form name="myFrm" action="student2.php" method="post" onsubmit="return(validate());">
		
	<table>
		<tr><td>Course:</td> <td>MCA </td> </tr>

	<tr><td>Year:</td><td><select name="yyrr"><option>  </option> 
		                          <option> I year</option>
								  <option> II year</option>
								  
						</select>
		</td></tr>
		<tr> <td> Number of Student</td> <td><input type="number" name="stu"</td></tr>
	
	<tr> <td> </td><td> <input id="txt" type="submit"></td> </tr>
	 </table>
</div>
</div>
	</body>

</html>