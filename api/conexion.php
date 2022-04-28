<?php 
 $host_db = "localhost";
 $user_db = "hnrcvalh_root";
 $pass_db = "cuentafalsa17-A";
 $db_name = "hnrcvalh_barber";
 

 $con = new mysqli($host_db, $user_db, $pass_db, $db_name);

    if ($con->connect_error) {
        die("La conexion falló: " . $conexion->connect_error);
    }

?>