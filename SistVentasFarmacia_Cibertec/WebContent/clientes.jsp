<%@page import="beans.EmpleadoDTO"%>
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
	<jsp:param value="Clientes" name="title"/>
</jsp:include>
<!-- Menú -->
<jsp:include page="WEB-INF/menu-navegacion.jsp">
	<jsp:param value="clientes" name="item"/>
</jsp:include>

	<main class="container" >
	</main>
	
<!-- Pie de página -->
<%@include file="WEB-INF/footer.jsp" %>