<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

<div class="slick-carousel">
    <#if carousel.getSiblings()?has_content>
        <#list carousel.getSiblings() as cur_carousel>
            <#if (carousel.imgcarousel.getData())?? && carousel.imgcarousel.getData() !="">
                <div class="w-100 h-100">
                    <img alt="${carousel.imgcarousel.getAttribute("alt")}" data-fileentryid="${carousel.imgcarousel.getAttribute("fileEntryId")}" src="${carousel.imgcarousel.getData()}" />
                </div>
            </#if>
        </#list>
    </#if>
</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>