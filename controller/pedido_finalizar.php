<?php

if(!Login::Logado()){
	Login::AcessoNegado();
	Rotas::Redirecionar(2,Rotas::pag_ClienteLogin());
}else{
	
if(isset($_SESSION['PRO'])) {



	$smarty = new Template();

	$carrinho = new Carrinho();

	$smarty->assign('PRO', $carrinho->GetCarrinho());
	$smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));
	$smarty->assign('PAG_PRODUTOS', Rotas::pag_Produtos());
	$smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());
	$smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());
	$smarty->assign('PAG_CONFIRMAR', Rotas::pag_PedidoConfirmar());
	$smarty->assign('PAG_FINALIZAR', Rotas::pag_PedidoFinalizar());

$pedido = new Pedidos();

$cliente = 1;
$cod= $_SESSION['pedido'];
$ref= '0100101ref';


if($pedido->PedidoGravar($cliente, $cod, $ref)){
$pedido->LimparSessoes();
}



	
	$smarty->display('pedido_finalizar.tpl');

}else{
	echo '<h4 class="alert alert-danger"> Não possui produtos no carrinho! </h4>';
	Rotas::Redirecionar(3, Rotas::pag_Produtos());
}

/*
echo '<pre>';
var_dump($carrinho->GetCarrinho());
echo '</pre>';
*/
}




 ?>