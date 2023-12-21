<div class="banner-container mb-0 card" style="padding-top:${configuration.PreenchimentoPelicula}px; padding-bottom:${configuration.PreenchimentoPelicula}px;">
  <lfr-editable id="ImagemDesktop" type="image" class="img-desktop d-none d-md-block">
    <img src="" class="card-img"/>
  </lfr-editable>
  <lfr-editable id="ImagemMobile" type="image" class="img-mobile d-md-none">
    <img src="" class="card-img"/>
  </lfr-editable>
  
	<div class="card-img-overlay row m-0 flex-column justify-content-center py-4 c-px-md-80">
    <div class="bg-opacity bg-${configuration.backgroundColor.cssClass}" />
		<div class="card-img-overlay-text col-lg-6 col-md-8 pl-lg-6 text-center text-md-left">   
			<lfr-editable class="my-3" id="miniText" type="rich-text">
        <span>
          Mini Texto
        </span>
      </lfr-editable>
      
			<lfr-editable id="title" type="rich-text">
        <span class="banner-title" style="font-size: 58px; font-style: normal; font-weight: 800; line-height: 1">
          Titulo
        </span>
      </lfr-editable>
			
			<lfr-editable id="description" type="rich-text">
        <span class="banner-description" style="font-size: 14px; font-style: normal">
          Descrição
        </span>
      </lfr-editable>
      
			<lfr-editable class="my-3" id="button" type="link" style="font-size: 18px; font-weight: 600;">
        <a href="#" class="btn btn-lg bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}" style="font-size: 18px; font-style: normal; font-weight: 600;">
          Botão
        </a>
      </lfr-editable>
    </div>
  </div>
</div>
 
<style>
.banner-container .card-img{
  height: calc(550px + ${configuration.PreenchimentoPelicula}px);
}
 
.banner-container .card-img:before {
  background-color : var(--${configuration.backgroundColor.cssClass};opacity:0.18;);
}
</style>