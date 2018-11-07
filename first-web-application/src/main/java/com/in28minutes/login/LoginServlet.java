package com.in28minutes.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.in28minutes.todo.Todoservice;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
	private Loginservice uservalidationservice = new Loginservice();
	private Todoservice todoservice = new Todoservice();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		boolean isUserValid = uservalidationservice.isUserValid(name, password);
		if(isUserValid)
		{
			//This wa directing to welcome.jsp directly
			//request.setAttribute("name",name);
			//request.setAttribute("todos", todoservice.retrieveTodos());
			//request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
			request.getSession().setAttribute("name",name);
			response.sendRedirect("/list-todo.do");
		}
		else
		{
			request.setAttribute("Errormessage", "Invalid User!");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}	
	}
}