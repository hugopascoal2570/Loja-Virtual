<?php 

Class Config{


// informações básicas do site 
const SITE_URL="";
const SITE_PASTA="LojaManual";
const SITE_NOME="Loja Virtual";
const BD_LIMIT_POR_PAG=12;
// muda de acordo com cada hospedagem 
const SITE_EMAIL_ADM= "hugo159hb@gmail.com"; 

// informações do banco de dados 
const BD_HOST ="localhost";
const BD_USER = "root";
const BD_SENHA="";
const BD_BANCO="loja";
const BD_PREFIX="ht_";
// informações para o phpmailer 
// configurado para o gmail, depois mudar o smtp

const EMAIL_HOST ="smtp.gmail.com";
const EMAIL_USER ="nome do email";
const EMAIL_NOME ="Contato Loja Virtual";
const EMAIL_SENHA ="SenhaDoEmail";
const EMAIL_PORTA = 587; // mudar se mudar de provedor de email
const EMAIL_SMTPAUTH = true; // mudar se mudar de provedor de email
const EMAIL_SMTPSECURE = "tls"; // mudar se mudar de provedor de email
const EMAIL_COPIA ="nome do email";



}
?> 