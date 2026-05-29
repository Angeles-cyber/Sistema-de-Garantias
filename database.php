<?php
class Database {
    public static function conectar() {
        $host = "localhost";
        $user = "root";
        $pass = ""; // pon aquí tu contraseña si tienes
        $dbname = "garantias_db";

        $conn = new mysqli($host, $user, $pass, $dbname);

        if ($conn->connect_error) {
            error_log("Error de conexión a la base de datos: " . $conn->connect_error);
            die("Error de conexión. Contacte al administrador.");
        }

        return $conn;
    }
}
?>
