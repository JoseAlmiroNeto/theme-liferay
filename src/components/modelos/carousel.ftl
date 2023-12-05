<div class="slick-carousel">
    <#if carousel.getSiblings()?has_content>
        <#list carousel.getSiblings() as cur_carousel>
            <div class="carousel-container h-100 w-100 position-relative">
                <#if (carousel.imgcarousel.getData())?? && carousel.imgcarousel.getData() !="">
                    <img class="carousel-img w-100" alt="${carousel.imgcarousel.getAttribute("alt")}" data-fileentryid="${carousel.imgcarousel.getAttribute("fileEntryId")}" src="${carousel.imgcarousel.getData()}" />
                </#if>
                <div class="carousel-information d-flex flex-column align-items-center align-items-md-start position-absolute text-center text-md-left">
                    <#if (carousel.minText.getData())??>
                        ${carousel.minText.getData()}
                    </#if>
                    <#if (carousel.title.getData())??>
                        <h1 class="carousel-title">
                            ${carousel.title.getData()}
                        </h1>
                    </#if>
                    <#if (carousel.description.getData())??>
                        <p class="carousel-description">
                            ${carousel.description.getData()}
                        </p>
                    </#if>
                    <#if (carousel.button.getData())??>
                        <button class="carousel-button border-0 font-weight-bold">
                            ${carousel.button.getData()}
                        </button>
                    </#if>
                </div>
            </div>
        </#list>
    </#if>
</div>

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script>
$(document).ready(function() {
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