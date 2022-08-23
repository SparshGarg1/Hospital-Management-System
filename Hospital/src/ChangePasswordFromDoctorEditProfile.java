
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChangePasswordFromDoctorEditProfile")
public class ChangePasswordFromDoctorEditProfile extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String npwd = request.getParameter("npwd");
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hos", "root", "sparsh1574");
			String qr = "select * from doctor where id=? and password=?";
			PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(1, id);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				String qr1 = "update doctor set password=? where id=?";
				PreparedStatement ps1 = con.prepareStatement(qr1);
				ps1.setString(1, npwd);
				ps1.setString(2, id);
				int i = ps1.executeUpdate();
				if(i>0)
				{
					RequestDispatcher rd = request.getRequestDispatcher("doctoreditprofile.jsp");
					rd.include(request, response);
					out.println("<script>window.alert('Password Changed Successfully');</script>");
				}
				else
				{
					RequestDispatcher rd = request.getRequestDispatcher("doctoreditprofile.jsp");
					rd.include(request, response);
					out.println("<script>window.alert('Password not changed, some error occured');</script>");
				}
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("doctoreditprofile.jsp");
				rd.include(request, response);
				out.println("<script>window.alert('Old Password Is Wrong');</script>");
			}
		} 
		catch (Exception e) 
		{
			out.println(e);
		}
	}

}
