<?php
  ob_start();
  require_once('includes/load.php');
  if($session->isUserLoggedIn(true)) { redirect('home.php', false);}
?>
<?php include_once('layouts/header.php'); ?>
<div class="logoDiv">
  <img class="loginLogo" src="/assets/images/logomascotas.jpg" alt="logo mascotas" width="600" height="223">
</div>
<div class="login-page">
    <div class="text-center">
       <h1>Bienvenido</h1>
       <p>Iniciar sesión </p>
     </div>
     <?php echo display_msg($msg); ?>
      <form method="post" action="auth.php" class="clearfix">
        <div class="form-group">
              <label for="username" class="control-label">Usuario</label>
              <input type="name" class="form-control" name="username" placeholder="Usuario">
        </div>
        <div class="form-group">
            <label for="Password" class="control-label">Contraseña</label>
            <input type="password" name= "password" class="form-control" placeholder="Contraseña">
        </div>
        <div class="form-group">
                <button type="submit" class="btn btn-info  pull-right">Entrar</button>
        </div>
    </form>
</div>
<?php include_once('layouts/footer.php'); ?>
