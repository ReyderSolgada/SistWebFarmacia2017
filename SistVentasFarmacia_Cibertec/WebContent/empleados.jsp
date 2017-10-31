<%@page import="java.util.ArrayList"%>
<%@page import="beans.EmpleadoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	EmpleadoDTO empleado = null;
	if(session.getAttribute("usuario")!=null){
		empleado = (EmpleadoDTO) session.getAttribute("usuario");
	}else{
		response.sendRedirect("login.jsp");
	}
%>
<!-- Encabezado -->
<jsp:include page="WEB-INF/head.jsp">
	<jsp:param value="Empleados" name="title"/>
</jsp:include>

<!-- Menú -->
<jsp:include page="WEB-INF/menu-navegacion.jsp">
	<jsp:param value="empleados" name="item"/>
</jsp:include>

<main>
	<div class="container">
		<!-- Sección de Empleados -->
		<div class="row">
			<div class="col">
				<h2 class="titulo bg-info">Empleados</h2>
				<div class="row justify-content-center">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<th>ID</th>
							<th>Nombre</th>
							<th>Ap. Paterno</th>
							<th>Ap. Materno</th>
							<th>Fecha de Ingreso</th>
							<th>ID Cargo</th>
							<th colspan="2" >Acciones</th>
						</thead>
						
						<%
						List<EmpleadoDTO> lista = (List<EmpleadoDTO>) request.getAttribute("dataEmp");
						
						if(lista!=null){
							for(EmpleadoDTO xEmp : lista){
								out.println("<tr>");
								out.println("<td>"+xEmp.getIdEmpleado()+"</td>");
								out.println("<td>"+xEmp.getNombre()+"</td>");
								out.println("<td>"+xEmp.getPrimerApe()+"</td>");
								out.println("<td>"+xEmp.getSegundoApe()+"</td>");
								out.println("<td>"+xEmp.getFechaIngreso()+"</td>");
								out.println("<td>"+xEmp.getIdCargo()+"</td>");
								out.println("<td>Editar</td>");
								out.println("<td>Eliminar</td>");
								out.println("</tr>");
							}
						}
						%>
						
						<tr>
							<td>2</td>
							<td>Nombre1</td>
							<td>Ape1</td>
							<td>MAt2</td>
							<td>2017-05-12</td>
							<td>3</td>
							<td>editar</td>
							<td>eliminar</td>
						</tr>
						
						<tr>
							<td>2</td>
							<td>Nombre1</td>
							<td>Ape1</td>
							<td>MAt2</td>
							<td>2017-05-12</td>
							<td>3</td>
							<td>editar</td>
							<td>eliminar</td>
						</tr>
						
						<tr>
							<td>2</td>
							<td>Nombre1</td>
							<td>Ape1</td>
							<td>MAt2</td>
							<td>2017-05-12</td>
							<td>3</td>
							<td>editar</td>
							<td>eliminar</td>
						</tr>
						
					</table>
				</div>
			</div>
		</div>
		<!-- End Sección de Empleados -->
	</div>
</main>
<!-- Pie de página -->
<%@include file="WEB-INF/footer.jsp" %>