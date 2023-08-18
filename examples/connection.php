<?php
$con = mysqli_connect('localhost','root','');

if(!$con){
		echo'<h1> you are connected with server</h1>';
}

$db = mysqli_select_db($con,'g-daamserver');

if(!$db){
echo'<h1> not connected with database</h1>';

}
?>