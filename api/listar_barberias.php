<?php 
	include_once("conexion.php");
    $sql="SELECT * FROM `barberia`";

    $resultado = $con -> query($sql); 
    $Data = array();

	while($row = mysqli_fetch_array($resultado)){
	   $Data['Barberias'][] = $row;
	}
	echo json_encode($Data);  
    
?>