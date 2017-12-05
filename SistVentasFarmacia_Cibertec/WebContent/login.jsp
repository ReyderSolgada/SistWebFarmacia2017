<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String mensaje = "";
	if(request.getAttribute("msg")!=null){
		mensaje = (String) request.getAttribute("msg");
	}
%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Login - SysFarma</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/extras.css">
	<link rel="stylesheet" href="css/estilos.css">	
	<link rel="icon" type="image/png" href="img/icon.png" />
</head>
<body>
	<!-- Header -->
	<header class="header bg-info">
		<div class="container">
			<div class="row justify-content-center">
				<h1 class="text-white">Bienvenido a SysFarma</h1>
			</div>
		</div>
	</header>
	<!-- End Header -->
	
	<!-- Form Login -->
	<div class="container h-100 ">
	<div class="row card-body h-100 col-sm-12 my-auto">
		<div class="col"></div>
		<div class="col card-block w-25 h-100">
			<form role="form" method="post" action="ServletEmpleado?tipo=login">
					<h2 class="text-center form-signin-heading">
						<img id="login-icon" src="img/color/users-2.svg">
					</h2>
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2"><img
							src="img/icon/account-login.svg"></span> <input type="text"
							class="form-control" placeholder="Usuario" aria-label="Usuario"
							aria-describedby="sizing-addon2" name="txtusuario" autofocus>
				</div>
				<br>
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2"><img
							src="img/icon/lock-locked.svg"></span> <input type="password"
							class="form-control" placeholder="Contraseña"
							aria-label="Contraseña" aria-describedby="sizing-addon2" name="txtpassword">
				</div>
				<br>
				<button class="btn btn-lg btn-success btn-block" type="submit">Iniciar</button>
			</form>
			
			<%
				if(!mensaje.equals("")){
					out.write("<div class='alert alert-danger'>");
					out.write(mensaje);
					out.write("</div>");
				}
			%>
			
		</div>
		<div class="col"></div>
	</div>
	</div>
	<!-- End Form Login -->
	
	<!-- footer -->
	<footer class="footer bg-secondary">
		<div class="container ">
			<div class="row justify-content-center align-items-center">				
				<span class="text-white h6">SysFarma | 2017 | Cibertec - SJL</span>
			</div>
		</div>
	</footer>
	<!-- End footer -->
	<script src="js/jquery-3.2.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>