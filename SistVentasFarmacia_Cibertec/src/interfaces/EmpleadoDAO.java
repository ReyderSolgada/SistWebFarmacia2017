package interfaces;

import java.util.List;

import beans.EmpleadoDTO;

public interface EmpleadoDAO {
	public EmpleadoDTO autentificacionEmpleado(String xuser, String xpass);
	
	public List<EmpleadoDTO> listaEmpleado();
}
