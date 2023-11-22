<div class="container">
    <div class="row">
        <#if Fieldset35191984.getSiblings()?has_content>
            <#list Fieldset35191984.getSiblings() as cur_Fieldset35191984>
                <div class="col-md-4">
                    <div class="card product-container">
                        <#if (cur_Fieldset35191984.Image31249761.getData())?? && cur_Fieldset35191984.Image31249761.getData() !="">
                            <img class="product-image w-100" alt="${cur_Fieldset35191984.Image31249761.getAttribute("alt")}" data-fileentryid="${cur_Fieldset35191984.Image31249761.getAttribute("fileEntryId")}" src="${cur_Fieldset35191984.Image31249761.getData()}" />
                        </#if>
                        <div class="card-body">
                            <#if (cur_Fieldset35191984.Text49190910.getData())??>
                                <h5 class="card-title font-weight-bold">
                                    ${cur_Fieldset35191984.Text49190910.getData()}
                                </h5>
                            </#if>
                            <#if (cur_Fieldset35191984.Text46098353.getData())??>
                                <p class="card-text text-right">
                                    R$ ${cur_Fieldset35191984.Text46098353.getData()}
                                </p>
                            </#if>
                        </div>
                    </div>
                </div>
            </#list>
        </#if>
    </div>
</div>