<?php
require_once(__DIR__ . '/../../database.php');

class Garantia {
    private $conn;

    public function __construct() {
        $this->conn = Database::conectar();
    }

    public function obtenerTodas() {
        $sql = "SELECT * FROM garantias_clic";
        $result = $this->conn->query($sql);
        if (!$result) {
            error_log("Error al obtener garantias: " . $this->conn->error);
        }
        return $result;
    }

    public function guardar($producto, $entidad, $descripcion, $contacto, $TecCargo, $fecha) {
        $stmt = $this->conn->prepare("INSERT INTO garantias_clic (producto, entidad, descripcion, contacto, TecCargo, fecha) VALUES (?, ?, ?, ?, ?, ?)");
        if (!$stmt) {
            error_log("Error en prepare (guardar): " . $this->conn->error);
            return false;
        }
        $stmt->bind_param("ssssss", $producto, $entidad, $descripcion, $contacto, $TecCargo, $fecha);
        return $stmt->execute();
    }

    public function obtenerPorId($id) {
        $stmt = $this->conn->prepare("SELECT * FROM garantias_clic WHERE id = ?");
        if (!$stmt) {
            error_log("Error en prepare (obtenerPorId): " . $this->conn->error);
            return false;
        }
        $stmt->bind_param("i", $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public function actualizar($id, $producto, $entidad, $descripcion, $contacto, $TecCargo, $fecha) {
        $stmt = $this->conn->prepare("UPDATE garantias_clic SET producto=?, entidad=?, descripcion=?, contacto=?, TecCargo=?, fecha=? WHERE id=?");
        if (!$stmt) {
            error_log("Error en prepare (actualizar): " . $this->conn->error);
            return false;
        }
        $stmt->bind_param("ssssssi", $producto, $entidad, $descripcion, $contacto, $TecCargo, $fecha, $id);
        return $stmt->execute();
    }

    public function eliminar($id) {
        $stmt = $this->conn->prepare("DELETE FROM garantias_clic WHERE id=?");
        if (!$stmt) {
            error_log("Error en prepare (eliminar): " . $this->conn->error);
            return false;
        }
        $stmt->bind_param("i", $id);
        return $stmt->execute();
    }
}
