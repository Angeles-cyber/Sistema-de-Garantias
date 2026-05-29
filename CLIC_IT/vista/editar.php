<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Garantía</title>
    <link rel="icon" href="Img/mini_logo.png" type="image/jpeg"> 
    <link rel="stylesheet" href="vista/Css/StylesEditar.css">
    <style>

    </style>
</head>
<body>
    <div class="container">
        <h1>Editar Garantía</h1>
        <form action="indexclic.php?accion=actualizar&id=<?= $garantia['id'] ?>" method="POST">
            <label for="producto">Producto</label>
            <input type="text" id="producto" name="producto" value="<?= htmlspecialchars($garantia['producto']) ?>" required>

            <label for="entidad">Entidad</label>
            <input type="text" id="entidad" name="entidad" value="<?= htmlspecialchars($garantia['entidad']) ?>" required>

            <label for="descripcion">Descripción</label>
            <textarea id="descripcion" name="descripcion" required><?= htmlspecialchars($garantia['descripcion']) ?></textarea>

            <label for="contacto">Contacto</label>
            <input type="text" id="contacto" name="contacto" value="<?= htmlspecialchars($garantia['contacto']) ?>" required>

            <label for="TecCargo">Técnico a Cargo</label>
            <input type="text" id="TecCargo" name="TecCargo" value="<?= htmlspecialchars($garantia['TecCargo']) ?>" required>

            <label for="fecha">Fecha</label>
            <input type="date" id="fecha" name="fecha" value="<?= $garantia['fecha'] ?>" required>

            <button type="submit">Actualizar</button>
            <a href="indexclic.php?accion=listar" class="btn">Cancelar</a>
        </form>
    </div>

    <?php include 'footer.php'; ?>
</body>
</html>
