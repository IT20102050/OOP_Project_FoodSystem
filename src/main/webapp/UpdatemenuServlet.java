package com.menu;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatemenuServlet")
public class UpdatemenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");

		FoodMenu selectedMenu = MenuDButil.getMenuDetailsById(id);
		
		System.out.println("Menu name1 "+ selectedMenu.getItemName());
		
		request.setAttribute("id", id);
		request.setAttribute("name", selectedMenu.getItemName());
		request.setAttribute("price", selectedMenu.getPrice());
		
		RequestDispatcher dis = request.getRequestDispatcher("updateMenu.jsp");
		dis.forward(request, response);
		
		boolean isTrue;

	}
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		name,prece
		
		

		MenuDButil.updatemenu(id);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("Menu.jsp");
		dis.forward(request, response);
		
		boolean isTrue;

	}

}
