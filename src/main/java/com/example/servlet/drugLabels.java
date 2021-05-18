package com.example.servlet;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

@WebServlet("/druglabels")
public class drugLabels extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String sql="SELECT * FROM drug_label";
		ArrayList a=JDBC.result(sql);
		request.setAttribute("labels", a);
		request.getRequestDispatcher("drugLabel.jsp").forward(request,response);
	}

}
