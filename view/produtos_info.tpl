<section class="ftco-section bg-light">
	<div class="container">
		<div class="row">
			{foreach from=$PRO item=P} 
			<div class="col-lg-6 mb-5 ftco-animate">
				
					<div class="zoom">
					<img src="{$P.pro_img_g}" class="img-fluid" alt="Colorlib Template" width="100%">
					</div>
				</div>
				<div class="col-lg-4 product-details pl-md-5 ftco-animate">
					<h3>{$P.pro_nome}</h3>
					<p class="price"><span>R$ {$P.pro_valor}</span></p>
					<p>{$P.pro_desc}</p>
					<div class="col-md-2">Ref:{$P.pro_ref}</div>
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
					<form name="limpar" method="post" action="{$PAG_CARRINHO_ALTERAR}">
						<div class="form-group">
							<input type="hidden" name="acao" value="limpar">
							<input type="hidden" name="pro_id" value="1">
						</div>
					</form>
					{/foreach} 
					<form name="carrinho" method="post" action="{$PAG_COMPRAR}" >
						

						<input type="hidden" name="pro_id" value="{$P.pro_id}">
						<input type="hidden" name="acao" value="add">
						<button  class="btn btn-success col-md-6">Comprar</button>
					</form>

					
				</div>
				
			</div>
			<!-- -->
			{*  listagem de imagens extras  *}

			<div class="row">
				
				{foreach from=$IMAGES item=I}
				<div class="zoom">
				&nbsp;&nbsp;&nbsp;<img src="{$I.img_nome}" alt="" class="thumbnail">
				</div>
				{/foreach}

			</div>
		</div>
	</section>