package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.EmpleadoDTO;
import service.EmpleadoService;

/**
 * Servlet implementation class ServletEmpleado
 */
@WebServlet("/ServletEmpleado")
public class ServletEmpleado extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	EmpleadoService servEmp = new EmpleadoService();
       
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String xtipo = request.getParameter("tipo");
		
		System.out.println("TIPO: "+xtipo);
		
		if(xtipo.equals("login")){
			loginSesion(request, response);
		}else if(xtipo.equals("cerrarSesion")){
			cerrarSesion(request, response);
		}else if(xtipo.equals("listar")){
			listarEmpleado(request, response);
		}
	}

	private void listarEmpleado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("dataEmp", servEmp.listaEmpleado());
		request.getRequestDispatcher("empleados.jsp").forward(request, response);
	}

	private void cerrarSesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	private void loginSesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String xuser = request.getParameter("txtusuario");
		String xpass = request.getParameter("txtpassword");
		
		System.out.println("usuario: "+xuser);
		System.out.println("pass: "+xpass);
		
		EmpleadoDTO obj = servEmp.autentificacionEmpleado(xuser, xpass);
		
		if(obj != null){
			HttpSession sesion = request.getSession();
			sesion.setAttribute("usuario", obj);
			request.getRequestDispatcher("ventas.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "Usuario y/o contraseña incorrectos");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEmpleado() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
