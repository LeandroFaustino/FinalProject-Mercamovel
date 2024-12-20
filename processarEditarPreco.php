<?php 
    
    header('Content-Type: application/json; charset=utf-8');

    $servername = "localhost";
    $username = "root"; 
    $password = ""; 
    $dbname = "mercamovel";
    
  
    $bd_connect = new mysqli($servername, $username, $password, $dbname);
    
    
    if ($bd_connect->connect_error) {
        die("Falha na conexão: " . $conn->connect_error);
    }

    $bd_connect->set_charset("utf8mb4");

    $produto = mysqli_real_escape_string($bd_connect, $_GET['produto']);
    $vendedor = mysqli_real_escape_string($bd_connect, $_GET['vendedor']);


if (isset($_GET['preco']) && is_numeric($_GET['preco'])) {
    $preco = (float) $_GET['preco']; 
} else {
    die("Preço inválido."); 
}


$query = "UPDATE inventario 
          SET preco = ? 
          WHERE NomeProduto = ? 
          AND IDvendedor = ?";


$stmt = $bd_connect->prepare($query);


$stmt->bind_param('dss', $preco, $produto, $vendedor);


if ($stmt->execute()) {
    echo "Preço atualizado com sucesso!";
} else {
    echo "Erro ao atualizar preço: " . $stmt->error;
}

        
    $bd_connect->close();
    exit;
    
    
    
?>