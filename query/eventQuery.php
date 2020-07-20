<?php

if(isset($_POST['addEvent'])) {

	$eventName = addslashes($_POST["eventName"]);

	$sql = "INSERT INTO event (eventName) VALUES ('$eventName')";
		if (mysqli_query($conn, $sql)) 
		{
			echo '<script>alert("Event Added!")</script>';
		}
	}

?>