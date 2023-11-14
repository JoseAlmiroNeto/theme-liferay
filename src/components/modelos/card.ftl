<div class="container">
    <div class="row">
        <#if Fieldset35191984.getSiblings()?has_content>
            <#list Fieldset35191984.getSiblings() as cur_Fieldset35191984>
                <div class="col-md-4">
                    <div class="card product-container">
                        <#if (cur_Fieldset35191984.Image31249761.getData())?? && cur_Fieldset35191984.Image31249761.getData() !="">
                            <img class="product-image" alt="${cur_Fieldset35191984.Image31249761.getAttribute("alt")}" data-fileentryid="${cur_Fieldset35191984.Image31249761.getAttribute("fileEntryId")}" src="${cur_Fieldset35191984.Image31249761.getData()}" />
                        </#if>
                        <div class="card-body">
                            <h5 class="card-title product-title">
                                <#if (cur_Fieldset35191984.Text49190910.getData())??>
                                    ${cur_Fieldset35191984.Text49190910.getData()}
                                </#if>
                            </h5>
                            <p class="card-text product-description">
                                R$ <#if (cur_Fieldset35191984.Text46098353.getData())??>
	                                ${cur_Fieldset35191984.Text46098353.getData()}
                                </#if>
                            </p>
                        </div>
                    </div>
                </div>
            </#list>
        </#if>
    </div>
</div>