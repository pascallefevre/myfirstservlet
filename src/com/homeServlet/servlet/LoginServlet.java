package com.homeServlet.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homeServlet.dao.ProductDao;
import com.homeServlet.domain.Product;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if ( request.getParameter("action").equals("login"))
		{
			
			request.getRequestDispatcher("pages/login.jsp").forward(request, response);
		}
		else if (request.getParameter("action").equals("logout"))
		{
			request.getSession().invalidate();
			request.getRequestDispatcher("pages/home.jsp").forward(request, response);
			
		}
		else request.getRequestDispatcher("pages/error.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("inputlogin");
		String pw = request.getParameter("inputpw");
		
		if(login.equals("root")&&pw.equals("root")) {
			request.getSession().setAttribute("user", login);
			request.getSession().setAttribute("cart", new ArrayList<Product>());
			response.sendRedirect("MyList");
		}
		else 
			request.getRequestDispatcher("pages/login.jsp").forward(request, response);
	}

}
