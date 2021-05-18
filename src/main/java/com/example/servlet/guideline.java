package com.example.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guideline")
public class guideline extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String sql="SELECT * FROM dosing_guideline";
		ArrayList a=JDBC.result(sql);
		request.setAttribute("guidelines", a);
		request.getRequestDispatcher("guideline.jsp").forward(request,response);
	}

}
