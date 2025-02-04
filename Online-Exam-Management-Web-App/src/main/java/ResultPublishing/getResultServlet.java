package ResultPublishing;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet("/getResultServlet")
public class getResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<resultModel> allresult = resultControl.GetResult();
		request.setAttribute("allresult", allresult);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("viewResult.jsp");
		dispatcher.forward(request, response);
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         doGet(request,response);
		
	}
	
	
	
}
