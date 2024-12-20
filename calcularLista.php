<?php 
     
    include 'coneccaoBD.php';


    if(isset($_POST['listaData'])){

        $listaData = json_decode($_POST['listaData'], true);
        
          
        for ($i = 1; $i < count($listaData); $i++) {
            
            $listaData[$i][1] = floatval($listaData[$i][1]); 
            
        };
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
                <th scope="col">Sub-Total</th>
            </tr>
        </thead>
        <tbody>
           
        <?php 
        $precoFinal = 0; 
        for ($i = 1; $i < count($listaData); $i++): ?>
                <?php
                $pesoSelecionado =  $listaData[$i][1];
                $nomeProduto = $listaData[$i][0];
               
                    $query="SELECT vendedor.nomeVendedor,
                                        inventario.NomeProduto,
                                        inventario.preco
                                    FROM inventario
                                    INNER JOIN vendedor
                                    ON inventario.IDvendedor = vendedor.id
                                    WHERE inventario.NomeProduto = '$nomeProduto'
                                    AND inventario.preco = (
                                    SELECT MIN(preco)
                                    FROM inventario
                                    WHERE NomeProduto = '$nomeProduto'
                                );";
        
                    $result = $bd_connect->query($query); ?>
        
                        
                         
                            
                            <?php if ($result->num_rows > 0): ?>

                                <?php while($row = $result -> fetch_assoc()):?>
                                    
                                  <?php $precoKg = number_format($row['preco'], 2, '.', ''); ?>
                                  <?php  $precoTotal = number_format(($precoKg * $pesoSelecionado), 2, '.', ''); ?>
                                  
                                    <tr>
                                        <td id="tdInfo"><?php echo $row['NomeProduto'];?></td>
                                        <td id="tdNomeVendedor"><?php echo $row['nomeVendedor'];?></td>
                                        <td id="tdPrecoKg"><?php echo $precoKg;?></td>
                                        <td id="tdPreco"><?php echo $precoTotal?></td>
                                    </tr>
                                    
                                    <?php $precoFinal += $precoTotal; ?>

                                <?php endwhile ?> 
                            <?php endif; ?>
                            
        <?php endfor; ?>    
        <tr>
            <td><h3>Total: </h3></td>
            <td><h3><?php echo $precoFinal?> € </h3></td>              
        </tr>
        </tbody>                                
   
    </table>
    
    </div>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>