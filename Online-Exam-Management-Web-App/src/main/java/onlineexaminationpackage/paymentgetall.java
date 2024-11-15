package onlineexaminationpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/paymentgetall")
public class paymentgetall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
doGet(request, response);
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 List <examinationmodel> allcharges = controler.getAllexamcharge();
		 request.setAttribute("allcharges", allcharges);

		 RequestDispatcher dispatcher = request.getRequestDispatcher("paymentdisplay.jsp");
		 dispatcher.forward(request, response);
		 	}
	}


