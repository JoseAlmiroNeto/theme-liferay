<div class="container">
    <div class="row">
        [#list 1..configuration.numbersCards as index]
        <div class="col-md-3 d-flex justify-content-center">
            <div class="card card-container-large border-0">
                <lfr-editable id="id-img-${index}" type="image">
                    <img class="card-img-large w-100" src="" alt="img-card" />
                </lfr-editable>
                <div class="card-body card-info-large d-flex flex-column text-center">
                    <lfr-editable id="id-title-${index}" type="rich-text">
                        <span class="card-title-large font-weight-bolder">Titulo</span>
                    </lfr-editable>
                    <lfr-editable id="id-description-${index}" type="rich-text">
                        <span class="card-description-large">Descrição</span>
                    </lfr-editable>
                    <lfr-editable id="id-price-${index}" type="rich-text">
                        <span class="card-price-large font-weight-bolder">Preço</span>
                    </lfr-editable>
                </div>
            </div>
        </div>
        [/#list]
    </div>
</div>