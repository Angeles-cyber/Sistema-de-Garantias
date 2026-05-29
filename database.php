<?php
class Database {
    public static function conectar() {
        // Leer configuración desde variables de entorno para no exponer credenciales
        $host = getenv('DB_HOST') ?: 'localhost';
        $user = getenv('DB_USER') ?: 'root';
        $pass = getenv('DB_PASS') ?: '';
        $dbname = getenv('DB_NAME') ?: 'garantias_db';

        $conn = new mysqli($host, $user, $pass, $dbname);

        if ($conn->connect_error) {
            error_log("Error de conexión a la base de datos: " . $conn->connect_error);
            die("Error de conexión. Contacte al administrador.");
        }

        return $conn;
    }
}
?>
