<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Crear Garantía</title>
    <link rel="icon" href="Img/mini_logo.jpg" type="image/jpeg"> 
    <link rel="stylesheet" href="vista/Css/StylesCrear.css">
</head>
<body>
    <div class="containercre">
        <h1>Registrar Nueva Garantía</h1>
        <form action="indexall.php?accion=guardar" method="POST">
            <label for="producto">Producto</label>
            <input type="text" id="producto" name="producto" required>

            <label for="entidad">Entidad</label>
            <input type="text" id="entidad" name="entidad" required>

            <label for="correo_entidad">Correo de la Entidad</label>
            <input type="email" id="correo_entidad" name="correo_entidad" required>

            <label for="descripcion">Descripción</label>
            <textarea id="descripcion" name="descripcion" required></textarea>

            <label for="contacto">Contacto</label>
            <input type="text" id="contacto" name="contacto" required>

            <label for="TecCargo">Técnico a Cargo</label>
            <input type="text" id="TecCargo" name="TecCargo" required>

            <label for="fecha">Fecha</label>
            <input type="date" id="fecha" name="fecha" required>

            <button type="submit">Guardar</button>
            <a href="indexall.php" class="btn">Cancelar</a>
        </form>
    </div>

    <?php
    if ($_GET['accion'] === 'guardar') {
        $producto = $_POST['producto'];
        $entidad = $_POST['entidad'];
        $correo_entidad = $_POST['correo_entidad'];
        $descripcion = $_POST['descripcion'];
        $contacto = $_POST['contacto'];
        $TecCargo = $_POST['TecCargo'];
        $fecha = $_POST['fecha'];

        require_once 'modelo/garantia.php';
        $garantia = new Garantia();
        $garantia->guardar($producto, $entidad, $descripcion, $contacto, $TecCargo, $fecha, $correo_entidad);

        // Redirige de nuevo al formulario de crear
        header('Location: vista/crear.php');
        exit;
    }
    ?>
</body>
</html>
