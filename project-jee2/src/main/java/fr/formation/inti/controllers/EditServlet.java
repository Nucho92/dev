package fr.formation.inti.controllers;

import java.io.IOException;
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
 * Servlet implementation class EditServlet
 */
@WebServlet("/edit")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final IEmployeDao daoemployee;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditServlet() {
		super();
		daoemployee = new EmployeDaoImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if ((session!= null )&&( session.getAttribute("name")!= null)) {
			String id = request.getParameter("id");
			if (id != null) {
				Employee empunit = daoemployee.findbyId(Integer.parseInt(id));
				request.setAttribute("empunit", empunit);
				request.getRequestDispatcher("/editemployee.jsp").forward(request, response);
			}
		} else {
			request.getRequestDispatcher("/Logincrud.html").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String title = request.getParameter("title");
//		Employee emp= (Employee) request.getAttribute("empunit");
//		emp.setFirstName(firstName);
//		emp.setLastName(lastName);
//		emp.setTitle(title);
//		daoemployee.update(emp);
//		response.sendRedirect("EmployeController");
		String id = request.getParameter("id");
		Employee emp = daoemployee.findbyId(Integer.parseInt(id));
		emp.setFirstName(firstName);
		emp.setLastName(lastName);
		emp.setTitle(title);
		daoemployee.update(emp);
		response.sendRedirect("EmployeController");

	}

}
