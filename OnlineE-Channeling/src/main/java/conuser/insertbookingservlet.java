package conuser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insertbookingservlet")
public class insertbookingservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Catch Data from User 
				String pname = request.getParameter("pname");
				String age = request.getParameter("age");
				String date = request.getParameter("date");
				String dname = request.getParameter("dname");
				String hname = request.getParameter("hname");
				String session = request.getParameter("session");
				String amount = request.getParameter("amount");
				String cnumber = request.getParameter("cnumber");
				String userId = request.getParameter("userId");
				
				//Call insert function
				boolean isTrue;
				
				isTrue = bookingdbutil.insertappointment(pname, age, date, dname, hname, session, amount, cnumber,userId);
				
				if(isTrue == true) {
					
					
					RequestDispatcher dis = request.getRequestDispatcher("userportal.jsp?result=accepted");
					dis.forward(request, response);
					
				}else {
					RequestDispatcher dis = request.getRequestDispatcher("userportal.jsp?result=false");
					dis.forward(request, response);
				}
				
			}


}
