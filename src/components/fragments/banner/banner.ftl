<div class="slick-carousel mx-auto">
	[#list 1..configuration.numbersCarousel as index]
  <div class="card-item overflow-hidden position-relative w-100" id="${index}">
    <lfr-editable id="id-img-web-${index}" type="image">
      <img class="carousel-img w-100" alt="imagem-web" src="" />
    </lfr-editable>
		<div class="carousel-information d-flex flex-column align-items-center align-items-md-start position-absolute text-center text-md-left">
      <lfr-editable id="id-text-${index}" type="rich-text">
        <span>
          SUMMER 2023
        </span>
      </lfr-editable>
      <lfr-editable id="id-title-${index}" type="rich-text">
        <span style="font-size: 58px !important; font-weight: bold !important; display: inline-block !important; width: 500px !important; line-height: 1.2 !important;">
          Titulo
        </span>
      </lfr-editable>
      <lfr-editable id="id-description-${index}" type="rich-text">
        <span style="font-size: 14px !important; display: inline-block !important; width: 304px !important; word-wrap: break-word !important">
          Descrição
        </span>
      </lfr-editable>
      <button class="carousel-button border-0 font-weight-bold">
        <lfr-editable id="id-button-${index}" type="rich-text">BOTÃO</lfr-editable>
      </button>
    </div>
  </div>
  [/#list]
</div>


<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script>
$(document).ready(function () {
  $(".slick-carousel").slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    autoplay: true,
  });
});
</script>