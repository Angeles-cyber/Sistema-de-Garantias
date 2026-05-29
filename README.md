# Sistema de Gestión de Garantías

Proyecto PHP simple para gestionar garantías por empresa (ALLWIYA, CLIC_IT, RIOS_TEVES).

**Resumen de la depuración realizada**
- Se eliminaron salidas de depuración (`var_dump($_POST)`) en los controladores:
  - [ALLWIYA/controlador/garantia_controlador.php](ALLWIYA/controlador/garantia_controlador.php)
  - [CLIC_IT/controlador/garantia_controlador.php](CLIC_IT/controlador/garantia_controlador.php)
- Se añadieron scripts para depuración y normalización de datos en `scripts/`.

**Archivos añadidos**
- [scripts/cleanup_db.sql](scripts/cleanup_db.sql) — SQL para backup, normalizar campos, eliminar duplicados y filas vacías.
- [scripts/cleanup.php](scripts/cleanup.php) — Script CLI PHP para inspección (dry-run) y aplicación (`--apply`).
 - [scripts/garantias_schema.sql](scripts/garantias_schema.sql) — Esquema limpio sin datos personales (para crear la base desde cero).
 - [.env.example](.env.example) — plantilla de variables de entorno para la conexión a BD.

Antes de ejecutar cualquier script: crear un backup completo de la base de datos.

Instrucciones rápidas
1. Copiar `.env.example` a `.env` y ajustar valores de conexión. `database.php` ahora lee variables de entorno automáticamente: [database.php](database.php)
2. Hacer backup de la base de datos (ejemplo con mysqldump):

```bash
mysqldump -u root -p garantias_db > garantias_db_backup.sql
```

3. Inspeccionar (dry-run):

```bash
php scripts/cleanup.php
```

4. Si los resultados son correctos, aplicar cambios:

```bash
php scripts/cleanup.php --apply
```

- Notas y recomendaciones antes de subir a GitHub
- No subir credenciales: use `.env` (no subir `.env` al repo). `database.php` ya usa variables de entorno.
- Añadir `vendor/` y dumps a `.gitignore` (ya incluido en el repo).
- Revisar `ALLWIYA/vista/crear.php` y `ALLWIYA/indexall.php`: existe manejo duplicado del envío de formularios (posible mejora: centralizar en controlador).
- Ejecutar pruebas locales y validar que el envío de correos funciona (si usa `phpmailer` asegúrese de no incluir credenciales en código).

Pasos sugeridos para subir a GitHub
1. Crear rama: `git checkout -b cleanup-readme`
2. Añadir cambios y commitear:

```bash
git add .
git commit -m "Limpieza: remover debug, añadir scripts de depuración y README"
git push origin cleanup-readme
```

Si quieres, puedo:
- Ejecutar más revisiones de código (validaciones en formularios, CSRF, sanitización)
- Añadir `.gitignore` y un `composer.json` mínimo si falta
- Ejecutar la depuración y generar un export limpio (sin datos) listo para subir
- Preparar un PR template o instrucciones de despliegue
