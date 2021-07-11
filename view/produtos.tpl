<div class="hero-wrap hero-bread" style="background-image: url('view/template/images/bg_6.jpg');">
      <div class="container">
        {if $PRO_TOTAL <1}
        <h4 class="alert alert-danger">Ops... Nenhum produto encontrado :(</h4>
        {/if}
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-0 bread">Categorias</h1>
            <p class="breadcrumbs">
              {foreach from=$CATEGORIAS item=C}
              <span class="mr-2"><a href="{$C.cate_link}">{$C.cate_nome}</a></span>
              {/foreach}
              

            </p>
          </div>
        </div>
      </div>
    </div>
    
    <section class="ftco-section bg-light">
      <div class="container-fluid">
        <div class="row">
          {foreach from=$PRO item=P} 
          <div class="col-sm col-md-6 col-lg-3 ftco-animate">
            <div class="product">
              
              <a href="{$PRO_INFO}/{$P.pro_id}/{$P.pro_slug}" class="img-prod">
                <img class="img-fluid" src="{$P.pro_img}">
                <span class="status">{$P.pro_status}</span>
              </a>
              <div class="text py-3 px-3">
                <h3><a href="produto-info ">{$P.pro_nome}</a></h3>
                <div class="d-flex">
                  <div class="pricing">
                    <p class="price"><strike>De R$: <span class="ms-2 price-dc"></span><span class="price-sale"> {$P.pro_valor_ant}</strike></span></p>
                    <p class="price"><span class="ms-2 price-dc"></span>
                      <span class="price-sale">Por R$:{$P.pro_valor}</span></p>
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
             <form name="carrinho" method="post" action="{$PAG_COMPRAR}">    
            <input type="hidden" name="pro_id" value="{$P.pro_id}">
            <input type="hidden" name="acao" value="add">
            <button class="btn btn-ligth ">Adicionar ao carrinho</button>
          </form>
                 
                  
                </p>
              </div>
            </div>
          </div>
          {/foreach}
          </div>
        </div>
     
{$PAGINAS}
</section>