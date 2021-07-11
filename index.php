<?php 

if(!isset($_SESSION)){
	session_start();
}

if(!isset($_SESSION['pedido'])){
	$_SESSION['pedido'] = md5(uniqid(date('YmHms')));
}

require './lib/autoload.php';


$smarty = new Template();
//echo Rotas::get_Pagina();

//valores para o template
$smarty->assign('NOME', 'Hugo Pascoal');
$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('GET_NOME', Config::SITE_NOME);
$smarty->assign('GET_HOME', Rotas::get_SiteHOME());
$smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());
$smarty->assign('PAG_CONTATO', Rotas::Pag_Contato());
$smarty->assign('PAG_MINHACONTA', Rotas::pag_MinhaConta());
$smarty->assign('PAG_SOBRE', Rotas::pag_Sobre());
$smarty->assign('PAG_BLOG', Rotas::pag_Blog());
$smarty->assign('PAG_PRODUTOS', Rotas::pag_Produtos());
$smarty->assign('PAG_PRODUTOINFO', Rotas::pag_ProdutosInfo());
$smarty->assign('PAG_LOGIN', Rotas::pag_ClienteLogin());
$smarty->assign('TITULO_SITE', Config::SITE_NOME);
$smarty->assign('PAG_LOGOFF', Rotas::pag_Logoff());
$smarty->assign('LOGADO', Login::Logado());


	if(Login::Logado()){
	$smarty->assign('USER', $_SESSION['CLI']['cli_nome']);

}



$smarty->display('index.tpl');
?>