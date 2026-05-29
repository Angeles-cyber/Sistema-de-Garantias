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
        $mail->Username = 'angeles200704@gmail.com';
        $mail->Password = 'ddvi qwor fwse zmdj';
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;

        $mail->setFrom($correoEntidad, 'ATENCION DE GARANTIAS');
        $mail->addAddress('angeles200704@gmail.com', 'NUEVA GARANTIA DE ALLWIYA');

        $mail->addCC('luis20angeles08@gmail.com', 'Copia 1');
        $mail->addCC('otrocorreo2@ejemplo.com', 'Copia 2');
        $mail->addBCC('pablo.reynoso.2001@gmail.com', 'Copia Oculta');

        $mail->isHTML(true);
        $mail->Subject = $asunto;
        $mail->Body    = $mensaje;

        $mail->send();
        return true;
    } catch (Exception $e) {
        error_log("Error al enviar correo: {$mail->ErrorInfo}");
        return false;
    }
}