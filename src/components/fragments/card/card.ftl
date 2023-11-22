<div class="container">
    <div class="row">
        [#list 1..configuration.numbersCards as index]
        <div class="col-md-4">
            <div class="card product-container">
                <lfr-editable id="id-img-${index}" type="image">
                    <img src="" alt="img" class="product-image w-100">
                </lfr-editable>
                <div class="card-body">
                    <h5 class="card-title font-weight-bold">
                        <lfr-editable id="id-text-${index}" type="rich-text">
                            Title
                        </lfr-editable>
                    </h5>
                    <p class="card-text text-right">
                        <lfr-editable id="id-rich-${index}" type="rich-text">
                            Price
                        </lfr-editable>
                    </p>
                </div>
            </div>
        </div>
        [/#list]
    </div>
</div>