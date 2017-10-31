package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.EmpleadoDTO;
import interfaces.EmpleadoDAO;
import utils.MysqlDBConexion;

public class MysqlEmpleadoDAO implements EmpleadoDAO {
	
	EmpleadoDTO obj = null;
	Connection cn = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;

	@Override
	public EmpleadoDTO autentificacionEmpleado(String xuser, String xpass) {
		
		
		try {
			cn = MysqlDBConexion.getConexion();
			String sql = "SELECT * FROM Empleado "+
					"WHERE usuario=? and clave=?";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, xuser);
			pstm.setString(2, xpass);
			rs = pstm.executeQuery();
			
			while(rs.next()){
				obj = new EmpleadoDTO();
				obj.setIdEmpleado(rs.getInt(1));
				obj.setNombre(rs.getString(2));
				obj.setPrimerApe(rs.getString(3));
				obj.setSegundoApe(rs.getString(4));
				obj.setFechaNac(rs.getString(5));
				obj.setFechaIngreso(rs.getString(6));
				obj.setUsuario(rs.getString(7));
				obj.setClave(rs.getString(8));
				obj.setIdCargo(rs.getInt(9));
				obj.setTelefono(rs.getString(10));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("MysqlEmp - error: "+e);
		}
		
		return obj;
	}

	@Override
	public List<EmpleadoDTO> listaEmpleado() {
		
		List<EmpleadoDTO> lista = new ArrayList<EmpleadoDTO>();
		
		try {
			cn = MysqlDBConexion.getConexion();
			String sql = "SELECT * FROM Empleado ";
			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()){
				obj = new EmpleadoDTO();
				obj.setIdEmpleado(rs.getInt(1));
				obj.setNombre(rs.getString(2));
				obj.setPrimerApe(rs.getString(3));
				obj.setSegundoApe(rs.getString(4));
				obj.setFechaNac(rs.getString(5));
				obj.setFechaIngreso(rs.getString(6));
				obj.setUsuario(rs.getString(7));
				obj.setClave(rs.getString(8));
				obj.setIdCargo(rs.getInt(9));
				obj.setTelefono(rs.getString(10));
				
				lista.add(obj);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("MysqlListaEmp - error: "+e);
		}
		
		return lista;
	}

}
