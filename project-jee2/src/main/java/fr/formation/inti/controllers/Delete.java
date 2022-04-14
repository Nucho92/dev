package fr.formation.inti.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.dao.EmployeDaoImpl;
import fr.formation.inti.dao.IEmployeDao;
import fr.formation.inti.entity.Employee;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEmployeDao employeeDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        employeeDao = new EmployeDaoImpl();
     
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id"); //récupère l'emp_id
		if(id!=null) {
			Employee emp = employeeDao.findbyId(Integer.parseInt(id));
			employeeDao.delete(emp);
			request.getRequestDispatcher("EmployeController").forward(request, response);
		};
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
