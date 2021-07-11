<?php 


if(isset($_SESSION['PRO'])){


	$smarty = new Template();

	$carrinho = new Carrinho();

	$smarty->assign('PRO',$carrinho->GetCarrinho());
	$smarty->assign('TOTAL',Sistema::MoedaBR($carrinho->GetTotal()));
	$smarty->assign('PAG_CARRINHO_ALTERAR',Rotas::pag_CarrinhoAlterar());
	$smarty->assign('PAG_CONFIRMAR',Rotas::pag_PedidoConfirmar());
	
	$smarty->display('carrinho.tpl');

}else{
	echo '<h5 class= alert alert-danger>Não possui produtos no carrinho</h5>';
	Rotas::Redirecionar(2, Rotas::pag_Produtos());
}


?>