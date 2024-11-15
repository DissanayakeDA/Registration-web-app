package onlineexaminationpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String zipcode=request.getParameter("zipcode");
		String cardname=request.getParameter("cardname");
		String cardnumber=request.getParameter("cardnumber");
		String expyear=request.getParameter("expyear");
		String expmonth=request.getParameter("expmonth");
		String cvv =request.getParameter("cvv");
		String amount =request.getParameter("amount");
		
	


		boolean isTrue;
		isTrue = controler.updatedata(id, name, email, address, city, state, zipcode, cardname, cardnumber,expyear,expmonth,cvv,amount);
		
		
		if(isTrue == true) {
			List<examinationmodel> examdetails = controler.getById(id);
			request.setAttribute("examdetails", examdetails);
			String alertMessage = "Data update sucessful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='paymentgetall'</script>");
	}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("paymentwrong.jsp");
			dis2.forward(request, response);
		}
	}

}
