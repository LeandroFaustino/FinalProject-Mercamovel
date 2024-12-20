<?php 

header('Content-Type: application/json; charset=utf-8');

$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "mercamovel";

// Connect to the database
$bd_connect = new mysqli($servername, $username, $password, $dbname);

// Check for connection errors
if ($bd_connect->connect_error) {
    die("Falha na conexão: " . $bd_connect->connect_error);
}

// Set charset to utf8mb4
$bd_connect->set_charset("utf8mb4");

// Use prepared statement to prevent SQL injection
$produto = $_GET['nomeProduto'] ?? '';
$query = "SELECT ROUND(AVG(inventario.preco), 2) as Media
          FROM inventario
          WHERE NomeProduto = ?";

$stmt = $bd_connect->prepare($query);
$stmt->bind_param('s', $produto);

// Execute the query and check for errors
if ($stmt->execute()) {
    $result = $stmt->get_result();
    $dados = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }
    }

    // Output the result as JSON
    echo json_encode($dados, JSON_UNESCAPED_UNICODE);

} else {
    // Output an error message in case of a query failure
    echo json_encode(['error' => 'Erro na execução da consulta.']);
}

// Close the database connection
$stmt->close();
$bd_connect->close();

?>
