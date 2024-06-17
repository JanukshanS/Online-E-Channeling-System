package conuser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("uid");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("mail");
        String username = request.getParameter("uname");
        String password = request.getParameter("pwd");

        boolean isTrue = userDB.updateuser(id, name, phone, email, username, password);

        if (isTrue) {
            // If the update is successful, fetch the updated user details
            List<User> updatedUserDetails = userDB.getuserdetails(id);
            request.setAttribute("userdetails", updatedUserDetails);
            
            // Update the session attributes with new values
            HttpSession session = request.getSession();
            session.setAttribute("userdetails", updatedUserDetails);
        } else {
            // If the update fails, set an error message
            request.setAttribute("errorMessage", "Failed to update user details.");
        }

        // Dispatch to the userportal.jsp page regardless of the update result
        RequestDispatcher dis = request.getRequestDispatcher("userportal.jsp");
        dis.forward(request, response);
    }
}
