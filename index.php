<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Sistema de Gestión de Garantías</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

  <style>
    body {
      background-image: url('imagenes/fondo.jpeg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    .titulo-principal {
      font-weight: 700;
      text-align: center;
      margin-bottom: 30px;
      color: #fff;
      text-shadow: 1px 1px 4px rgba(0,0,0,0.7);
    }

    .subtitulo {
      font-weight: 600;
      text-align: center;
      margin-bottom: 40px;
      color: #fff;
      text-shadow: 1px 1px 3px rgba(0,0,0,0.6);
    }

    .empresa-card {
      background-color: rgba(255, 255, 255, 0.96);
      border: none;
      border-radius: 16px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      height: 100%;
      padding: 20px;
      text-align: center;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .empresa-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 12px 30px rgba(0,0,0,0.3);
    }

    .empresa-card img {
      max-height: 100px;
      object-fit: contain;
      margin-bottom: 15px;
    }

    .empresa-tamano {
      width: 500px;
      height: 300px;
      margin: auto;
    }

    .btn-empresa {
      display: inline-block;
      padding: 10px 20px;
      font-weight: bold;
      border-radius: 8px;
      border: none;
      color: #fff;
      margin-top: 10px;
      transition: background-color 0.3s ease, transform 0.2s ease;
      text-decoration: none;
    }

    .btn_allwiya {
      background-color: rgb(223, 128, 4);
    }

    .btn_allwiya:hover {
      background-color: rgb(255, 166, 0);
      transform: scale(1.05);
    }

    .btn_rios {
      background-color: rgb(47, 107, 124);
    }

    .btn_rios:hover {
      background-color: rgb(16, 76, 92);
      transform: scale(1.05);
    }

    .btn_clic {
      background-color: rgb(0, 68, 255);
    }

    .btn_clic:hover {
      background-color: rgb(5, 53, 187);
      transform: scale(1.05);
    }
  </style>
</head>

<body>
  <div class="container mt-5">
    <div class="row">
      <div class="col-12">
        <h3 class="titulo-principal">SISTEMA DE GESTIÓN DE GARANTÍAS</h3>
        <h5 class="subtitulo">SELECCIONE EMPRESA</h5>
      </div>
    </div>

    <div class="row justify-content-center g-4">
      <!-- ALLWIYA -->
      <div class="col-auto">
        <div class="empresa-card empresa-tamano">
          <img src="imagenes/allwiya.png" alt="ALLWIYA Logo" class="img-fluid mx-auto" />
          <h5 class="card-title mt-3">ALLWIYA S.A.C</h5>
          <p class="text-muted">Ensambaje de Computadoras</p>
          <a href="ALLWIYA/indexall.php" class="btn-empresa btn_allwiya"><i class="fas fa-list"></i> Ver Lista</a>
        </div>
      </div>

      <!-- RIOS TEVES -->
      <div class="col-auto">
        <div class="empresa-card empresa-tamano">
          <img src="imagenes/rios.jpg" alt="RIOS TEVES Logo" class="img-fluid mx-auto" />
          <h5 class="card-title mt-3">RIOS TEVES</h5>
          <p class="text-muted">Gestión de Proyectos</p>
          <a href="RIOS_TEVES/indexrios.php" class="btn-empresa btn_rios"><i class="fas fa-list"></i> Ver Lista</a>
        </div>
      </div>

      <!-- CLIC IT -->
      <div class="col-auto">
        <div class="empresa-card empresa-tamano">
          <img src="imagenes/clic.png" alt="CLIC IT" class="img-fluid mx-auto" />
          <h5 class="card-title mt-3">CLIC IT</h5>
          <p class="text-muted">Servicios Informáticos</p>
          <a href="CLIC_IT/indexclic.php" class="btn-empresa btn_clic"><i class="fas fa-list"></i> Ver Lista</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
