// New LoginServlet.java

package Registration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String stEmail = request.getParameter("stEmail");
        String password = request.getParameter("password");

        RegisterModel student = RegistrationControl.validateLogin(stEmail, password);

        if (student != null) {
            // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("loggedInStudent", student); // Store student details in session
            response.sendRedirect("home2.jsp"); // Redirect to profile page
        } else {
            // Login failed
            String alertMessage = "Invalid Email or Password!";
            response.getWriter().println("<script> alert('"+alertMessage+"'); window.history.back();</script>");
        }
    }
}
