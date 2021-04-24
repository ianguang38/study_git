import java.io.*;
import java.sql.*;
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
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String user=request.getParameter("username");
		String pw=request.getParameter("password");
		
		//write the user information to local file 
		String path=this.getServletContext().getRealPath(getServletInfo()+"\\src\\main\\webapp\\WEB-INF\\1.csv");
		BufferedWriter out=new BufferedWriter(new FileWriter(path,true));
		String line=user+","+pw+"\n";
		out.write(line);
		out.close();
		
		//write ... to database
		String sql="INSERT INTO users VALUES('"+user+"','"+pw+"')";
		int i=JDBC.execute(sql);
		System.out.println(i);
		
	}

}
