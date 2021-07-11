  <h3>Confirmar Pedido</h3>
  <hr>
  <!-- botoes e opções de cima -->
  <section class="row">

    <div class="col-md-12 " align="right">
      <a href="{$PAG_PRODUTOS}" class="btn btn-Light" border-radius="border-radius: 35px" title="">Voltar para o carrinho</a>
    </div>
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
          {foreach from=$PRO item=P}
          <tr>

            <td> <img src="{$P.pro_img}" alt="{$P.pro_nome}"> </td>
            <td>  {$P.pro_nome} </td>
            <td>  {$P.pro_valor} </td>
            <td> {$P.pro_qtd}  </td>
            <td>  {$P.pro_subTotal} </td>
            <td> 
              <form name="carrinho_dell" method="post" action="{$PAG_CARRINHO_ALTERAR}">

                <input type="hidden" name="pro_id" value="{$P.pro_id}">    
                <input type="hidden" name="acao" value="del">    

                <button class="btn btn-primary"><i class="glyphicon glyphicon-minus">X</i></button>
              </form>
            </td>
          </tr>
          {/foreach}
        </table>
      </center>
    </section><!-- fim da listagem itens -->
    <!-- botoes de baixo e valor total -->
    <section class="row" id="total">
      <div class="col-md-4 text-right">
      </div>
      <div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
        <h4>
         Total : R$ {$TOTAL}
       </h4>
     </div>

     <!-- botão de limpar-->
     <div class="col-md-4 ">


      <form name="pedido_finalizar" id="pedido_finalizar " method="post" action="{$PAG_FINALIZAR}">
       <button class="btn btn-primary btn-block " type="submit">Finalizar Pedido </button>
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
<br>