
<html>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="myform">
<div class="header"><h1><b>CC-19 LOGIN</b></h1>
</div>
<form action="check.php" method="post">
<input style type="text" name="email" placeholder="Email..." ></br></br>
<input type="password" name="pass" placeholder="Password...">
</br></br></br></br>
<center><input type="submit" value="LOGIN IN"> </b> </center>      
</form>
</div>
<body>
</html>
<?php
if(isset($_GET['flag']))
{
if($_GET['flag']==1)
{
echo "<script>alert('Invalid Username/Password');</script>";

}
if($_GET['flag']==2)
{
echo "<script>alert('We have Received Your Inquiry. We'll Soon Update You. ');</script>";

}

}


?>