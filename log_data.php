<html>
	<head>
		<title>experiment data logger</title>
	</head>
	<body>
		<?php
		$input = $_GET["input"];
		$userid = $_GET["userid"];
		$experiment = $_GET["experiment"];
		$file = "/home/ubuntu/data-logging-ec2-startup/data/".$experiment."/".$userid.'.txt';
		// The new person to add to the file
		$data = $input."\n";
		// Write the contents to the file, 
		// using the FILE_APPEND flag to append the content to the end of the file
		// and the LOCK_EX flag to prevent anyone else writing to the file at the same time
		file_put_contents($file, $data, FILE_APPEND | LOCK_EX);
		?>
	</body>
</html>
