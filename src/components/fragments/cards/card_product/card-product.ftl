<div class="container">
    <div class="row justify-content-md-start justify-content-center b-0">
        [#list 1..configuration.numbersCards as index]
        <div class="col-xl-4 col-md-6 col-12 d-flex justify-content-center">
            <div class="card card-product shadow-sm">
                <lfr-editable class="card-product-img w-100" id="img-${index}" type="image">
                    <img class="card-product-img w-100" src="" alt="imagem-produto" />
                </lfr-editable>
                <div class="card-product-body d-flex justify-content-between mt-3">
                    <div>
                        <lfr-editable id="title-${index}" type="rich-text">
                            <span style="font-size: 24px; font-weight: 700; font-style: normal">Título</span>
                        </lfr-editable>
                        <lfr-editable id="description-${index}" type="rich-text" style="width: 170px">
                            <span style="font-size: 14px; font-style: normal; display: inline-block; width: 170px; word-wrap: break-word; color: #7E7D7A">Descrição</span>
                        </lfr-editable>
                    </div>
                    <div class="card-product-body-price d-flex flex-column align-items-center">
                        <lfr-editable id="price-${index}" type="rich-text">
                            <span style="font-size: 24px; font-weight: 800; font-style: normal">$12.90</span>
                        </lfr-editable>
											
                        <lfr-editable class="" id="button-${index}" type="link" style="font-size: 18px; font-weight: 600;">
                            <a href="#" class="btn btn-lg bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}" style="font-size: 14px; font-style: normal; font-weight: 600; border-radius: 24px; padding: 4px 10px 4px 10px;">
                                Botão
                            </a>
                        </lfr-editable>
                    </div>
                </div>
            </div>
        </div>
        [/#list]
    </div>
</div>