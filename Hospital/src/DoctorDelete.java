
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DoctorDelete")
public class DoctorDelete extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("id");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hos", "root", "sparsh1574");
			String qr = "delete from doctor where id=?";
			PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(1, id);
			int i = ps.executeUpdate();
			if(i>0)
			{
				RequestDispatcher rd  = request.getRequestDispatcher("admindoctor.jsp");
				rd.include(request, response);
				out.println("<script>window.alert('Doctor Detail Deleted From Records Successfully');</script>");
				}
			else {
				RequestDispatcher rd  = request.getRequestDispatcher("adminportal.jsp");
				rd.include(request, response);
				out.println("<script>window.alert('Unable To Delete The Record');</script>");
			
		}
	}
		catch (Exception e) {
			// TODO: handle exception
			out.println(e);
		}
	}

}
