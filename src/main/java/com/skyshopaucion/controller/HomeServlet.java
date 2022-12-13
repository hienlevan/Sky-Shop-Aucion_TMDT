package com.skyshopaucion.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {

	private static final long serialVersionUID = 6515540719204668816L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url = "/index.jsp";
		// Thêm code xử lý ở đây

		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub

		String url = "/index.jsp";
		// Thêm code xử lý ở đây

		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

}
