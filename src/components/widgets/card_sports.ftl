<#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
<#if entries?has_content>
    <div class="container-all d-flex flex-column mt-4">
        <#list entries as curEntry>
            <#assign assetRenderer=curEntry.getAssetRenderer() />
            <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
            <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
            <a class="card-sports d-flex border-0 text-decoration-none" href="w/${curEntry.getTitle(locale)?lower_case?replace(' ', '-')}">
                <div>
                    <#assign imgField=DDMFormFieldsReferencesMap['imagemCapa'].name />
                    <#assign imgValue=DDMFormFieldValuesMap[imgField]
                        [0].getValue().getString(locale) />
                    <#assign imgJson=imgValue?eval />
                    <img class="card-img-sports" src="${imgJson.url}" alt="Imagem de Capa">
                </div>
                <div class="card-body-sports d-flex justify-content-around flex-column">
                    <div class="card-date-sports d-flex">
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
                    <h1 class="card-title-sports m-0">
                        <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                        <#assign title=DDMFormFieldValuesMap[titleField]
                            [0].getValue().getString(locale) />
                        ${title}
                    </h1>
                    <p class="card-description-sports m-0">
                        <#assign contentField=DDMFormFieldsReferencesMap['descricao'].name />
                        <#assign content=DDMFormFieldValuesMap[contentField]
                            [0].getValue().getString(locale) />
                        ${content}
                    </p>
                    <div class="card-tags-sports d-flex mt-1">
                        <#list AssetCategoryLocalService.getEntryCategories(curEntry.getEntryId()) as entryCat>
                            <p class="tag m-0 px-3">
                                ${entryCat.getName()}
                            </p>
                        </#list>
                    </div>
                </div>
            </a>
        </#list>
    </div>
</#if>