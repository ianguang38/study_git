package com.example.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users")
public class users extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("dsfd");
		doPost(request,response);
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String user=request.getParameter("username");
		String pw=request.getParameter("password");
		

		//write ... to database
		String sql="INSERT INTO users VALUES('"+user+"','"+pw+"')";
		int i=JDBC.execute(sql);
		System.out.println("1111111");
		
		response.sendRedirect("index.jsp");
		System.out.println("???");

		
	}

}
