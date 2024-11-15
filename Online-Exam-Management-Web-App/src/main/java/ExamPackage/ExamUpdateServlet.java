package ExamPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ExamUpdateServlet")
public class ExamUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paperID = request.getParameter("paperID");
		String Title = request.getParameter("Title");
		String Date = request.getParameter("Date");
		String TotalParticipants = request.getParameter("TotalParticipants");
		String Duration = request.getParameter("Duration");
		String TotalQuestions = request.getParameter("TotalQuestions");
		String Time = request.getParameter("Time");
		String Password = request.getParameter("Password");
		
		
		
		
		boolean isTrue;
		isTrue = ExamControl.updatedata(paperID, Title, Date, TotalParticipants, Duration, TotalQuestions, Time, Password);
		
		if(isTrue == true) {
					
				List<ExamModel> examdetails = ExamControl.getById(paperID);
				request.setAttribute("examdetails", examdetails);
				
				String alertMessage = "Data Update Successful ";
				response.getWriter().println(
						"<div id='custom-alert'>" +
						        "<span class='closebtn' onclick='closeAlert()'>&times;</span>" +
						        "<div class='alert-icon'>&#10004;</div>" +
						        alertMessage +
						        "</div>" +
						        "<script>" +
						        "function closeAlert() { document.getElementById('custom-alert').style.display = 'none'; }" +
						        "setTimeout(function() { window.location.href = 'GetAllExamServlet'; }, 1000);" +  
						        "</script>" +
						        "<style>" +
						        "#custom-alert {" +
						        "   padding: 40px;" +
						        "   background-color: #4CAF50;" +  
						        "   color: white;" +
						        "   position: fixed;" +
						        "   top: 50%;" +
						        "   left: 50%;" +
						        "   transform: translate(-50%, -50%);" +  
						        "   z-index: 9999;" +
						        "   font-family: 'Arial', sans-serif;" +
						        "   font-size: 24px;" +  
						        "   border-radius: 10px;" +
						        "   box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);" +  
						        "   width: 400px;" +  
						        "   text-align: center;" +
						        "}" +
						        ".alert-icon {" +
						        "   font-size: 48px;" +  
						        "   margin-bottom: 10px;" +  
						        "}" +
						        ".alert-message {" +
						        "   font-size: 20px;" +  
						        "}" +
						        ".closebtn {" +
						        "   position: absolute;" +
						        "   top: 10px;" +
						        "   right: 20px;" +
						        "   color: white;" +
						        "   font-weight: bold;" +
						        "   font-size: 28px;" +
						        "   cursor: pointer;" +
						        "}" +
						        ".closebtn:hover {" +
						        "   color: black;" +
						        "}"  +
						        "</style>");
				
		}
		else {
					
				RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
				dis2.forward(request, response);
			}
				
	}
	}



