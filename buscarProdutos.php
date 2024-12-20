<?php 
     
    include 'coneccaoBD.php';


    if(isset($_POST['produto'])){

        $produto = $_POST['produto'];
        
    };    

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="estilos.css" rel="stylesheet">
    <link href="estilosListaCompras.css" rel="stylesheet">
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
    
    <table class="table" id="listaVendedores">
        <thead>
            <tr>
                <th scope="col">Produto</th>
                <th scope="col">Vendedor</th>
                <th scope="col">Preço/Kg</th>
            </tr>
        </thead>
        <tbody>    
        
                <?php
               
                    $query="SELECT vendedor.nomeVendedor,
                        inventario.NomeProduto,
                        inventario.preco
                        FROM inventario
                        inner join vendedor
                        on inventario.IDvendedor = vendedor.id
                        WHERE NomeProduto = '$produto'
                        order by preco asc";
        
                        $result = $bd_connect->query($query); ?>
        
                        
                         
                            
        <?php if ($result->num_rows > 0): ?>

<?php 
$totalRows = $result->num_rows; // Total de linhas na tabela
$currentRow = 0; // Contador para rastrear a linha atual
?>

<?php while ($row = $result->fetch_assoc()): ?>
    <?php 
    $precoKg = number_format($row['preco'], 2, '.', ''); 
    $currentRow++; // Incrementa a contagem da linha atual
    
    // Define o estilo baseado na ordem de aparição
    if ($currentRow === 1) {
        $style = "background-color: #70FF4C;"; // Primeira linha
    } elseif ($currentRow === $totalRows) {
        $style = "background-color: #FFC34C;"; // Última linha
    } else {
        $style = "background-color: #FFF84C;"; // Linhas intermediárias
    }
    ?>

    <tr>
        <td id="tdInfo" style="<?php echo $style; ?>">
            <?php echo $row['NomeProduto']; ?>
        </td>
        <td id="tdNomeVendedor" style="<?php echo $style; ?>">
            <?php echo $row['nomeVendedor']; ?>
        </td>
        <td id="tdPrecoKg" style="<?php echo $style; ?>">
            <?php echo $precoKg; ?>
        </td>
    </tr>

<?php endwhile; ?>

<?php endif; ?>

                            
           
    
        </tbody>                                
   
   

    </table>

    </div>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>