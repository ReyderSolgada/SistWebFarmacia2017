package dao;


import interfaces.CategoriaDAO;
import interfaces.ClientesDAO;
import interfaces.EmpleadoDAO;
import interfaces.LaboratorioDAO;
import interfaces.ProductoDAO;
import interfaces.RealizarPagoDAO;
import interfaces.ReportesDAO;

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

	@Override
	public CategoriaDAO getCategoria() {
		// TODO Auto-generated method stub
		return new MysqlCategoriaDAO();
	}

	@Override
	public LaboratorioDAO getLaboratorio() {
		// TODO Auto-generated method stub
		return new MysqlLaboratorioDAO();
	}

	@Override
	public ProductoDAO getProducto() {
		// TODO Auto-generated method stub
		return new MysqlProductoDAO();
	}

	@Override
	public RealizarPagoDAO getRealizarPago() {
		// TODO Auto-generated method stub
		return new MySqlRealizarPago();
	}

	@Override
	public ReportesDAO getReportes() {
		// TODO Auto-generated method stub
		return new MySqlReportesDAO();
	}


	
}
