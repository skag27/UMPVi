<?php

if(isset($_POST['penalty'])) {

	$userID = addslashes($_POST["userID"]);
	$penaltyID = addslashes($_POST["penaltyID"]);

	$sql = "INSERT INTO trafficViolation (userID,penaltyID) VALUES ('$userID','$penaltyID')";
		if (mysqli_query($conn, $sql)) 
		{
			echo '<script>alert("Penalised")</script>';
		}
	}

?>