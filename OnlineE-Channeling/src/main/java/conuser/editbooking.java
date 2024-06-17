package conuser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editbooking")
public class editbooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {
		String bid = request.getParameter("bid");
		String pname = request.getParameter("pname");
		String dname = request.getParameter("dname");
		String date = request.getParameter("date");
		String sesion = request.getParameter("session");
		String amount = request.getParameter("amount");
		String userId = request.getParameter("userId");
		
		boolean isTrue;
		
		isTrue = bookingdbutil.updatebooking(pname, dname, date, sesion, amount, bid);
		
		if(isTrue == true) {
			
			//String userid = (String) request.getSession().getAttribute("userId");
			
			List<booking> listBooking = bookingdbutil.getdetails(userId);
			request.setAttribute("listBooking", listBooking);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookinglist.jsp");
			dis.forward(request, response);
		}else {
			
			List<booking> listBooking = bookingdbutil.getdetails(userId);
			request.setAttribute("listBooking", listBooking);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookinglist.jsp");
			dis.forward(request, response);
		}
	} catch (Exception e) {
        e.printStackTrace();
	}

	}
}


