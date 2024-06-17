package conuser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletebookingservlet")
public class deletebookingservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = (String) request.getSession().getAttribute("userId");
		String id = request.getParameter("bid");

		boolean isTrue;
		
		isTrue = bookingdbutil.deletebooking(id);
		
		if(isTrue == true) {
			
			String userid = (String) request.getSession().getAttribute("userId");
			//String userId = request.getParameter("userId");	
			
				List<booking> listBooking = bookingdbutil.getdetails(userid);
				request.setAttribute("listBooking", listBooking);
				
				RequestDispatcher dis = request.getRequestDispatcher("bookinglist.jsp");
				dis.forward(request, response);
//			RequestDispatcher dis = request.getRequestDispatcher("deleteresult.jsp?result=Successfully Deleted");
//			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
			dis.forward(request, response);
		}
	}

	}

