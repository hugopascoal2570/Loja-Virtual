<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <title>{$TITULO_SITE}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="{$GET_TEMA}/template/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/animate.css">
    
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/magnific-popup.css">

    <link rel="stylesheet" href="{$GET_TEMA}/template/css/aos.css">

    <link rel="stylesheet" href="{$GET_TEMA}/template/css/ionicons.min.css">

    <link rel="stylesheet" href="{$GET_TEMA}/template/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/flaticon.css">
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/icomoon.css">
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/style.css">
    <link rel="stylesheet" href="{$GET_TEMA}/template/css/zoom.css"> 
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="{$GET_HOME}">Loja</a>
        
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
       
          </ul>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="{$GET_HOME}" class="nav-link">Home</a></li>
	          <li class="nav-item active"><a href="{$PAG_PRODUTOS}" class="nav-link">Loja</a></li>
	          <li class="nav-item"><a href="{$PAG_MINHACONTA}" class="nav-link">Minha Conta</a></li>
	          <li class="nav-item"><a href="{$PAG_SOBRE}" class="nav-link">Sobre</a></li>
	          <li class="nav-item"><a href="{$PAG_BLOG}" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="{$PAG_CONTATO}" class="nav-link">Contato</a></li>
            <li class="nav-item"><a href="{$PAG_LOGIN}" class="nav-link">Login</a></li>
	          <li class="nav-item cta cta-colored"><a href="{$PAG_CARRINHO}" class="nav-link">Carrinho<span class="icon-shopping_cart"></span></a></li>


	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

		<div class="hero-wrap js-fullheight img img-fluid" style="background-image: url('{$GET_TEMA}/template/images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
        	<h3 class="v">Nome da loja</h3>
        	<h3 class="vr">Since - ano da loja</h3>
          <div class="col-md-11 ftco-animate text-center">
            <h1>Nome da loja</h1>
            <h2><span>Slogan da loja</span></h2>
          </div>
          <div class="mouse">
						<a href="#" class="mouse-icon">
							<div class="mouse-wheel"><span class="ion-ios-arrow-down"></span></div>
						</a>
					</div>
        </div>
      </div>
    </div>

    <div class="goto-here"></div>
    
    <section class="ftco-section ftco-product">
    	<div class="container">
    		{php} 
Rotas::get_Pagina();

    	{/php}
    <footer class="ftco-footer bg-light ftco-section">
      <div class="container">
        <center><h4>{$TITULO_SITE}</h4></center></br>
        <div class="row mb-4">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Modist</h2>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>

              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5 ">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="{$GET_HOME}" class="py-2 d-block">Inicio</a></li>
                <li><a href="{$PAG_PRODUTOS}" class="py-2 d-block">Loja </a></li>
                <li><a href="{$PAG_MINHACONTA}" class="py-2 d-block">Minha Conta</a></li>
                <li><a href="{$PAG_SOBRE}" class="py-2 d-block">Sobre</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Ajuda  </h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Informações</a></li>
	                <li><a href="#" class="py-2 d-block">Retornos &amp; Trocas</a></li>
	                <li><a href="#" class="py-2 d-block">Termos &amp; Condições</a></li>
	                <li><a href="#" class="py-2 d-block">Politica de privacidade</a></li>
	              </ul>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">Dúvidas</a></li>
	                <li><a href="#" class="py-2 d-block">Contato</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Alguma pergunta?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">Local da loja, cidade - Estado - Pais</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">telefone da empresa</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">email da empresa</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="{$GET_TEMA}/template/js/jquery.min.js"></script>
  <script src="{$GET_TEMA}/template/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="{$GET_TEMA}/template/js/popper.min.js"></script>
  <script src="{$GET_TEMA}/template/js/bootstrap.min.js"></script>
  <script src="{$GET_TEMA}/template/js/jquery.easing.1.3.js"></script>
  <script src="{$GET_TEMA}/template/js/jquery.waypoints.min.js"></script>
  <script src="{$GET_TEMA}/template/js/jquery.stellar.min.js"></script>
  <script src="{$GET_TEMA}/template/js/owl.carousel.min.js"></script>
  <script src="{$GET_TEMA}/template/js/jquery.magnific-popup.min.js"></script>
  <script src="{$GET_TEMA}/template/js/aos.js"></script>
  <script src="{$GET_TEMA}/template/js/jquery.animateNumber.min.js"></script>
  <script src="{$GET_TEMA}/template/js/bootstrap-datepicker.js"></script>
  <script src="{$GET_TEMA}/template/js/scrollax.min.js"></script>
  <script src="{$GET_TEMA}/template/js/main.js"></script>
    
  </body>
</html>