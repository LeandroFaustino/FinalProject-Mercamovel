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

    $produto = mysqli_real_escape_string ($bd_connect, $_GET['produto']);
    $vendedor = mysqli_real_escape_string ($bd_connect, $_GET['vendedor']);
    
    $query="DELETE FROM inventario WHERE NomeProduto = '$produto' AND IDvendedor = '$vendedor'";
    $result = $bd_connect->query($query);

    if ($result) {
        echo json_encode(["success" => true, "message" => "Produto removido com sucesso."]);
    } else {
        echo json_encode(["success" => false, "message" => "Erro ao remover o produto."]);
    }
    
    
        
    $bd_connect->close();
    exit;
    
    
    
?>