package com.homeServlet.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.ant.FindLeaksTask;
import com.homeServlet.dao.ProductDao;
import com.homeServlet.domain.Product;
/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		
			ProductDao pdao = new ProductDao();
			
			if ( request.getParameter("action")!= null && request.getParameter("action").equals("add"))
			{
				int pid = Integer.parseInt(request.getParameter("id"));
				Product p =pdao.findOne(pid);
				// recuupere panier session
				List<Product> cart = (List<Product>) request.getSession().getAttribute("cart");
				// ajout dans panier
				cart.add(p);
				request.setAttribute("inventaire", pdao.findAll());
			
				request.getRequestDispatcher("pages/mylist.jsp").forward(request, response);
			}
			else if ( request.getParameter("action")!= null && request.getParameter("action").equals("rm"))
			{
				int pid= Integer.parseInt(request.getParameter("id"));
				if ( pdao.findOne(pid) != null) {
				Product p =pdao.findOne(pid);
				// recuupere panier session
				List<Product> cart = (List<Product>)request.getSession().getAttribute("cart");
				
				// suppression dans panier
				cart.remove(p);
				
			
				request.setAttribute("inventaire", pdao.findAll());
				request.getRequestDispatcher("pages/mylist.jsp").forward(request, response);
				}
			}
			else 		
				request.getRequestDispatcher("pages/cart.jsp").forward(request, response);

		}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.getRequestDispatcher("pages/cart.jsp").forward(request, response);
	}

}
