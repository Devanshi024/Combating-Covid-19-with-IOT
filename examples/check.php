<?php

		include "connection.php";
			
		session_start();
	
		$mail = $_POST['email'];
		
		$pass = $_POST['pass'];
		
		
		$qry = "SELECT * FROM login_table WHERE EMAIL_ID='$mail' AND PASSWORD='$pass'";

		$result = mysqli_query($con,$qry);
		
		$value = mysqli_fetch_array($result);
	
		$count = mysqli_num_rows($result);
		
		if($count==1 && $value['PASSWORD']==$pass)
		{
			
			$_SESSION['user'] = $value['EMAIL_ID'];
			header("location:dashboard.php");		
							
		}
		else
		{
				
			header("location:index.php?flag=1" );
			
		}
		
	
?>