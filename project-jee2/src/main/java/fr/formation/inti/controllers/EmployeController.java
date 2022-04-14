package fr.formation.inti.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.dao.EmployeDaoImpl;
import fr.formation.inti.dao.IEmployeDao;
import fr.formation.inti.entity.Employee;

/**
 * Servlet implementation class EmployeController
 */
@WebServlet("/EmployeController")
public class EmployeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEmployeDao employeeDao; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeController() {
        super();
        employeeDao = new EmployeDaoImpl();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Employee> employee = employeeDao.findAll() ;
			request.setAttribute("list", employee);
		request.getRequestDispatcher("jstl/forEachemp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
