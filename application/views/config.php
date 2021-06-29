<?php
$servername = "192.168.88.70";
							$username = "talenta";
							$password = "T@lenta";
							$dbname = "pilketos";
							// Create connection
							$conn = new mysqli($servername, $username, $password, $dbname);
							// Check connection
							if ($conn->connect_error) {
								die("Connection failed: " . $conn->connect_error);
							}
?>							