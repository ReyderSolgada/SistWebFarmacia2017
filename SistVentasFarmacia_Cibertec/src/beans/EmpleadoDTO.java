package beans;

public class EmpleadoDTO {
	private int idEmpleado;
	private String nombre;
	private String primerApe;
	private String segundoApe;
	private String fechaNac;
	private String fechaIngreso;
	private String usuario;
	private String clave;
	private String telefono;
	private int idCargo;
	
	public int getIdEmpleado() {
		return idEmpleado;
	}
	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPrimerApe() {
		return primerApe;
	}
	public void setPrimerApe(String primerApe) {
		this.primerApe = primerApe;
	}
	public String getSegundoApe() {
		return segundoApe;
	}
	public void setSegundoApe(String segundoApe) {
		this.segundoApe = segundoApe;
	}
	public String getFechaNac() {
		return fechaNac;
	}
	public void setFechaNac(String fechaNac) {
		this.fechaNac = fechaNac;
	}
	public String getFechaIngreso() {
		return fechaIngreso;
	}
	public void setFechaIngreso(String fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public int getIdCargo() {
		return idCargo;
	}
	public void setIdCargo(int idCargo) {
		this.idCargo = idCargo;
	}
	
}
