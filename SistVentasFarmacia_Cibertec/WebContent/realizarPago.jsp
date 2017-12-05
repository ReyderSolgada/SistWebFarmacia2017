<%@page import="beans.EmpleadoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	EmpleadoDTO empleado = null;
	if (session.getAttribute("usuario") != null) {
		empleado = (EmpleadoDTO) session.getAttribute("usuario");
	} else {
		response.sendRedirect("login.jsp");
	}
%>

<!-- Encabezado -->
<jsp:include page="WEB-INF/head.jsp">
	<jsp:param value="realizarPago" name="title" />
</jsp:include>

<!-- Menú -->
<jsp:include page="WEB-INF/menu-navegacion.jsp">
	<jsp:param value="realizarPago" name="item" />
</jsp:include>

<main>
<!-- Inicio Main -->
<div class="container">
	<div class="row">
		<div class="col">
			<h2 style="text-align: center">Realizar Pago</h2>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-4">
			<label >Codigo Venta:</label>
			<div class="form-group">
				<div class="input-group">
					<input  class="form-control"  type="text" aria-label="Search" placeholder="Codigo Venta">
					<button class="btn btn-primary" type="submit">
					<img src="svg/si-glyph-magnifier.svg" width="16px" height="16px">Buscar</button>
				</div>
			</div>
		</div>	
		<div class="col-md-5"></div>	
		<div class="col-md-3"></div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<label>Nombre Cliente:</label>
			<input  class="form-control"  type="text" aria-label="Search">
		</div>
		<div class="col-md-4">
			<label>Fecha Pago:</label>		
		</div>
		
	</div>

	<div class="row">
		<div class="col-md-8">
		<label>Detalle Venta</label>
		<table class="table table-bordered table-hover table-striped">
				<tr>
					<th scope="row">Cantidad</th>
					<th scope="row">Descripción</th>
					<th scope="row">Precio Unit.</th>
					<th scope="row">SubTotal</th>
				</tr>
		</table>
	</div>
		<div class="col-md-1"></div>
		<div class="col-md-3">
			<h3 style="color: blue;">Gracias por su Coompra!..</h3>
			<button class="btn btn-info" type="submit"><img src="svg/si-glyph-print.svg" width="16px" height="16px"> Imprimir Boleta</button>
			<br><br>
			<button class="btn btn-danger" type="submit"><img src="svg/si-glyph-document-pdf.svg" width="16px" height="16px"> Imprimir en PDF</button>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-5">
			<label>Cajero:</label>
			<label><%=empleado.getNombre()+" "+empleado.getPrimerApe()+" "+empleado.getSegundoApe() %></label>		</div>
		<div class="col-md-3">
			<table class="table table-bordered">
				<tr>
					<th>TOTAL:</th>
					<th><input  class="form-control"  type="text" 
					aria-label="Search" placeholder="Valor (S/.)"></th>					
				</tr>
				<tr>
					<th>MONTO:</th>
					<th><input  class="form-control"  type="text" 
					aria-label="Search" placeholder="Valor (S/.)"></th>					
				</tr>
				<tr>
					<th>CAMBIO:</th>
					<th><input  class="form-control"  type="text" 
					aria-label="Search" placeholder="Valor (S/.)"></th>					
				</tr>
			</table>
		</div>
	</div>

	<div class="row">
		<div class="col-md-7"></div>
		<div class="col-md-1">
			<button class="btn btn-primary" type="submit"><img src="svg/si-glyph-wallet.svg" width="16px" height="16px">Pagar</button>
		</div>
	</div>
	<br>
</div>
<!-- Fin Main -->	
</main>

<!-- Pie de página -->
<%@include file="WEB-INF/footer.jsp"%>