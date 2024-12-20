
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <script src="dinamicaListaCompras.js" defer></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="estilos.css" rel="stylesheet">
    <link href="estilosListaCompras.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Passion+One:wght@400;700;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&display=swap" rel="stylesheet">
    <title>Lista de Compras</title>
</head>
<body>
    <div class="container-fluid overflow-hidden" style="padding-top: 5vh;">
        <div class="row" style="display: flex; height: 20vh;">
            <div class="col-12" style=" display:flex; align-items:center; padding-left: 5vw;">
                <button style="width: 3em; height: 3em; margin-top: 1vh; "></button>
            </div>
            <div class="col-12" style="display:flex; align-items:end; padding-left: 5vw;">
                <h1 >LISTA DE COMPRAS<hr style="width: 78vw; border-style: solid; margin-top: 1vh; opacity: 100%; height: 0.5vh; color: #1a614f;"></h1>
            </div>
        </div>
        <div class="row" style="display: flex; height: 6vh; padding-left: 3vw;">
            <div class="col-12">
                <button class="adicionarItem" onclick="MostrarCategoria()" >ADICIONAR</button>
            </div>
        </div>
        
        
        <table id="lista">

            <!-- Inicia vazio, div onde aparece items adicionados-->
                     
        </table>

        <div id="botaoCalcular"></div>
            
        <form id="formCalcular" action="calcularLista.php" method="POST">
            <input type="hidden" id="listaData" name="listaData">
            
        </form>         
        
        
        <div class="row divLista" id="divLista">
            <div class="col-8" id="listaCategorias">
            <button onclick="FecharCategoria()">✖</button>
            
            <h1>Categorias</h1>
            
            <form id="formCategoria" onsubmit="return false">
                <input type="radio" id="tipoProduto" name="categoriaProduto" value="Carnes">
                <label for="carnes">Carnes</label><br>
                <input type="radio" id="tipoProduto" name="categoriaProduto" value="Fruta">
                <label for="fruta">Fruta</label><br>
                <input type="radio" id="tipoProduto" name="categoriaProduto" value="Frutos Secos">
                <label for="frutosSecos">Frutos Secos</label><br>
                <input type="radio" id="tipoProduto" name="categoriaProduto" value="Horticulas">
                <label for="horticulas">Horticulas</label><br>
                <input type="radio" id="tipoProduto" name="categoriaProduto" value="Peixe">
                <label for="peixe">Peixe</label><br>
                <input type="radio" id="tipoProduto" name="categoriaProduto" value="Ração">
                <label for="racao">Ração</label><br>
                <button id="submitCategoria" onclick="FecharCategoria(), MostrarProdutos()">-></button>
            </form>
            
            </div>
        </div>
        
        <div id="teste"></div>
         
         <div class="row divListaProdutos" id="divListaProdutos">
            <div class="col-8" id="listaCategorias">
                <button onclick="FecharProdutos()"><</button>
                
                <h1>Produtos</h1>
                
                <form id="DivFormProdutos"></form> 
            
            </div>
        </div>

        <div class="row selecaoPeso" id="selecaoPeso">
            <div class="col-8" id="listaCategorias">
            <button onclick="FecharInputPeso()"><</button>
                <form id="introducaoPeso">
                    
                </form> 
            </div>
        </div>
    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
