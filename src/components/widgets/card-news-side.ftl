<#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
<#if entries?has_content>
    <div class="container mt-4">
        <div>
            <#list entries as curEntry>
                <#assign assetRenderer=curEntry.getAssetRenderer() />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <div class="d-flex align-items-center justify-content-center">
                    <a href="w/${curEntry.getTitle(locale)}" class="container-card-news border-0 text-decoration-none">
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
                            <h1 class="title-card-news m-0">
                                <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                                <#assign title=DDMFormFieldValuesMap[titleField]
                                    [0].getValue().getString(locale) />
                                ${title}
                            </h1>
                            <p class="description-card-news m-0">
                                <#assign contentField=DDMFormFieldsReferencesMap['descricao'].name />
                                <#assign content=DDMFormFieldValuesMap[contentField]
                                    [0].getValue().getString(locale) />
                                ${content}
                            </p>
                            <div class="tags d-flex">
                                <#list AssetCategoryLocalService.getEntryCategories(curEntry.getEntryId()) as entryCat>
                                    <p class="tag">
                                        ${entryCat.getName()}
                                    </p>
                                </#list>
                            </div>
                        </div>
                    </a>
                </div>
            </#list>
        </div>
    </div>
</#if>
<style>