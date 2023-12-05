<#if entries?has_content>
    <div class="container mt-4">
        <div class="row">
            <#list entries as entry>
                <#assign assetRenderer=entry.getAssetRenderer() />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <div class="col-xl-4 col-md-6 d-flex align-items-center justify-content-center">
                    <div class="container-card-news border-0">
                        <div>
                            <#assign imgField=DDMFormFieldsReferencesMap['imagemCapa'].name />
                            <#assign imgValue=DDMFormFieldValuesMap[imgField]
                                [0].getValue().getString(locale) />
                            <#assign imgJson=imgValue?eval />
                            <img class="img-card-news w-100" src="${imgJson.url}" alt="Imagem de Capa">
                        </div>
                        <div class="container-body-news d-flex flex-column">
                            <div class="date-card-news d-flex">
                                <p class="m-0">
                                    <#assign authorField=DDMFormFieldsReferencesMap['autor'].name />
                                    <#assign author=DDMFormFieldValuesMap[authorField]
                                        [0].getValue().getString(locale) />
                                    ${author}
                                </p>
                                <p class="m-0">•</p>
                                <p class="m-0">
                                    <#assign DateField=DDMFormFieldsReferencesMap['data'].name />
                                    <#assign date=DDMFormFieldValuesMap[DateField]
                                        [0].getValue().getString(locale) />
                                    ${date}
                                </p>
                            </div>
                            <h1 class="title-card-news">
                                <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                                <#assign title=DDMFormFieldValuesMap[titleField]
                                    [0].getValue().getString(locale) />
                                ${title}
                            </h1>
                            <p class="description-card-news m-0">
                                <#assign contentField=DDMFormFieldsReferencesMap['description'].name />
                                <#assign content=DDMFormFieldValuesMap[contentField]
                                    [0].getValue().getString(locale) />
                                ${content}
                            </p>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</#if>