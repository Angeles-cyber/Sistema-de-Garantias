<?php
// Mostrar errores en desarrollo
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Incluir controlador
require_once __DIR__ . '/controlador/garantia_controlador.php';

// Instanciar controlador
$controller = new GarantiaController();

// Obtener acción desde la URL
$action = isset($_GET['accion']) ? $_GET['accion'] : 'inicio';
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

// Ejecutar acción
switch ($action) {
    case 'inicio':
        include __DIR__ . '/vista/inicio.php';
        break;
    case 'listar':
        $controller->listar();
        break;
    case 'crear':
        $controller->crear();
        break;
    case 'guardar':
        $controller->guardar();
        break;
    case 'editar':
        if ($id !== null) {
            $controller->editar($id);
        } else {
            echo "ID no válido para editar.";
        }
        break;
    case 'actualizar':
        if ($id !== null) {
            $controller->actualizar($id);
        } else {
            echo "ID no válido para actualizar.";
        }
        break;
    case 'eliminar':
        if ($id !== null) {
            $controller->eliminar($id);
        } else {
            echo "ID no válido para eliminar.";
        }
        break;
    default:
        echo "Acción no reconocida.";
        break;
}
?>
