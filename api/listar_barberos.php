<?php 
	include_once("conexion.php");
	$id = $_GET['id_barberia'];
    $sql="SELECT * FROM `barbero` where id_barberia = '$id'";

    $resultado = $con -> query($sql); 
    $Data = array();

	while($row = mysqli_fetch_array($resultado)){
	   $Data['Barberos'][] = $row;
	}
	echo json_encode($Data);  
    
?>