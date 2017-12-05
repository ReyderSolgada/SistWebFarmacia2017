package dao;

import interfaces.ClientesDAO;
import interfaces.EmpleadoDAO;

public class MysqlDAOFactory extends DAOFactory {

	@Override
	public EmpleadoDAO getEmpleado() {
		return new MysqlEmpleadoDAO();
	}

	@Override
	public ClientesDAO getCliente() {
		// TODO Auto-generated method stub
		return new MysqlClienteDAO();
	}
	
}
