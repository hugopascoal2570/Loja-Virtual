<?php
/* Smarty version 3.1.34-dev-7, created on 2020-01-02 14:40:46
  from 'C:\xampp\htdocs\LojaManual\view\produtos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e0df2dedee7c9_67860797',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6544d2d114bcab87e1be92cccdea6226ad90f686' => 
    array (
      0 => 'C:\\xampp\\htdocs\\LojaManual\\view\\produtos.tpl',
      1 => 1575765669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e0df2dedee7c9_67860797 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="hero-wrap hero-bread" style="background-image: url('view/template/images/bg_6.jpg');">
      <div class="container">
        <?php if ($_smarty_tpl->tpl_vars['PRO_TOTAL']->value < 1) {?>
        <h4 class="alert alert-danger">Ops... Nenhum produto encontrado :(</h4>
        <?php }?>
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-0 bread">Categorias</h1>
            <p class="breadcrumbs">
              <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['CATEGORIAS']->value, 'C');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['C']->value) {
?>
              <span class="mr-2"><a href="<?php echo $_smarty_tpl->tpl_vars['C']->value['cate_link'];?>
"><?php echo $_smarty_tpl->tpl_vars['C']->value['cate_nome'];?>
</a></span>
              <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
              

            </p>
          </div>
        </div>
      </div>
    </div>
    
    <section class="ftco-section bg-light">
      <div class="container-fluid">
        <div class="row">
          <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?> 
          <div class="col-sm col-md-6 col-lg-3 ftco-animate">
            <div class="product">
              
              <a href="<?php echo $_smarty_tpl->tpl_vars['PRO_INFO']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
/<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_slug'];?>
" class="img-prod">
                <img class="img-fluid" src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
">
                <span class="status"><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_status'];?>
</span>
              </a>
              <div class="text py-3 px-3">
                <h3><a href="produto-info "><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
</a></h3>
                <div class="d-flex">
                  <div class="pricing">
                    <p class="price"><strike>De R$: <span class="ms-2 price-dc"></span><span class="price-sale"> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor_ant'];?>
</strike></span></p>
                    <p class="price"><span class="ms-2 price-dc"></span>
                      <span class="price-sale">Por R$:<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</span></p>
                  </div>
                  <div class="rating">
                    <p class="text-right">
                      <span class="ion-ios-star-outline"></span>
                      <span class="ion-ios-star-outline"></span>
                      <span class="ion-ios-star-outline"></span>
                      <span class="ion-ios-star-outline"></span>
                      <span class="ion-ios-star-outline"></span>
                    </p>
                  </div>
                </div>
                <hr>
                <p class="bottom-area d-flex">
             <form name="carrinho" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_COMPRAR']->value;?>
">    
            <input type="hidden" name="pro_id" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
">
            <input type="hidden" name="acao" value="add">
            <button class="btn btn-ligth ">Adicionar ao carrinho</button>
          </form>
                 
                  
                </p>
              </div>
            </div>
          </div>
          <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
          </div>
        </div>
     
<?php echo $_smarty_tpl->tpl_vars['PAGINAS']->value;?>

</section><?php }
}
