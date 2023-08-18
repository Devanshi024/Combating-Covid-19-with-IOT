<?php

include "connection.php";      // Not compulsory....

session_start();

unset($_SESSION['log']);

session_destroy();

header("location:index.php");


?>