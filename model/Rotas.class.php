 <?php
 
 Class Rotas{

 	public static $pag;
 	private statIc $pasta_controller = 'controller';
 	private static $pasta_view = 'view';

 	static function get_SiteHOME(){
 		return Config::SITE_URL . '/'. Config::SITE_PASTA;
 	}

 	static function get_SiteRAIZ(){
 		return $_SERVER['DOCUMENT_ROOT'] . '/'. Config::SITE_PASTA;
 	}

 	static function get_SiteTEMA(){
 		return  self::get_SiteHOME(). '/'. self::$pasta_view;
 	} 

 	static function pag_Carrinho(){
 		return  self::get_SiteHOME(). '/carrinho';
 	}
 	static function pag_Logoff(){
 		return  self::get_SiteHOME(). '/logoff';
 	}
 	static function pag_CarrinhoAlterar(){
 		return  self::get_SiteHOME(). '/carrinho_alterar';
 	}
 	static function pag_Contato(){
 		return  self::get_SiteHOME(). '/contato';
 	}
 	static function pag_MinhaConta(){
 		return  self::get_SiteHOME(). '/minhaconta';
 	}

 	static function pag_ClienteConta(){
 		return  self::get_SiteHOME(). '/minhaconta';
 	}
 	static function pag_ClienteLogin(){
 		return  self::get_SiteHOME(). '/login';
 	}

 	static function pag_PedidoConfirmar(){
 		return  self::get_SiteHOME(). '/pedido_confirmar';
 	}
	static function pag_PedidoFinalizar(){
 		return  self::get_SiteHOME(). '/pedido_finalizar';
 	}
 	static function pag_Sobre(){
 		return  self::get_SiteHOME(). '/sobre';
 	}
 	static function pag_Blog(){
 		return  self::get_SiteHOME(). '/blog';
 	}
 	static function pag_Produtos(){
 		return  self::get_SiteHOME(). '/produtos';
 	}

 	static function pag_ProdutosInfo(){
 		return  self::get_SiteHOME(). '/produtos_info';
 	}
	static function get_ImagePasta(){
		return 'media/images/';
	}

	static function get_ImageURL(){
		return self::get_SiteHOME() .'/' .self::get_ImagePasta();

	}

	static function ImageLink($img, $largura, $altura){
		$imagem = self::get_ImageURL() ."thumb.php?src={$img}&w={$largura}&h={$altura}&zc=1";

		return $imagem;

	}

	static function get_Pasta_Controller(){
		return self::$pasta_controller;
	}


	// método para redirecionar 
	static function Redirecionar($tempo, $pagina){
		$url = '<meta http-equiv="refresh" content="'.$tempo.'; url='. $pagina .'">';
		echo $url;
	}



 	static function get_Pagina(){
 		if(isset($_GET['pag'])){

 			$pagina = $_GET['pag'];

 			self::$pag = explode('/', $pagina ); 

 			$pagina = 'controller/' .self::$pag[0] . '.php';

 			if(file_exists($pagina)){
 				include $pagina;
 			}else{
 				include 'erro.php';
 			}
 		}else{
 			include 'home.php';
 		}
 	}
 }

 ?>
