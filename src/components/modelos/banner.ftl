<div class="banner-container w-100 h-100 position-relative">
    <#if (imgBannerWeb.getData())?? && imgBannerWeb.getData() !="">
        <img class="banner-img d-none d-md-block w-100" alt="${imgBannerWeb.getAttribute("alt")}" data-fileentryid="${imgBannerWeb.getAttribute("fileEntryId")}" src="${imgBannerWeb.getData()}" />
    </#if>
    <#if (imgBannerMobile.getData())?? && imgBannerMobile.getData() !="">
        <img class="banner-img d-md-none w-100" alt="${imgBannerMobile.getAttribute("alt")}" data-fileentryid="${imgBannerMobile.getAttribute("fileEntryId")}" src="${imgBannerMobile.getData()}" />
    </#if>
    <div class="banner-information w-100 d-flex flex-column align-items-center align-items-md-start position-absolute text-center text-md-left">
        <#if (texttop.getData())??>
            <p>
                ${texttop.getData()}
            </p>
        </#if>
        <#if (title.getData())??>
            <h1 class="banner-title font-weight-bold">
                ${title.getData()}
            </h1>
        </#if>
        <#if (description.getData())??>
            <p class="banner-description">
                ${description.getData()}
            </p>
        </#if>
        <#if (button.getData())??>
            <button class="banner-button border-0 font-weight-bold">
                ${button.getData()}
            </button>
        </#if>
    </div>
</div>