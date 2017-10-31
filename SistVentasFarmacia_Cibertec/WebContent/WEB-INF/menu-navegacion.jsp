<%
	String item = request.getParameter("item");
%>

	<!-- header -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#"><img src="img/color/logo.svg"
				class="d-inline-block align-top"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
	
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="<% out.print(item.equals("empleados")?"nav-item active":"nav-item");%>"><a class="nav-link"
						href="ServletEmpleado?tipo=listar">Empleados<span class="sr-only">(Actual)</span></a></li>
					<li class="<% out.print(item.equals("productos")?"nav-item active":"nav-item");%>"><a class="nav-link" href="productos.jsp">Productos</a>
					</li>
					<li class="<% out.print(item.equals("ventas")?"nav-item active":"nav-item");%>"><a class="nav-link" href="ventas.jsp">Lista Ventas</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="factura.jsp">Nueva Venta</a>
					</li>
					<li class="<% out.print(item.equals("clientes")?"nav-item active":"nav-item");%>"><a class="nav-link" href="clientes.jsp">Clientes</a>
					</li>
				</ul>
				<div class="form-inline btn-group my-2 my-lg-0">
					<button type="button" class="btn btn-light dropdown-toggle"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="img/color/user-f.svg" alt="Usuario"
							class="rounded-circle border border-primary"> Perfil <span
							class="badge badge-secondary">9</span> <span class="sr-only">Mensajes
							sin leer</span>
					</button>
					<div class="dropdown-menu">
						<button class="dropdown-item" type="button">Cuenta</button>
						<button class="dropdown-item" type="button">Configuraciones</button>
						<a href="ServletEmpleado?tipo=cerrarSesion" class="dropdown-item">Salir</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->