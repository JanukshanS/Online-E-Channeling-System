package conuser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insertuser")
public class insertuser extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Catch Data from User 
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("mail");
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		
		//Call insert function
		boolean isTrue;
		
		isTrue = userDB.insertuser(name, phone, email, username, password);
		
		if(isTrue == true) {
			List<User> userdetails = userDB.getdetails(username);
			request.setAttribute("userdetails", userdetails);
			
			request.setAttribute("result", "Successfully Registered");
			
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("error.jsp");
			dis2.forward(request, response);
		}
		
	}

}
