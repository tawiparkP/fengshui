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

$sql = "SELECT path_id FROM magic_cate WHERE path_title = '".$path_title."'"; 
$result = $conn->query($sql);
$row = $result->fetch_array();
$path_id = $row['path_id'];

$fu = $input[$path_title];

for($i=0;$i<count($fu);$i++){
	$futitle = htmlspecialchars($fu[$i]['title']);
	$fuDeac = htmlspecialchars($fu[$i]['attack']);
	$feRequire = htmlspecialchars($fu[$i]['story']);
	$fuCost = $fu[$i]['cost'];

	$sql = "INSERT INTO magic_detail (magic_title, magic_attack, magic_story,magic_cate,magic_cost) VALUES ('".$futitle."', '".$fuDeac."', '".$feRequire."','".$path_id."','".$fuCost."')";
	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully<bt/>";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
?>