package fr.formation.inti.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.dao.EmployeDaoImpl;
import fr.formation.inti.dao.IEmployeDao;
import fr.formation.inti.entity.Employee;

/**
 * Servlet implementation class SommeServlet
 */
@WebServlet("/Connection")
public class ConnectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IEmployeDao dao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConnectionServlet() {
		dao = new EmployeDaoImpl();

		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Employee> list = dao.findAll();
		list.forEach(System.out:: println);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("login");
		String mdp = request.getParameter("mot_de_passe");
		if ("root@gmail.com".equals(email)&& "123456".equals(mdp)) {
			response.getWriter().println("Vous êtes bien connecté ! ");
		} else {
						// rester dans page
			RequestDispatcher rd = request.getRequestDispatcher("/login.html");
			rd.forward(request, response);
		}

	}

}
