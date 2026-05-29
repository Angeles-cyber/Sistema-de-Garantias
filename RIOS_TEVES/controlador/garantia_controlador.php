<?php
require_once __DIR__ . '/../modelo/garantia.php';

class GarantiaController {
    private $modelo;

    public function __construct() {
        $this->modelo = new Garantia();
    }

    public function listar() {
        $garantias = $this->modelo->obtenerTodas();
        include __DIR__ . '/../vista/listar.php';
    }

    public function crear() {
        include __DIR__ . '/../vista/crear.php';
    }

    public function guardar() {
    if (!empty($_POST)) {
        $this->modelo->guardar(
            $_POST['producto'], 
            $_POST['entidad'], 
            $_POST['descripcion'], 
            $_POST['contacto'], 
            $_POST['TecCargo'], 
            $_POST['fecha']
        );
        header('Location: indexrios.php');
        exit();
    } else {
        echo "No se recibieron datos del formulario.";
    }



    }

    public function editar($id) {
        $garantia = $this->modelo->obtenerPorId($id);
        include __DIR__ . '/../vista/editar.php';
    }

    public function actualizar($id) {
        if (!empty($_POST)) {
            $this->modelo->actualizar(
                $id,
                $_POST['producto'], 
                $_POST['entidad'], 
                $_POST['descripcion'], 
                $_POST['contacto'], 
                $_POST['TecCargo'], 
                $_POST['fecha']
            );
        }
        header('Location: indexrios.php');
        exit();
    }

    public function eliminar($id) {
        $this->modelo->eliminar($id);
        header('Location: indexrios.php');
        exit();
    }
}
