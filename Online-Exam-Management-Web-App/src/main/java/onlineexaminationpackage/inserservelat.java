package onlineexaminationpackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class inserservelat
 */
@WebServlet("/inserservelat")
public class inserservelat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		String cvv = request.getParameter("cvv");
		String amount = request.getParameter("amount");
	
		boolean isTrue;
		
		isTrue = controler.insertdata(name, email, address, city, state, zipcode, cardname, cardnumber,expyear,expmonth,cvv,amount);
		
		if(isTrue == true) {
			String alertMessage = "Data insert sucessful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='teacherLogin.jsp'</script>");
	}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("paymentwrong.jsp");
			dis2.forward(request, response);
		}
	}

}
