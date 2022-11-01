package com.menu;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeletemenuServlet
 */
@WebServlet("/DeletemenuServlet")
public class DeletemenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		//boolean isTrue;
		
		FoodMenu selectedMenuDelete = MenuDButil.getMenuDetailsById(id);
		
		System.out.println("Menu name1 "+ selectedMenuDelete.getItemName());
		
		request.setAttribute("id", id);
		request.setAttribute("name", selectedMenuDelete.getItemName());
		request.setAttribute("price", selectedMenuDelete.getPrice());
		
		RequestDispatcher dis = request.getRequestDispatcher("deleteMenu.jsp");
		dis.forward(request, response);

	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("Id");
		boolean isTrue;
		
		System.out.println("Delete 1"+ id);
		
		isTrue = MenuDButil.deletemenu(id);
		
		System.out.println("Delete 2");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Menu.jsp");
		dispatcher.forward(request, response);

	}
	
}


