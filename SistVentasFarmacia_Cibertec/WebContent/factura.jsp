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
	<jsp:param value="Nueva Venta" name="title"/>
</jsp:include>

<!-- Menú -->
<jsp:include page="WEB-INF/menu-navegacion.jsp">
	<jsp:param value="nueva venta" name="item"/>
</jsp:include>

	<!--Body-->
	
	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-header">Listado de Produtos</div>
					<div class="card-block">
						<form class="form-inline">
							<select class="form-control" id="nmProduto"
								style="max-width: 300px;">
								<option value="">Seleccionar</option>
								<option>ASGESIC 20MG</option>
								<option>CEFLEX 200MG</option>
								<option>IBUPRONAL FORTE</option>
								<option>DIPROFEN SSP</option>
								<option>DOLOSTOP 20MG</option>
								<option>NACLODIL</option>
							</select> <label class="sr-only" for="inlineFormInput">Cantidad</label> <input
								type="text" class="form-control mb-2 mr-sm-2 mb-sm-0 ml-sm-2"
								id="qtProduto" placeholder="Cantidad" style="width: 98px">
							<label class="sr-only" for="inlineFormInput">Valor</label> <input
								type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
								id="vlProduto" placeholder="Valor (S/.)" style="width: 98px">
							<button type="submit" class="btn btn-primary"
								id="btnAdicionarProduto">+</button>
							<p class="text-danger ml-3 pt-2 invisible" id="msgValidaForm">
								Debe rellenar <strong>todos los campos</strong> del producto
							</p>
						</form>
						<table class="table table-sm table-striped mt-3 table-produtos">
							<thead>
								<tr>
									<th style="max-width: 600px;">Producto</th>
									<th>Cantidad</th>
									<th class="text-right pr-5">Valor (S/.)</th>
									<th class="text-right pr-5 vlTotalProduto">Total</th>
									<th>Acción</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
							<tfoot class="invisible">
								<tr>
									<th></th>
									<th></th>
									<th class="text-right">SubTotal ❯</th>
									<th class="text-right pr-5" id="vlTotalPedido"></th>
									<th></th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- Pie de página -->
<%@include file="WEB-INF/footer.jsp" %>