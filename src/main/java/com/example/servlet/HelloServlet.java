package com.example.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/result")
public class HelloServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String sql="SELECT DISTINCT * FROM drug_label "
		  		 + "INNER JOIN (select * from result where username='"
		         + (String)request.getSession().getAttribute("username")
		         + "') as t ON drug_label.id=t.drug";

 		request.setAttribute("result",JDBC.result(sql));
 		request.getRequestDispatcher("result.jsp").forward(request, response);
 		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
