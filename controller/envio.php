<?php


<?php
$to      = Config::EMAIL_USER;
$subject = 'Contato - Loja ';
$message = 'Email de '.$_GET['nome']. "\r\n" .$_GET['mensagem'];
$dest = $_GET['email'];

$headers = "From: " .$dest;

mail($to, $subject, $message, $headers);
?>

<script>alert('Email enviado com Sucesso!')</script>
<meta http-equiv="refresh" content="0; url=contato">

