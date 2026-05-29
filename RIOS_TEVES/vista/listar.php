<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Listado de Garantías</title>
    <link rel="icon" href="Img/mini_logo.png" type="image/jpeg"> 
    <link rel="stylesheet" href="vista/Css/StylesListar.css">
    <style>

    </style>
</head>
<body>
    <div class="containerlis">
        <h1>Lista de Garantías</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Producto</th>
                    <th>Entidad</th>
                    <th>Descripción</th>
                    <th>Contacto</th>
                    <th>Técnico</th>
                    <th>Fecha</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($garantias as $g): ?>
                <tr>
                    <td><?= htmlspecialchars($g['id']) ?></td>
                    <td><?= htmlspecialchars($g['producto']) ?></td>
                    <td><?= htmlspecialchars($g['entidad']) ?></td>
                    <td><?= htmlspecialchars($g['descripcion']) ?></td>
                    <td><?= htmlspecialchars($g['contacto']) ?></td>
                    <td><?= htmlspecialchars($g['TecCargo']) ?></td>
                    <td><?= htmlspecialchars($g['fecha']) ?></td>
                    <td>
                        <div class="acciones">
                            <a class="btn editar" href="indexrios.php?accion=editar&id=<?= $g['id'] ?>">Editar</a>
                            <a class="btn eliminar" href="indexrios.php?accion=eliminar&id=<?= $g['id'] ?>" onclick="return confirm('¿Seguro que deseas eliminar esta garantía?')">Eliminar</a>
                        </div>
                    </td>
                </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>

    <?php include 'footer.php'; ?>
</body>
</html>
