<div class="container-news w-100 d-flex flex-column align-items-center">
    <div class="container-news-body d-flex flex-column">
        <lfr-editable class="container-news-body-tags px-1 d-flex justify-content-center align-items-center" id="categories" type="rich-text">
            <span>categorias</span>
        </lfr-editable>
        <lfr-editable class="container-news-body-title" id="title" type="rich-text">
            <span>Título</span>
        </lfr-editable>
        <div>
            <lfr-editable class="container-news-body-author" id="author" type="rich-text">
                <span>Autor</span>
            </lfr-editable>
            <lfr-editable id="date" type="rich-text">
                <span>Data</span>
            </lfr-editable>
        </div>
        <lfr-editable class="container-news-body-img w-100" id="img" type="image">
            <img class="img w-100 h-100" src="" alt="imagem-de-capa" />
        </lfr-editable>
        <lfr-editable id="content" type="rich-text">
            <span>Conteúdo</span>
        </lfr-editable>
    </div>
</div>

<script>
$(document).ready(function() {
    var container = $('.container-news-body-tags');
    var categorias = container.text().split(',').map(function(categoria) {
        return categoria.trim();
    });

    categorias.forEach(function(categoria) {
        var corCategoria = obterCorCategoria(categoria);

        $('<span class="category-item px-2">')
            .text(categoria)
            .css('background-color', corCategoria)
            .appendTo(container);
    });

    container.contents().filter(function() {
        return this.nodeType === 3;
    }).remove();
});

function obterCorCategoria(categoria) {
    var coresCategorias = {       
			  'Saúde': '#ff3b30',
        'Esporte': '#34c759',
        'Política': '#007aff',
        'Educação': '#ffcc00',
        'Tecnologia': '#5ac8fa',
    };

    // Verifica se a categoria é conhecida
    if (coresCategorias[categoria]) {
        return coresCategorias[categoria];
    } else {
        return '#74A2FF';
    }
}
</script>