package com.example.servlet;

import java.io.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;

@WebServlet("/match")
@MultipartConfig
public class match extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String sql="SELECT * FROM drug_label INNER JOIN (select * from result where username='"+(String)request.getSession().getAttribute("username")+"') as t ON drug_label.id=t.drug";
        request.setAttribute("result", JDBC.result(sql));
        request.getRequestDispatcher("result.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Part requestPart=null;
		try {
			requestPart = request.getPart("annovar");
		}catch(Exception e){
			requestPart=(Part)request.getSession().getAttribute("ao");
		}	
		if(request.getSession().getAttribute("username")==null) {
			request.getRequestDispatcher("welcome.jsp").include(request, response);
		}else {
			InputStream inputStream = requestPart.getInputStream();
	        byte[] bytes = inputStream.readAllBytes();
	        String content = new String(bytes);
	        String[] lines=content.split("\n");
	        ArrayList<String> a=new ArrayList<String>();
	        for(String line:lines) {
	        	String[] entries=line.split("\t");
	        	String refgene=entries[6];
	        	ArrayList<HashMap<String,String>> rs=JDBC.result("SELECT id,summary_markdown FROM drug_label");
	        	for(HashMap<String,String> drug:rs) {
	        		if(drug.get("summary_markdown").contains(refgene)&&!a.contains(drug.get("id"))) {
	        			a.add(drug.get("id"));
						String sql="INSERT INTO result VALUES('"+(String)request.getSession().getAttribute("username")+"','"+drug.get("id")+"')";
						JDBC.execute(sql);
	        		}
	        	}
	        }
			

	        String path=request.getContextPath();
	        response.sendRedirect(path+"/result");
			
		}
	}

}