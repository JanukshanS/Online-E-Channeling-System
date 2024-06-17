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

@WebServlet("/doctorservlet")
public class doctorservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Get Detail from User
		String dname = request.getParameter("dname");
		String hname = request.getParameter("hname");
		String id=request.getParameter("userid");

		response.getWriter().println(id);		
		boolean isTrue;
		
		isTrue= doctordbutil.searchdoctor(dname, hname);
		
		if(isTrue==true) {
	
			List<doctor> docdetails = doctordbutil.getdetails(dname, hname);
			request.setAttribute("docdetails", docdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("channel.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("channelform.jsp");
			dis.forward(request, response);
		}
	
	}

}
