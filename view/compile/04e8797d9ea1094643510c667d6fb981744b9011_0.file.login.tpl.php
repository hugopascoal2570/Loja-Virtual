<?php
/* Smarty version 3.1.34-dev-7, created on 2020-01-02 14:40:50
  from 'C:\xampp\htdocs\LojaManual\view\login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e0df2e2680ed1_71890153',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '04e8797d9ea1094643510c667d6fb981744b9011' => 
    array (
      0 => 'C:\\xampp\\htdocs\\LojaManual\\view\\login.tpl',
      1 => 1576519196,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e0df2e2680ed1_71890153 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['LOGADO']->value == TRUE) {?>



<?php } else { ?>


<!DOCTYPE html>
<html>
<head>
<?php echo '<script'; ?>
 src="https://use.fontawesome.com/9b2ce70fa3.js"><?php echo '</script'; ?>
>
</head>
<body>

<section class="row" id="fazerlogin">
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Login Form -->
    <form name="cliente_login" method="POST" action="">
      <input type="email"  class="fadeIn third " name="txt_email" value="" placeholder="Digite seu email" required autocomplete="off"> 
      <input type="password"  class="fadeIn th " name="txt_senha" value="" placeholder="Digite sua senha" required>
      <button class="fadeIn fourth"></i> Entrar </button>
    

    <!-- Remind Passowrd -->
    <div id="formFooter">
     <a class="underlineHover" href="#"><h6>Esqueceu a senha?</h6></a>&nbsp &nbsp &nbsp &nbsp &nbsp
     <a class="underlineHover" href="#"><h6>Cadastrar-se</h6></a>
   </div>
   </form>
 </div>
</div>
</section>

<style>   
  /* BASIC */

  html {
    background-color: #ffffff;
  }

  body {
    font-family: "Poppins", sans-serif;
    height: 100vh;
  }

  a {
    color: #f1b8c4; /* rosa */
    display:inline-block;
    text-decoration: none;
    font-weight: 400;
  }

  h2 {
    text-align: center;
    font-size: 16px;
    font-weight: 600;
    text-transform: uppercase;
    display:inline-block;
    margin: 40px 8px 10px 8px; 
    color: #cccccc; /* cinza */
  }



  /* STRUCTURE */

  .wrapper {
    display: flex;
    align-items: center;
    flex-direction: column; 
    justify-content: center;
    width: 100%;
    min-height: 100%;
    padding: 20px;
  }

  #formContent {
    -webkit-border-radius: 10px 10px 10px 10px;
    border-radius: 10px 10px 10px 10px;
    background: #fff; /* cinza */
    padding: 30px;
    width: 90%;
    max-width: 450px;
    position: relative;
    padding: 0px;
    -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);/* cinza  escuro*/
    box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);/* cinza  escuro*/
    text-align: center;
  }

  #formFooter {
    background-color: #f6f6f6;/* cinza  */
    border-top: 1px solid #F1B8C4;/* rosa*/
    padding: 25px;
    text-align: center;
    -webkit-border-radius: 0 0 10px 10px;
    border-radius: 0 0 10px 10px;
  }



  /* TABS */

  h2.inactive {
    color: #F1B8C4;/* rosa*/
  }

  h2.active {
    color: #0d0d0d; /* preto*/
    border-bottom: 2px solid #F1B8C4;/* rosa*/
  }



  /* FORM TYPOGRAPHY*/

  button{
    background-color: #F1B8C4;/* rosa*/
    border: none;
    color: white;
    padding: 15px 80px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    text-transform: uppercase;
    font-size: 13px;
    -webkit-box-shadow: 0 10px 30px 0 rgba(241,184,196);/* rosa*/
    box-shadow: 0 10px 30px 0 rgba(240,240,240);/*cinza*/
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
    margin: 5px 20px 40px 20px;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -ms-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
  }

  input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
    background-color: #f1b8c4;/* rosa*/
  }

  input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
    -moz-transform: scale(0.95);
    -webkit-transform: scale(0.95);
    -o-transform: scale(0.95);
    -ms-transform: scale(0.95);
    transform: scale(0.95);
  }

  input[type=text] {
    background-color: #f6f6f6;/* cinza*/
    border: none;
    color: #0d0d0d;/* preto*/
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;/* cinza*/
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
  }
  input[type=email] {
    background-color: #f6f6f6;/* cinza*/
    border: none;
    color: #0d0d0d;/* preto*/
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;/* cinza*/
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
  }
  input[type=password] {
    background-color: #f6f6f6;/* cinza*/
    border: none;
    color: #0d0d0d;/* preto*/
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;/* cinza*/
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
  }


  input[type=text]:focus {
    background-color: #fff;/* branco*/
    border-bottom: 2px solid #f1b8c4;/* rosa*/
  }

  input[type=text]:placeholder {
    color: #cccccc;
  }

  /* ANIMATIONS */

  /* Simple CSS3 Fade-in-down Animation */
  .fadeInDown {
    -webkit-animation-name: fadeInDown;
    animation-name: fadeInDown;
    -webkit-animation-duration: 1s;
    animation-duration: 1s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
  }

  @-webkit-keyframes fadeInDown {
    0% {
      opacity: 0;
      -webkit-transform: translate3d(0, -100%, 0);
      transform: translate3d(0, -100%, 0);
    }
    100% {
      opacity: 1;
      -webkit-transform: none;
      transform: none;
    }
  }

  @keyframes fadeInDown {
    0% {
      opacity: 0;
      -webkit-transform: translate3d(0, -100%, 0);
      transform: translate3d(0, -100%, 0);
    }
    100% {
      opacity: 1;
      -webkit-transform: none;
      transform: none;
    }
  }

  /* Simple CSS3 Fade-in Animation */
  @-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
  @-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
  @keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

  .fadeIn {
    opacity:0;
    -webkit-animation:fadeIn ease-in 1;
    -moz-animation:fadeIn ease-in 1;
    animation:fadeIn ease-in 1;

    -webkit-animation-fill-mode:forwards;
    -moz-animation-fill-mode:forwards;
    animation-fill-mode:forwards;

    -webkit-animation-duration:1s;
    -moz-animation-duration:1s;
    animation-duration:1s;
  }

  .fadeIn.first {
    -webkit-animation-delay: 0.4s;
    -moz-animation-delay: 0.4s;
    animation-delay: 0.4s;
  }

  .fadeIn.second {
    -webkit-animation-delay: 0.6s;
    -moz-animation-delay: 0.6s;
    animation-delay: 0.6s;
  }

  .fadeIn.third {
    -webkit-animation-delay: 0.8s;
    -moz-animation-delay: 0.8s;
    animation-delay: 0.8s;
  }

  .fadeIn.fourth {
    -webkit-animation-delay: 1s;
    -moz-animation-delay: 1s;
    animation-delay: 1s;
  }

  /* Simple CSS3 Fade-in Animation */
  .underlineHover:after {
    display: block;
    left: 0;
    bottom: -10px;
    width: 0;
    height: 2px;
    background-color: #F1B8C4;
    content: "";
    transition: width 0.2s;
  }

  .underlineHover:hover {
    color: #0d0d0d;
  }

  .underlineHover:hover:after{
    width: 100%;
  }



  /* OTHERS */

  *:focus {
    outline: none;
  } 

  #icon {
    width:60%;
  }

</style>

<?php }?>

</body>
</html><?php }
}
