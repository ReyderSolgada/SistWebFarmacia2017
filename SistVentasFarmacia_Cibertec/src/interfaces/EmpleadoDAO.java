package interfaces;

import beans.EmpleadoDTO;

public interface EmpleadoDAO {
	public EmpleadoDTO autentificacionEmpleado(String xuser, String xpass);
}
