<!doctype html>
<html>
<head>
	<title></title>
</head>
<body>

<?php
if ( $results ) {
	foreach($results as $row) {
		echo $row->lname . "<br>";
	}
} else {
	echo 'No rows returned.';
}
?>

</body>
</html>