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
		
		if(request.getParameter("action")=="login") {request.getRequestDispatcher("/users").forward(request,response);}
		
		String sql="SELECT * FROM users WHERE username='"+user+"' AND password='"+pw+"'";
		System.out.println(sql);
		if(JDBC.result(sql).size()>0) {
			request.getSession().setAttribute("username",user);
			response.sendRedirect("index.jsp");
			System.out.println("sql");
			/*
			 * if(Pattern.matches(".*match",request.getHeader("Referer"))) {
			 * response.sendRedirect(request.getContextPath()+"/match"); }else {
			 * response.sendRedirect(request.getContextPath()); }
			 */
		}else {
			/*
			 * out.print("<html>"+ "<form method=\"POST\">\r\n" +
			 * "			<h2>whether use the username and password to register automatically?</h2>\r\n"
			 * + "			<input type=\"hidden\" name=\"username\" value=\""+user+"\">" +
			 * "			<input type=\"hidden\" name=\"password\" value=\""+pw+"\">" +
			 * "			<button formaction=\"users\">yes</button>\r\n" +
			 * "			<button formaction=\"SignIn.jsp\">no</button>\r\n" +
			 * "		</form><html>");
			 */
			
			response.sendRedirect("welcome.jsp");
			System.out.println("djfs");
		} 
	}
		
}
