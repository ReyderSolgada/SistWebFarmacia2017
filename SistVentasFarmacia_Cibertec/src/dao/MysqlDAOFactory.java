package dao;

import interfaces.EmpleadoDAO;

public class MysqlDAOFactory extends DAOFactory {

	@Override
	public EmpleadoDAO getEmpleado() {
		return new MysqlEmpleadoDAO();
	}
	
}
