package conuser;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//Get Detail from User
		String username = request.getParameter("uname");
		String password = request.getParameter("pw");
		
		boolean isTrue;
		
		isTrue= userDB.validate(username, password);
		
		if(isTrue==true) {
			List<User> userdetails = userDB.getdetails(username);
			request.setAttribute("userdetails", userdetails);
			User user = userdetails.get(0);
			String userId =  String.valueOf(user.getId());
			 // Create session
            HttpSession session = request.getSession();
            // Set user ID attribute in session
            session.setAttribute("userId", userId);
            session.setAttribute("userdetails", userdetails);

			
			RequestDispatcher dis = request.getRequestDispatcher("userportal.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is Incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
	
		
	}

}
