package ResultPublishing;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertServlet")
public class insertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentId = request.getParameter("studentId");
		String examName = request.getParameter("examName");
		String examId = request.getParameter("examId");
		String score = request.getParameter("score");
		String grade = request.getParameter("grade");
		
        // Validate Student ID format (4 digits)
	    if (!studentId.matches("\\d{4}")) {
	        request.setAttribute("error", "Student ID must be exactly 4 digits and contain no letters or special characters.");
	        RequestDispatcher dispatcher = request.getRequestDispatcher("publishResult.jsp");
	        dispatcher.forward(request, response);
	        return;
	    }
	    
		boolean isTrue;
		
		isTrue = resultControl.insertdata(studentId, examName, examId, score, grade);
		
		if(isTrue==true) {
			String alertMessage = "data inserted successfully!";
			 response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='getResultServlet'</script>");
		}
		else {
			RequestDispatcher dis2= request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, (ServletResponse) response);
		}

	}

}
