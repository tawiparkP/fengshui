<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "feng_shui";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully";
$inputJSON = file_get_contents('php://input');
$input= json_decode( $inputJSON, TRUE );
$path_title = key($input);

$sql = "SELECT path_id FROM fu_path WHERE path_title = '".$path_title."'"; 
$result = $conn->query($sql);
$row = $result->fetch_array();
$path_id = $row['path_id'];

$fu = $input[$path_title];

for($i=0;$i<count($fu);$i++){
	$futitle = htmlentities($fu[$i]['title'],ENT_QUOTES);
	$fuDeac = htmlentities($fu[$i]['desc'],ENT_QUOTES);
	$feRequire = htmlentities($fu[$i]['require'],ENT_QUOTES);
	$fuCost = $fu[$i]['cost'];
	if($feRequire){
		$sql_fu = "SELECT fu_id FROM fu_detail WHERE fu_title = '".$feRequire."'"; 
		$result_fu = $conn->query($sql_fu);
		$row_fu = $result_fu->fetch_array();
		$fu_require = $row_fu['fu_id'];
		//echo $fu_require;
	}else{
		$fu_require = '';
	}

	$sql = "INSERT INTO fu_detail (fu_title, fu_desc, fu_path,fu_require,fu_cost) VALUES ('".$futitle."', '".$fuDeac."', ".$path_id.",'".$fu_require."','".$fuCost."')";
	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully<bt/>";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
?>