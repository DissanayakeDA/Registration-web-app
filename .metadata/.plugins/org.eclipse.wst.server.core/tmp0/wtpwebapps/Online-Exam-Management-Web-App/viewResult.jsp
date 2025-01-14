<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam Results</title>
    <link rel ="icon" href="images/score.png" type="image/png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="resultstyle.css"> <!-- Link to external CSS -->
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
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
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
              <a class="nav-link" href="publishResults.jsp">Result Publishing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Profile</a>
            </li>
          </ul>
        </div>
     </nav>
    <div class="container">
        <h1 class="mt-4">Exam Results</h1>
         <div class="mt-4">
            <input type="text" id="searchInput" placeholder="Search..." class="form-control" onkeyup="filterResults()">
            <a href="publishResults.jsp" class="btn btn-secondary">Publish New Results</a>
        </div>
        <!-- View Results Table -->
        <table class="table table-striped table-hover table-responsive" id="resultsTable">
            
                <tr>
                    <th>Result Id</th>
                    <th>Student ID</th>
                    <th>Exam Name</th>
                    <th>Exam Id</th>
                    <th>Score</th>
                    <th>Grade</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="results" items="${allresult}">
                <tr>
                   <td>${results.resultId}</td>
                   <td>${results.studentId}</td>
                   <td>${results.examName}</td>
                   <td>${results.examId}</td>
                   <td>${results.score}</td>
                   <td>${results.grade}</td>
                   
                   <td>

<div class="d-inline">
    <a href="Update.jsp?resultId=${results.resultId}&studentId=${results.studentId}&examName=${results.examName}&examId=${results.examId}&score=${results.score}&grade=${results.grade}">
        <button class="btn btn-primary">Update</button>
    </a>

<form action="DeleteServlet" method="post" class="d-inline">
    <input type="hidden" name="resultId" value="${results.resultId}" />
    <button class="btn btn-danger">Delete</button>
</form>

</div>

                   </td>
                </tr>
             </c:forEach>  
        </table>

    </div>

    <!-- Include Bootstrap JS and your custom JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="scripts.js"></script>
    <script>
    document.getElementById("searchInput").addEventListener("input",filterResults);
    function filterResults() {
        var input, filter, table, tr, td, i, j, txtValue;
        input = document.getElementById('searchInput');
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        tr = table.getElementsByTagName("tr");

        // Loop through all table rows, and hide those that don't match the search query
        for (i = 1; i < tr.length; i++) { 
            let rowMatches = false; 
            td = tr[i].getElementsByTagName("td");

            for (j = 0; j < td.length; j++) { // Loop through all columns in the row
                if (td[j]) {
                    txtValue = td[j].textContent || td[j].innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        rowMatches = true; // Mark row as matching if any column contains the search term
                        break; // Exit the inner loop if a match is found
                    }
                }
            }

            // Display the row if it matches, otherwise hide it
            tr[i].style.display = rowMatches ? "" : "none";
        }
    }
    </script> 
</body>
</html>
