<?php
/* Smarty version 3.1.34-dev-7, created on 2021-07-11 21:29:08
  from 'C:\xampp\htdocs\LojaManual\view\carrinho.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_60eb4684ad2c06_97068339',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c98d8b5c05ae7a718bd18b005194b5c28c947114' => 
    array (
      0 => 'C:\\xampp\\htdocs\\LojaManual\\view\\carrinho.tpl',
      1 => 1575765669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60eb4684ad2c06_97068339 (Smarty_Internal_Template $_smarty_tpl) {
?>  <h3>Meu Carrinho</h3>
  <hr>
  <!-- botoes e opções de cima -->
  <section class="row">

    <div class="col-md-4">

    </div>
    <div class="col-md-4 text-right">

    </div>
    
  </section>
  <br>

  <!--  table listagem de itens -->
  <section class="row ">

    <center>
      <table class="table table-bordered" style="width: 95%">

          <tr class="text-center">
            <td></td> 
            <td>Produto</td> 
            <td>Valor R$</td> 
            <td>Quantidade</td> 
            <td>Sub Total R$</td> 
            <td>Remover Item</td>    
          </tr>
          <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>
          <tr>

            <td> <img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
"> </td>
            <td>  <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
 </td>
            <td>  <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
 </td>
            <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_qtd'];?>
  </td>
            <td>  <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_subTotal'];?>
 </td>
            <td> 
              <form name="carrinho_dell" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO_ALTERAR']->value;?>
">

                <input type="hidden" name="pro_id" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
">    
                <input type="hidden" name="acao" value="del">    

                <button class="btn btn-primary"><i class="glyphicon glyphicon-minus">X</i></button>
              </form>
            </td>
          </tr>
          <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </table>
      </center>
    </section><!-- fim da listagem itens -->
    <!-- botoes de baixo e valor total -->
    <section class="row" id="total">
      <div class="col-md-4 text-right">
      </div>
      <div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
        <h4>
         Total : R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>

       </h4>
     </div>

     <!-- botão de limpar-->
     <div class="col-md-4 ">

      <form name="limpar" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO_ALTERAR']->value;?>
">
        <input type="hidden" name="acao" value="limpar">
        <input type="hidden" name="pro_id" value="1">

        <button class="btn cta cta-colored btn-block"> Limpar Tudo</button>
        <br>

      </form>
      <form name="pedido_confirmar" id="pedido_confirmar" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_CONFIRMAR']->value;?>
">
       <button class="btn btn-primary btn-block " type="submit"> Confirmar Pedido </button>
     </form>

   </div>

   <!-- botão finalzar -->

 </section>
 <br>
 <hr>
</form>  
</div>         
</section>
<br>
<br>
<br>
<br><?php }
}
