<#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
<#assign site_url=htmlUtil.escape(layout.getGroup().getDisplayURL(themeDisplay, !layout.isPublicLayout())) />
<#if entries?has_content>
    <div class="mt-4">
        <div class="row">
            <#list entries as curEntry>
                <#assign assetRenderer=curEntry.getAssetRenderer() />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <div class="col-xl-4 col-md-6 d-flex align-items-center justify-content-center">
                    <a href="${site_url}/w/${curEntry.getTitle(locale)?lower_case?replace(' ', '-')}" class="container-card-news border-0 text-decoration-none">
                        <div>
                            <#assign imgField=DDMFormFieldsReferencesMap['imagemNoticia'].name />
                            <#assign imgValue=DDMFormFieldValuesMap[imgField]
                                [0].getValue().getString(locale) />
                            <#assign imgJson=imgValue?eval />
                            <img class="img-card-news w-100" src="${imgJson.url}" alt="Imagem de Capa">
                        </div>
                        <div class="container-body-news d-flex flex-column">
                            <div class="date-card-news d-flex">
                                <p class="m-0">
                                    <#assign authorField=DDMFormFieldsReferencesMap['author'].name />
                                    <#assign author=DDMFormFieldValuesMap[authorField]
                                        [0].getValue().getString(locale) />
                                    ${author}
                                </p>
                                <p class="m-0">•</p>
                                <p class="m-0">
                                    <#assign DateField=DDMFormFieldsReferencesMap['date'].name />
                                    <#assign date=DDMFormFieldValuesMap[DateField]
                                        [0].getValue().getString(locale) />
                                    ${date}
                                </p>
                            </div>
                            <h1 class="title-card-news m-0">
                                <#assign titleField=DDMFormFieldsReferencesMap['title'].name />
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
                            <#assign categoryColors={ "Saúde" : "#ff3b30" , "Esporte" : "#34c759" , "Política" : "#007aff" , "Educação" : "#ffcc00" , "Tecnologia" : "#5ac8fa"
                                } />
                            <div class="tags d-flex mt-1">
                                <#list AssetCategoryLocalService.getEntryCategories(curEntry.getEntryId()) as entryCat>
                                    <#assign categoryName=entryCat.getName()?trim />
                                    <#assign categoryColor=categoryColors[categoryName]!'' />
                                    <p class="tag m-0" style="background-color: ${categoryColor}; color: white;">
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