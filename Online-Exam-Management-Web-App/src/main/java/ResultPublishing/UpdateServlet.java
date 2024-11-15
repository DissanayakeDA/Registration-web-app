package  ResultPublishing;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resultId = request.getParameter("resultId");
		String studentId = request.getParameter("studentId");
		String examName = request.getParameter("examName");
		String examId = request.getParameter("examId");
		String score = request.getParameter("score");
		String grade = request.getParameter("grade");
		
		boolean isTrue;
		
		
		isTrue = resultControl.updatedata(resultId, studentId, examName, examId, score, grade);


		//isTrue = resultControl.insertdata(studentId, examName, examId, score, grade);
		
		if(isTrue==true) {
			List<resultModel> resultdetails = resultControl.getById(resultId);
			request.setAttribute("resultdetails", resultdetails);
			String alertMessage = "data updated successfully!";
			 response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='getResultServlet'</script>");
		}
		else {
			RequestDispatcher dis2= request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, (ServletResponse) response);
		}
	}

}
