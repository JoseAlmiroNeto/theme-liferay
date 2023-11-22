<div class="container">
    <div class="row">
        [#list 1..configuration.numbersCards as index]
        <div class="col-md-4">
            <div class="card product-container">
                <lfr-editable id="id-img-${index}" type="image">
                    <img src="" alt="img" class="product-image w-100">
                </lfr-editable>

                <div class="card-body body">
                    <lfr-editable id="id-text-${index}" type="rich-text">
                        <span style="font-weight: bold;">Title</span>
                    </lfr-editable>
                    
                    <lfr-editable id="id-rich-${index}" type="rich-text">
                        <span style="display: block; text-align: right;">Price</span>
                    </lfr-editable>
                </div>
            </div>
        </div>
        [/#list]
    </div>
</div>