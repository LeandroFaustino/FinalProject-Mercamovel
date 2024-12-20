<?php
include 'coneccaoBD.php'; 
session_start();

if(isset($_SESSION['user_id'])){
    $user_id=$_SESSION['user_id'];

    $sql="SELECT NomeProduto,
	     preco,
         (SELECT AVG(preco)
         FROM inventario as i
         WHERE i.NomeProduto = inventario.NomeProduto) as Media
    FROM inventario
    inner join vendedor
    on inventario.IDvendedor = vendedor.id
    WHERE vendedor.id = ?";

    $stmt = $bd_connect->prepare($sql);
    $stmt->bind_param("i", $user_id);
    $stmt ->execute();
    $result = $stmt->get_result();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="dinamicaPaginaVendedor.js" defer></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="estilosPaginaVendedor.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Passion+One:wght@400;700;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<body>

<div id="divResultadoFinal">
<div class="titulo">
    <h3>BEM VINDO/A</h3>
    <hr>
    <p style="font-weight:500">O SEU INVENTÁRIO:</p>
    <button class="adicionarItem" onclick="MostrarCategoria()" >+</button>
</div>
    <table class="table" id="listaVendedores">
        <thead>
            <tr>
                <th scope="col">Produto</th>
                <th scope="col">Preço</th>
                <th scope="col">Média</th>
                <th scope="col">Ação</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($result->num_rows > 0): ?>

                <?php while($row = $result -> fetch_assoc()):?>

                    <?php $produto = $row['NomeProduto']?>
                    <?php $preco = number_format($row['preco'], 2, '.', ''); ?>
                    <?php  $media = number_format($row['Media'], 2, '.', ''); ?>
                    
                        <tr id="<?php echo $produto ?>">
                            <td id="tdInfo"><a href="#" id= "<?php echo $produto ?>" onclick="abrirEdicaoItem('<?php echo $produto; ?>', '<?php echo $user_id; ?>')"><?php echo $produto;?></a></td>
                            <td id="tdPrecoKg"><a><?php echo $preco;?></a></td>
                            <td id="tdPreco"><a><?php echo $media?></a></td>
                            <td id="eliminar"><button onclick="Remover('<?php echo $produto; ?>', '<?php echo $user_id; ?>')">-</button></td>
                        </tr>
            
                <?php endwhile ?> 
            <?php endif; ?>
            </tbody>                                
   
   </table>
   
   
   <div class="row editar-preco" id="editar-preco">
            <div class="col-8" id="listaCategorias">
                <button onclick="FecharEdicao()"><</button>
                    <form id="introducaoPeso" data-user-id="<?= htmlspecialchars($user_id)?>">
                        
                    </form> 
            </div>
    </div>
</div>
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

        <div class="row divListaProdutos" id="divListaProdutos">
            <div class="col-8" id="listaCategorias">
                <button onclick="FecharProdutos()"><</button>
                
                <h1>Produtos</h1>
                
                <form id="DivFormProdutos"></form> 
            
            </div>
        </div>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>    
</body>
</html>