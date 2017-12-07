//EditarCliente
cargarCliente=function(id,nom,apepater,apemater,dni,fecReg,sexo){
	$('#txtCodigo').val(id);
	$('#txtNombre').val(nom);
	$('#txtApePaterno').val(apepater);
	$('#txtApeMater').val(apemater);
	$('#txtDNI').val(dni);
	$('#txtFecRegistro').val(fecReg);
	$('#txtSexo').val(sexo);
};
eliminarCliente=function(cod,nombre){
	limpiarCliente();
	$('#txteliminarId').val(cod);
	$('#nomCliente').append('<a class="alert-link"> '+nombre+' </a>');
	function limpiarCliente(){
		$('#nomCliente a').remove();
	}
};

//Funcion Fecha
$('.dp-fecha').datetimepicker({
	languaje:"es",
	todayBtn:1,
	autoclose:1,
	format: "yyyy-mm-dd",
	startView:2,
	minView:2,
	todayHighlight:true
});