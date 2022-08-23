

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

/**
 * Servlet implementation class UpdateDoctorfromdoctoreditprofile
 */
@WebServlet("/UpdateDoctorfromdoctoreditprofile")
public class UpdateDoctorfromdoctoreditprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id = request.getParameter("id1");
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String qualification = request.getParameter("qualification");
		String specialist = request.getParameter("specialist");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hos", "root", "sparsh1574");
			String qr="update doctor set name=?, dob=?, qualification=?, specialist=?,  mobile=? where id =?";
			PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(1, name);
			ps.setString(2, dob);
			ps.setString(3, qualification);
			ps.setString(4, specialist);
			ps.setString(5, mobile);
			ps.setString(6, id);
			int i = ps.executeUpdate();
			if(i>0){
				RequestDispatcher rd = request.getRequestDispatcher("doctoreditprofile.jsp?");
				rd.include(request, response);
				out.println("<script>window.alert('Updated Sucessfully');</script>");
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("doctorportal.jsp");
				rd.include(request, response);
				out.println("<script>window.alert('Not Updated Sucessfully');</script>");
			}
		} catch (Exception e) {
			// TODO: handle exception
			out.println(e);
		}
	}

}
