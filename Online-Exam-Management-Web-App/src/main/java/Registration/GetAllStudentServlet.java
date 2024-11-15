//GetAllStudentServlet

package Registration;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GetAllStudentServlet")
public class GetAllStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List <RegisterModel> allStudent = RegistrationControl.getAllStudent();
		request.setAttribute("allStudent", allStudent);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("allstudent.jsp");
		dispatcher.forward(request, response);
		
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}
}
