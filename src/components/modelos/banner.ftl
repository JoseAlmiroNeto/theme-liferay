<div class="banner-container w-100 position-relative">
    <#if (imgBannerWeb.getData())?? && imgBannerWeb.getData() !="">
        <img class="banner-img d-none d-md-block w-100" alt="${imgBannerWeb.getAttribute("alt")}" data-fileentryid="${imgBannerWeb.getAttribute("fileEntryId")}" src="${imgBannerWeb.getData()}" />
    </#if>
    <#if (imgBannerMobile.getData())?? && imgBannerMobile.getData() !="">
        <img class="banner-img d-md-none w-100" alt="${imgBannerMobile.getAttribute("alt")}" data-fileentryid="${imgBannerMobile.getAttribute("fileEntryId")}" src="${imgBannerMobile.getData()}" />
    </#if>
    <div class="banner-information w-100 d-flex flex-column align-items-center align-items-md-start position-absolute text-center text-md-left">
        <p>SUMMER 2023</p>
        <h1 class="banner-title font-weight-bold">
            <#if (titulo.getData())??>
                ${titulo.getData()}
            </#if>
        </h1>
        <p class="banner-description">
            <#if (descricao.getData())??>
                ${descricao.getData()}
            </#if>
        </p>
        <button class="banner-button border-0 font-weight-bold">
            <#if (botao.getData())??>
                ${botao.getData()}
            </#if>
        </button>
    </div>
</div>