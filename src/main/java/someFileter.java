import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/hello")
public class someFileter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
			throws IOException, ServletException {
		
//		if(request.getSession())
		HttpServletRequest hreq = (HttpServletRequest)request; 
		HttpServletResponse hres = (HttpServletResponse)response; 
        if(hreq.getSession().getAttribute("username")!=null) {
    		chain.doFilter(request, response);
        }else {
        	hres.sendRedirect(hreq.getContextPath()+"/login.jsp");
        }
		
		
		
	}

}
