<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap"
      rel="stylesheet"
    />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="stylesR.css"
    />
 
 <style>
 
 h2{
	
 color: #4a12a5;
  font-weight: 600;
  margin-bottom: 10px;
  text-align: center;

  font-family: Roboto Condensed;
}
#searchInput {
			
			margin-left: 35%;
            width: 30%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 35px;
            font-size: 16px;
            border-color: #4a12a5;
        }

#examTable {
			 
            width: 100%;
            border-collapse: collapse;
            align-items:center;
            margin-top: 20px;
            background-color: white !important;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            font-family: Roboto Condensed;
           
        }

        th {
        	 
            background-color: #4a12a5 !important;
            color: white !important;
            padding: 12px;
            text-align: center;
        }

        td {
        	
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        #examTable tr:hover {
        	
            background-color: black !important;
        }

        .update {
            background-color:  #393938; 
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 10px;
            cursor: pointer;
            margin-right: 5px; 
        }

        .update:hover {
            background-color: #45a049; 
        }

        .delete {
            background-color: #c40000;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 10px;
            cursor: pointer;
            
            
        }

        .delete:hover {
            background-color: #e53935; 
        }
 
    .add-new-button {
         background-color: white;
        border-color: black;
        color: black; 
        padding: 10px 20px; 
        text-align: center; 
        text-decoration: none; 
        display: inline-block; 
        font-size: 16px; 
        margin-left:5px;
        cursor: pointer; 
       font-family: Roboto Condensed; 
        border-radius: 10px; 
        transition: background-color 0.3s ease; 
        font-weight: bold;
    }

    .add-new-button:hover {
    
    	background-color: #4a12a5; 
        color: white;
        border: none;
        
    }
    .navbar {
  margin: 10px 10px 10px;
  border-radius: 25px;
  background: #4a12a5;
  box-shadow: 5px;
  border-bottom: none;
}

.navbar-nav .nav-item {
  font-size: 1rem;
  font-family: Roboto Condensed;
  font-weight: 700;
  margin-right: 20px;
}

.navbar-brand {
  margin: 15px;
  font-weight: bold;
  color: rgb(255, 255, 255);
}

.navbar-nav .nav-link {
  color: rgb(255, 255, 255);
  position: relative;
  padding-bottom: 5px;
}

.navbar-nav .nav-link:hover {
  text-decoration: none;
}

.navbar-nav .nav-link::before {
  content: "";
  position: absolute;
  width: 0;
  height: 2px;
  bottom: 0;
  left: 0;
  background-color: rgb(255, 255, 255);
  visibility: hidden;
  transition: all 0.3s ease-in-out;
}

.navbar-nav .nav-link:hover::before {
  visibility: visible;
  width: 100%;
}
@media (max-width: 768px) {
  .navbar {
    padding: 0.5rem 1rem;
  }
}
</style>
 

</head>
<body>

	<nav class="navbar navbar-expand-lg">
      <a class="navbar-brand" href="#">SmartExam</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div
        class="collapse navbar-collapse justify-content-between"
        id="navbarNav"
      >
        <ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
          <li class="nav-item active">
            <a class="nav-link" href="admindashboard.jsp">Dashboard</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Exam Concerns</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="examForm.jsp">Create Exam</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Results Publishing</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="aboutus2.jsp">About Us</a>
          </li>
        </ul>
        
      </div>
    </nav>
            
    <h2><b>Exam Details Table</b></h2>
    
    <input type="text" id="searchInput" placeholder="Search Here" onkeyup="filterTable()"><br>
    
   <a href="examForm.jsp">
    <button class="add-new-button">
        Add New Exam
    </button>
</a>

    
    <table id="examTable" class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Date</th>
                <th>Total Participants</th>
                <th>Duration</th>
                <th>Total Questions</th>
                <th>Time</th>
                <th>Quiz_Password</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="exam" items="${allExams}">
                <tr>
                    <td>${exam.paperID}</td>
                    <td>${exam.title}</td>
                    <td>${exam.date}</td>
                    <td>${exam.totalParticipants}</td>
                    <td>${exam.duration}</td>
                    <td>${exam.totalQuestions}</td>
                    <td>${exam.time}</td>
                    <td>${exam.password}</td>
                    
                    
                    <td>
                        <a href="examupdate.jsp?paperID=${exam.paperID}&Title=${exam.title}&Date=${exam.date}&TotalParticipants=${exam.totalParticipants}&Duration=${exam.duration}&TotalQuestions=${exam.totalQuestions}&Time=${exam.time}&Password=${exam.password}">
                            <button class="update">Update</button>
                        </a>
                        <form action="ExamDeleteServlet" method="post" style="display:inline;">
                            <input type="hidden" name="paperID" value="${exam.paperID}">
                            <button class="delete">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <script>
        function filterTable() {
            var input, filter, table, tr, td, i, j, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("examTable");
            tr = table.getElementsByTagName("tr");
            
            for (i = 1; i < tr.length; i++) { // Start from 1 to skip the header row
                tr[i].style.display = "none"; // Initially hide the row
                td = tr[i].getElementsByTagName("td");
                
                for (j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = ""; // Show the row
                            break; // Exit the loop once a match is found
                        }
                    }
                }
            }
        }
    </script>
    
</body>
</html>