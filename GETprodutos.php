<?php 
    
    header('Content-Type: application/json; charset=utf-8');

    $servername = "localhost";
    $username = "root"; // Usuário padrão do XAMPP
    $password = ""; // Senha padrão do XAMPP (geralmente em branco)
    $dbname = "mercamovel";
    
    // Criar conexão
    $bd_connect = new mysqli($servername, $username, $password, $dbname);
    
    // Verificar conexão
    if ($bd_connect->connect_error) {
        die("Falha na conexão: " . $conn->connect_error);
    }

    $bd_connect->set_charset("utf8mb4");

    $produto = mysqli_real_escape_string ($bd_connect, $_GET['nomeProduto']);
    
    $query="SELECT NomeProduto, nomeTipo FROM produto WHERE NomeProduto = '$produto' LIMIT 2";
    $result = $bd_connect->query($query);
    
    $dados = [];

    if($result->num_rows>0){
        
        while($row = $result -> fetch_assoc()){
            
            $dados[] = $row; 
        }
        
        echo json_encode($dados, JSON_UNESCAPED_UNICODE);
       
        
    } else {
        echo json_encode([]);
    }
        
    $bd_connect->close()
    
    
    
?>