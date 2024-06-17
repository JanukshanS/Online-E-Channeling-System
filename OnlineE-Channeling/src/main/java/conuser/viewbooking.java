package conuser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/viewbooking")
public class viewbooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String userId = (String) request.getSession().getAttribute("userId");
		//String userId = request.getParameter("userId");	
		
			List<booking> listBooking = bookingdbutil.getdetails(userId);
			request.setAttribute("listBooking", listBooking);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookinglist.jsp");
			dis.forward(request, response);
	} catch (Exception e) {
        e.printStackTrace();
			
	}

}
}
