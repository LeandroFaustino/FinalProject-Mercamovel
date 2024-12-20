<?php 
include 'coneccaoBD.php';

if($_SERVER['REQUEST_METHOD'] === 'POST'){
    if(!empty($_POST['username']) && !empty($_POST['password'])){
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);

        $sql = "SELECT id, senha FROM vendedor WHERE nomeVendedor = ?";
        $stmt = $bd_connect->prepare($sql);
        $stmt->bind_param("s", $username);
        $stmt ->execute();
        $result = $stmt->get_result();

        if($result->num_rows === 1){
            $user = $result->fetch_assoc();

            if ($password === $user['senha']) {
                session_start();
                $_SESSION['user_id'] = $user['id'];
                header("Location: paginaVendedor.php");
                exit;
            } else {
                header("Location: login.php?error=1");
                exit;
            }
        }else{
            header("Location: login.php?error=2");
            exit;
        }
        $stmt->close();    
    }else{
        echo "Por favor, preencha todos os campos.";
    }
}else{
    echo "Método de requisição inválido";
}

$bd_connect->close();

?>