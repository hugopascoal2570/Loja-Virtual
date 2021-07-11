<?php
/* Smarty version 3.1.34-dev-7, created on 2020-01-08 17:53:08
  from 'C:\xampp\htdocs\LojaManual\view\produtos_info.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e1608f46639a4_84148877',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '92a398c9f768252e9c88c811fbb9237bb9238d67' => 
    array (
      0 => 'C:\\xampp\\htdocs\\LojaManual\\view\\produtos_info.tpl',
      1 => 1575765669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e1608f46639a4_84148877 (Smarty_Internal_Template $_smarty_tpl) {
?><section class="ftco-section bg-light">
	<div class="container">
		<div class="row">
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?> 
			<div class="col-lg-6 mb-5 ftco-animate">
				
					<div class="zoom">
					<img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img_g'];?>
" class="img-fluid" alt="Colorlib Template" width="100%">
					</div>
				</div>
				<div class="col-lg-4 product-details pl-md-5 ftco-animate">
					<h3><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
</h3>
					<p class="price"><span>R$ <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</span></p>
					<p><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_desc'];?>
</p>
					<div class="col-md-2">Ref:<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_ref'];?>
</div>
					<div class="row mt-4">

						<div class="col-md-6">
							<div class="form-group d-flex">
								<div class="select-wrap">Selecione o tamanho
									<div class="icon"><span class="ion-ios-arrow-down"></span></div>
									<select name="" id="" class="form-control">

										<option value="">Pequeno</option>
										<option value="">Médio</option>
										<option value="">Grande</option>
										<option value="">Extra Grande</option>
									</select>
								</div>
							</div>
						</div>
						<div class="w-100"></div>
						<div class="input-group col-md-12 d-flex mb-3">
						<!-- Aqui fica a parte de remover produtos--> 
							<span class="input-group-btn mr-2">
								<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
									<i class="ion-ios-remove"></i>
								</button>
							</span>
						<!-- Aqui fica a parte de digitar quantos produtos quer--> 
							<input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
						<!-- Aqui fica a parte de adicionar produtos--> 
							<span class="input-group-btn ml-2">
								<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
									<i class="ion-ios-add"></i>
								</button>
							</span>
						</div>
					</div>
					<form name="limpar" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO_ALTERAR']->value;?>
">
						<div class="form-group">
							<input type="hidden" name="acao" value="limpar">
							<input type="hidden" name="pro_id" value="1">
						</div>
					</form>
					<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?> 
					<form name="carrinho" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_COMPRAR']->value;?>
" >
						

						<input type="hidden" name="pro_id" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
">
						<input type="hidden" name="acao" value="add">
						<button  class="btn btn-success col-md-6">Comprar</button>
					</form>

					
				</div>
				
			</div>
			<!-- -->
			
			<div class="row">
				
				<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['IMAGES']->value, 'I');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['I']->value) {
?>
				<div class="zoom">
				&nbsp;&nbsp;&nbsp;<img src="<?php echo $_smarty_tpl->tpl_vars['I']->value['img_nome'];?>
" alt="" class="thumbnail">
				</div>
				<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

			</div>
		</div>
	</section><?php }
}
