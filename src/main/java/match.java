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

@WebServlet("/match")
public class match extends HttpServlet {

	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Part requestPart = request.getPart("annovar");
		InputStream inputStream = requestPart.getInputStream();
        byte[] bytes = inputStream.readAllBytes();
        String content = new String(bytes);
        String[] lines=content.split("\n");
        ArrayList<String> a=new ArrayList<String>();
        for(String line:lines) {
        	String[] entries=line.split("\t");
        	String refgene=entries[6];
        	ArrayList<HashMap> rs=JDBC.result("SELECT id,summary_markdown FROM drug_label");
        	for(HashMap<String,String> drug:rs) {
        		if(drug.get("summary_markdown").contains(refgene)&&!a.contains(drug.get("id"))) {
        			a.add(drug.get("id"));
        			System.out.println(drug.get("id"));
        		}
        	}
        }
	}

}