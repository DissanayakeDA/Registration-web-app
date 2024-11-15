package ResultPublishing;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("resultId");
		boolean isTrue;
		isTrue = resultControl.deletedata(id);
		
		if(isTrue == true) {
			String alertMessage = "Data deleted successfully!!";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='getResultServlet';</script>");
		}
		else {
			List<resultModel> resultdetails = resultControl.getById(id);
			request.setAttribute("resultdetails",resultdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}

}
