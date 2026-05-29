<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once __DIR__ . '/../vendor/autoload.php';

function enviarCorreo($correoEntidad, $asunto, $mensaje) {
    $mail = new PHPMailer(true);
    try {
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'angeles200704@gmail.com'; // Tu correo remitente SMTP
        $mail->Password = 'ddvi qwor fwse zmdj';     // Tu contraseña de aplicación
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;

        // El correo del cliente como remitente visible
        $mail->setFrom($correoEntidad, 'ATENCION DE GARANTIAS');
        // El correo principal que recibirá los avisos
        $mail->addAddress('angeles200704@gmail.com', 'NUEVA GARANTIA DE ALLWIYA');

        // Copias a otros correos
        $mail->addCC('luis20angeles08@gmail.com', 'Copia 1');
        $mail->addCC('otrocorreo2@ejemplo.com', 'Copia 2');
        // Si quieres copia oculta, usa addBCC
        $mail->addBCC('bellasoria123@gmail.com', 'Copia Oculta');

        $mail->isHTML(true);
        $mail->Subject = $asunto;
        $mail->Body    = $mensaje;

        $mail->send();
        // No mostrar mensajes aquí
        return true;
    } catch (Exception $e) {
        error_log("Error al enviar correo: {$mail->ErrorInfo}");
        return false;
    }
}
