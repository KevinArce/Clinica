<?php
	require_once "../pre-includes/all.php"; 
	include "../includes/logs.php";

	write_log("$_SESSION[id]","LoggedOut","staff","10");
    session_destroy();
    session_write_close();
	
    print "<script>";
	        print " self.location='../login/?status=signout';"; 
	print "</script>";

?>