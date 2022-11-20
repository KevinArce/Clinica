<?php 
require_once "../pre-includes/all.php"; 

	$invalid=false; $expired=false; $error=false; $blocked=false; $revoked=false; $password=false; $signout=false;

	include "../theme/htmlhead.php";
	echo "<title>".get_global('portal_name')."</title>";
	include "../theme/header.php";
?>
<div id="login-screen" class="container">
<div class="col-md-4 col-md-offset-4"><div class="row">

	<div class="logo-set">
		<img title="<?php echo get_global('portal_name');?>" src="../theme/images/mainlogo.png" class="img-sns-logo img-responsive img-center"/>
		<h1 class="logo-text"><?php echo get_global('portal_name');?></h1>
	</div>


<?php 
	if($invalid==true){?><div class="alert alert-danger" role="alert">Invalida Contrasena/Usuario.</div>
<?php 
	}
	if($expired==true){?>
<?php 
	}
	if($error==true){?><div class="alert alert-danger" role="alert">Lo lamentamos pero no pudimos permitirte iniciar sesion, por favor contacta al administrador.</div>
<?php 
	}
	if($blocked==true){?><div class="alert alert-danger" role="alert">Acceso Denegado! Contacta a tu administrador.</div>
<?php 
	}
	if($revoked==true){?><div class="alert alert-danger" role="alert">Acceso Denegado! Todas las oficinas estan cerradas.</div>

<?php 
	}
	if($password==true){?><div class="alert alert-success" role="alert">Contrasena ha sido actualizada! Inicia sesion con la nueva contrasena.</div>
<?php 
	}
	if($signout==true){ ?><div class="alert alert-success" role="alert">Has cerrado sesion exitosamente.</div>
<?php }?>

<div class="panel panel-default">
<div class="panel-body">
<form method="post" action="process.php">
  <div class="form-group">
		  <div class="form-group">
		    <label for="user_id">Email address</label>
		    <input type="email" class="form-control" id="user_id" name="user_id" placeholder="Email">
		  </div>
		  <div class="form-group">
		    <label for="password">Password</label>
		    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
		  </div>

		<input id="extra_key"  name="extra_key" type="hidden" value="<?php echo md5(date( 'A  D, M jS, Y' ));?>">
    	<input name="submit" class="btn btn-default formbutton theme-portal" type="submit" value="Login">
    </div>
</form>
</div></div></div>
</div>
</div>
<?php include "../theme/footer.php";?>
</body>
</html>