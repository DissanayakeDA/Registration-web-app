package onlineexaminationpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		
		if (id == null || id.isEmpty()) {
	        // Handle the case where paperID is missing
	        response.getWriter().println("<script>alert('Error: Paper ID is missing.');" + "window.location.href='paymentgetall';</script>");
	        return;
	    }
		
		boolean isTrue;
		isTrue = controler.deletedata(id);
		
	 
		if(isTrue) {
		
			String alertMessage = "Data delete sucessful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='paymentgetall'</script>");
	}
		else {
			
			List<examinationmodel> examdetails = controler.getById(id);
			request.setAttribute("examdetails", examdetails);
			RequestDispatcher dispatcher = request.getRequestDispatcher("paymentwrong.jsp");
			dispatcher.forward(request, response);
		}
	}
	}


	
	

