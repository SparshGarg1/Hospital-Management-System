
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminL")
public class AdminL extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals("admin")&& pwd.equals("12345"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("uid", id);
			response.sendRedirect("adminportal.jsp");
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("admin_login.jsp");
			rd.include(request, response);
			out.println("<script>window.alert('Invalid Username and Password');</script>");
		}
	}

}
