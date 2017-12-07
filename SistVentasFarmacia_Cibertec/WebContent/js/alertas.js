//alerta despues de actualizar
$('#btn-actualizar').click(function(){
	$.bootstrapGrowl("Actualizacion correcta!", { 
	ele: 'body', // which element to append to 
	type: 'success', // (null, 'info', 'error', 'success') 
	offset: {from: 'top', amount: 20}, // 'top', or 'bottom' 
	align: 'left', // ('left', 'right', or 'center') 
	width: 250, // (integer, or 'auto') 
	delay: 4000, 
	allow_dismiss: true, 
	stackup_spacing: 10 // spacing between consecutively stacked growls. 
	});
});

$('#btn-agregar').click(function(){
	$.bootstrapGrowl("Inserción exitosa!", { 
	ele: 'body',
	type: 'info',
	offset: {from: 'top', amount: 20},
	align: 'left', 
	width: 250, 
	delay: 4000, 
	allow_dismiss: true, 
	stackup_spacing: 10 
	});
});

$('#btn-eliminar').click(function(){
	 $.bootstrapGrowl("Se elimino correctamente!", {
         type: 'danger',
         align: 'center',
         width: 'auto',
         allow_dismiss: false
     });
});