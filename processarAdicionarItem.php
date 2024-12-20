<?php 
    
    header('Content-Type: application/json; charset=utf-8');

    $servername = "localhost";
    $username = "root"; 
    $password = ""; 
    $dbname = "mercamovel";
    
    
    $bd_connect = new mysqli($servername, $username, $password, $dbname);
    
    if ($bd_connect->connect_error) {
        die(json_encode(array('status' => 'error', 'message' => 'Falha na conexão: ' . $bd_connect->connect_error)));
    }

    $bd_connect->set_charset("utf8mb4");

    
    $produto = mysqli_real_escape_string($bd_connect, $_GET['produto']);
    $userID = mysqli_real_escape_string($bd_connect, $_GET['userid']);

    
    if (isset($_GET['preco']) && is_numeric($_GET['preco'])) {
        $preco = (float) $_GET['preco']; 
    } else {
        die(json_encode(array('status' => 'error', 'message' => 'Preço inválido.')));
    }

    
    $query = "INSERT INTO inventario (IDvendedor, NomeProduto, preco)
              VALUES (?, ?, ?)";

    $stmt = $bd_connect->prepare($query);

    
    if ($stmt === false) {
        die(json_encode(array('status' => 'error', 'message' => 'Erro na preparação da consulta: ' . $bd_connect->error)));
    }

    
    $stmt->bind_param('dss', $userID, $produto, $preco);

    
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Preço atualizado com sucesso!'));
    } else {
        echo json_encode(array('status' => 'error', 'message' => 'Erro ao atualizar preço: ' . $stmt->error));
    }

    
    $bd_connect->close();
    exit;
?>
