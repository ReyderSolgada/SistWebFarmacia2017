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
	<jsp:param value="Reportes" name="title" />
</jsp:include>
<!-- Menú -->
<jsp:include page="WEB-INF/menu-navegacion.jsp">
	<jsp:param value="reportes" name="item" />
</jsp:include>

<main>
	<!-- inicio Main-->
	<div class="container">
		<!-- Inicio Container-->
		<div class="row">
			<div class="col">
			<h2 style="text-align: center;">Reportes</h2>
			</div>
		</div>
		<br>

		<div class="row">
			<div class="col-md-8">
				<table class="table table-bordered">
					<tr>
						<th>
							<select name="cboVendedor">
								<option>Seleccione Vendedor</option>
							</select>
						</th>
						<th><button class="btn btn-info">Venta General</button></th>
						<th>Inventario:</th>
						<th><button class="btn btn-success">Inventario</button></th>
					</tr>
				</table>
				<br><br>
				<table class="table table-bordered table-hover table-striped">
					<tr>
						<th>CodVendedor</th>
						<th>Nombres</th>
						<th>IdOrdenVenta</th>
						<th>Descripción</th>
						<th>PrecioVenta</th>						
					</tr>
					<tr>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</table>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-3">
				<h3>Rango de Fechas</h3>
				<br>
				<label>Desde:</label>
					<div class="form-group">
					<div class="input-group date" >
						<input type="text"  class="dp-fecha form-control" name="">
						<span class="input-group-addon"><img src="svg/si-glyph-calendar-3.svg" width="16px" height="16px"></span>
					</div>
				</div>
				<label>Hasta:</label>
					<div class="form-group">
						<div class="input-group date" >
						<input type="text"  class="dp-fecha form-control" name="">
						<span class="input-group-addon"><img src="svg/si-glyph-calendar-3.svg" width="16px" height="16px"></span>
					</div>
			</div>	
				<button class="btn btn-danger" type="submit"><img src="svg/si-glyph-document-pdf.svg" width="16px" height="16px"> Imprimir en PDF</button>
				<br>
				<br>
				<button class="btn btn-success" type="submit"><img src="svg/si-glyph-chart-decrease.svg" width="16px" height="16px"> Exportar a Excel</button>
			</div>
		</div>
		<!-- Fin Container -->
	</div>
	<!-- fin Main-->
</main>

<!-- Pie de página -->
<%@include file="WEB-INF/footer.jsp"%>