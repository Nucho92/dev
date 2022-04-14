package fr.formation.inti.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.dao.IUser;
import fr.formation.inti.dao.IUsersRoles;
import fr.formation.inti.dao.UserDao;
import fr.formation.inti.dao.UsersRolesDao;
import fr.formation.inti.entity.Users;
import fr.formation.inti.entity.UsersRoles;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/User")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IUser userDao;
	private IUsersRoles usersrolesDao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		userDao=new UserDao();
		usersrolesDao= new UsersRolesDao();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Users user = userDao.findUserBy(username, password);
		UsersRoles usr = usersrolesDao.findUserRolesbyUsers(user);
		String useroles=usr.getUserRole();
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("role", useroles);
			session.setAttribute("name", username);
			session.setAttribute("pwd", password);
			request.getRequestDispatcher("/Crudlog.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/Logincrud.html").forward(request, response);
		}
		
	}

}
