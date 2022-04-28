<?php 
	include_once("conexion.php");
    $nombre = $_POST['nombre'];
    $direccion = $_POST['direccion'];
    $ciudad = $_POST['ciudad'];
    $fecha_registro = $_POST['fecha_registro'];
    $fecha_renovacion = $_POST['fecha_renovacion'];
    $propietario = $_POST['propietario'];
    $usuario = $_POST['usuario'];
    $horario = $_POST['horario'];
    $telefono = $_POST['telefono'];
    $latitud = $_POST['latitud'];
    $longitud = $_POST['longitud'];
    
    $password = md5($usuario.date('dmY'));
    
    $archivonombre = $_FILES["logo"]["name"]; 
    $fuente = $_FILES["logo"]["tmp_name"]; 
    $tipo_archivo = $_FILES["logo"]["type"]; 
    $peso_archivo = $_FILES["logo"]["size"]; 
    $carpeta = "../logos/";

    $dest_path = $carpeta.$archivonombre;

    if(move_uploaded_file($fuente, $dest_path))
    {
        $sql="INSERT INTO `barberia`(`nombre`, `direccion`, `ciudad`, `logo`, `fecha_registro`, `fecha_renovacion`, `propietario`, `usuario`, `password`, `horario`, `telefono`, `Lat`, `Lng`) VALUES ('$nombre','$direccion','$ciudad','$archivonombre','$fecha_registro','$fecha_renovacion','$propietario','$usuario','$password','$horario','$telefono', '$latitud', '$longitud')";

        $resultado = $con -> query($sql); 

        if($resultado){
            echo json_encode(array('success' => 1, 'mensaje' => 'Datos guardados correctamente!'));  
        }else{
            echo json_encode(array('success' => 0, 'mensaje' => 'Ocurrio un error al guardar en la base de datos.'));
        }
    }else{
        echo json_encode(array('success' => 0, 'mensaje' => 'Ocurrio un error al guardar el logo.'));
    }
    
?>