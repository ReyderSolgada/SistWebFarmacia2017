package service;

import java.util.List;

import beans.EmpleadoDTO;
import dao.DAOFactory;
import interfaces.EmpleadoDAO;
import utils.Constantes;

public class EmpleadoService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(Constantes.ORIGEN_DE_DATOS_MYSQL);
	EmpleadoDAO objEmp = fabrica.getEmpleado();
	
	public EmpleadoDTO autentificacionEmpleado(String xuser, String xpass){
		return objEmp.autentificacionEmpleado(xuser, xpass);
	}
	
	public List<EmpleadoDTO> listaEmpleado(){
		return objEmp.listaEmpleado();
	}
}
