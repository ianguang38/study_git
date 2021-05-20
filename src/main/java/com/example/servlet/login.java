package com.example.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String user=request.getParameter("username");
		String pw=request.getParameter("password");
		
		if(request.getParameter("action").equals("register")) {
			String sql="INSERT INTO users VALUES('"+user+"','"+pw+"')";
			JDBC.execute(sql);
			response.sendRedirect("index.jsp");
		}else {
			String sql="SELECT * FROM users WHERE username='"+user+"' AND password='"+pw+"'";
			if(JDBC.result(sql).size()>0) {
				request.getSession().setAttribute("username",user);
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("welcome.jsp");
			} 
		}
	}
}
