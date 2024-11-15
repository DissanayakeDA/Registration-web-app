// New LoginServlet.java

package TeacherLogin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

@WebServlet("/TeacherLoginServlet")
public class TeacherLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tEmail = request.getParameter("tEmail");
        String tpass = request.getParameter("tpass");

        TeacherLogInModel teacher = TeacherLoginControl.validateLogin(tEmail, tpass);

        if (teacher != null) {
            // Successful login
         /*   HttpSession session = request.getSession();
            session.setAttribute("loggedInteacher", teacher);*/ // Store student details in session
            response.sendRedirect("admindashboard.jsp"); // Redirect to profile page
        } else {
            // Login failed
            String alertMessage = "Invalid Email or Password!";
            response.getWriter().println("<script> alert('"+alertMessage+"'); window.history.back();</script>");
        }
    }
}
