<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="estilos.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Passion+One:wght@400;700;900&display=swap" rel="stylesheet">
        <script src="dinamica.js"></script>
    </head>
  
  <body>
    <main class="container-fluid overflow-hidden" style="display: flex; justify-content: center; align-items: center;">
      <form id="loginForm" action="processarLogin.php" method="post">
        <div class="mb-2">
          <label for="exampleInputEmail1" class="form-label">Utilizador</label>
          <input type="text" class="form-control" id="email" name="username" aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password" class="form-control" id="password" name="password">
        </div>
        <button type="submit" class="btn">Entrar</button>
        <?php if (isset($_GET['error'])): ?>
        <?php
        // Exibe mensagens diferentes conforme o valor de erro
        if ($_GET['error'] == 1) {
            echo '<p id="password-errada" style="color: red;">Senha errada!</p>';
        } elseif ($_GET['error'] == 2) {
            echo '<p id="usuario-nao-encontrado" style="color: red;">Utilizador não encontrado!</p>';
        } elseif ($_GET['error'] == 3) {
            echo '<p id="campo-vazio" style="color: red;">Por favor, preencha todos os campos!</p>';
        }
        ?>
    <?php endif; ?> 
      </form>
    </main>
    
    
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>
