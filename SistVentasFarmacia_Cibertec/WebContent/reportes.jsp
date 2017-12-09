<%@ page import="beans.ReportesDTO"%>
<%@ page import="java.util.ArrayList"%>
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
					<%
					ArrayList<ReportesDTO> lista = (ArrayList<ReportesDTO>) request.getAttribute("Vendedor");
						if(lista!=null){
							for(ReportesDTO repor : lista){
					%>
						<option value="<%=repor.getIdEmpleado()%>"><%=repor.getNombreEmpleado() %></option>
					<%}} %>
							</select>
						</th>
						<th>
						
						<button class="btn btn-info">Ventas/Vendedor</button>
						
						</th>
						<th>
						<form action="ServletReportes?tipo=ventaGeneral">
						<button class="btn btn-success">Venta General</button>
						</form>
						</th>
					</tr>
				</table>
				<br><br>
				<table class="table table-bordered table-hover table-striped">
					<%
					ArrayList<ReportesDTO> ventaG = (ArrayList<ReportesDTO>)request.getAttribute("VentaGeneral");
						if(ventaG!=null){
							out.println("<tr>");
							out.println("<th>IdOrdenVenta</th>");
							out.println("<th>FechaOrden</th>");
							out.println("<th>NombreCliente</th>");
							out.println("<th>NombreEmpleado</th>");
							out.println("<th><th>IdProducto</th>");
							out.println("<th>Descripcion</th>");
							out.println("<th>Cantidad</th>");
							out.println("<th>Monto</th>");
							out.println("</tr>");
							for(ReportesDTO r : ventaG){
								out.println("<tr>");
								out.println("<td>" + r.getIdOrdenVenta() + "</td>");
								out.println("<td>" + r.getFechaOrden() + "</td>");
								out.println("<td>" + r.getNombreCliente() + "</td>");
								out.println("<td>" + r.getNombreEmpleado()+ "</td>");
								out.println("<td>" + r.getIdProducto() + "</td>");
								out.println("<td>" + r.getNombreProducto()+ "</td>");
								out.println("<td>" + r.getCantidad() + "</td>");
								out.println("<td> S/. " + r.getMonto()+ "</td>");
								out.println("</tr>");
							}
						}
					%>
				</table>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-3">
				<h3>Rango de Fechas</h3>
				<br>
				<label>Desde:</label>
					<div class="form-group">
					<div class="input-group date" >
						<input type="text"  class="dp-fecha form-control" name="txtFechaInicio">
						<span class="input-group-addon"><img src="svg/si-glyph-calendar-3.svg" width="16px" height="16px"></span>
					</div>
				</div>
				<label>Hasta:</label>
					<div class="form-group">
						<div class="input-group date" >
						<input type="text"  class="dp-fecha form-control" name="txtFechaFin">
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