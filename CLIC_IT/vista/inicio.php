<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Bienvenido a CLIC IT</title>
    <link rel="icon" href="Img/mini_logo.png" type="image/jpeg"> 
    <link rel="stylesheet" href="vista/Css/StylesInicio.css">

    <style>

    </style>
</head>
<body class="fondo">
    <div class="container presentacion">
        <h1>Bienvenido al Centro de Garantías <span style="color:#1e90ff;">CLIC IT S.A.C</span></h1>
        <p>
            En <strong>CLIC IT</strong>, nos especializamos en la venta y ensamblaje <strong>personalizado de computadoras</strong>, ofreciendo soluciones tecnológicas a la medida de cada cliente. Ya sea que necesites una máquina para trabajar, estudiar o jugar, cada equipo ha sido <strong>cuidadosamente ensamblado</strong> y probado para garantizar el mejor rendimiento.
        </p>
        <p>
            Si tu equipo presenta algún inconveniente, en este espacio puedes <strong>enviar tu solicitud de garantía</strong>. Estamos comprometidos con tu satisfacción y contamos con un servicio postventa eficiente, listo para ayudarte a resolver cualquier problema relacionado con <em>fallas técnicas</em> o <em>defectos de fábrica</em>.
        </p>
        <p>
            Solo tienes que completar el formulario a continuación y uno de nuestros especialistas se pondrá en contacto contigo a la brevedad.
        </p>

        <div class="acciones-principales">
            <a href="indexclic.php?accion=crear" class="btn crear">+ Crear Garantía</a>
            <a href="indexclic.php?accion=listar" class="btn ver">📋 Ver Garantías</a>
        </div>
            <a href="../index.php" class="btn regresar">Regresar</a>

    </div>

    <?php include 'footer.php'; ?>

    <script>
      document.querySelector('.back-to-top')?.addEventListener('click', function (e) {
        e.preventDefault();
        window.scrollTo({ top: 0, behavior: 'smooth' });
      });
    </script>
</body>
</html>
