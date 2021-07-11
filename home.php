
<?php 

$smarty = new Template();


$smarty->assign('BANNER', Rotas::ImageLink('banner.jpg', 1110,450));



$smarty->display('home.tpl');
include_once Rotas::get_Pasta_Controller().'/produtos.php';
 ?>