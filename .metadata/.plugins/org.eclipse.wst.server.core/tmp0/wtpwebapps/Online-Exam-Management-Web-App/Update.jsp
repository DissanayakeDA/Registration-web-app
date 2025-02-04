<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel ="icon" href="images/title.png" type="images/png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <!-- Custom CSS (External file) -->
    <link rel="stylesheet" href="resultstyle.css">
<title>Update Exam Results</title>
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
              <a class="nav-link" href="home2.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Courses</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="getResultServlet">Results</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Exams</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="aboutus2.jsp">About Us</a>
            </li>
          </ul>
         
        </div>
     </nav>
     
         <div class="container">
        <!-- Card Component -->
        <div class="card form-card">
            <div class="card-header text-center">
                <h2>Update Exam Results</h2>
            </div>
            <div class="card-body">
<%
   String resultId = request.getParameter("resultId");
   String studentId = request.getParameter("studentId");
   String examName = request.getParameter("examName");
   String examId = request.getParameter("examId");
   String score = request.getParameter("score");
   String grade = request.getParameter("grade");
%>

              <form id="Updateform" action="UpdateServlet" method="post" onsubmit="return validateStudentId();">
                <!-- Form Group for Result ID -->
                     <div class="mb-3">
                        <label for="resultId" class="form-label">Result ID</label>
                        <input type="text" class="form-control" id="resultId" name="resultId" value ="<%=resultId%>" readonly>
                    </div>

                    <!-- Form Group for Student ID -->
                    <div class="mb-3">
                        <label for="studentId" class="form-label">Student ID</label>
                        <input type="text" class="form-control" id="studentId" name="studentId" value ="<%=studentId%>" required>
                    </div>

                    <!-- Form Group for Exam Name -->
                    <div class="mb-3">
                        <label for="examName" class="form-label">Exam Name</label>
                        <input type="text" class="form-control" id="examName" name="examName" value ="<%=examName%>" required>
                    </div>
                    <!-- Generated Exam ID -->
                    <div class="mb-3">
                        <label for="examId" class="form-label">Exam ID</label>
                        <input type="text" class="form-control" id="examId" name="examId" value ="<%=examId%>" readonly>
                    </div>

                    <!-- Form Group for Score -->
                    <div class="mb-3">
                        <label for="score" class="form-label">Score</label>
                        <input type="number" class="form-control" id="score" name="score" value ="<%=score%>" required onchange="calculateGrade()">
                    </div>

                    <!-- Auto-generated Grade -->
                    <div class="mb-3">
                        <label for="grade" class="form-label">Grade</label>
                        <input type="text" class="form-control" id="grade" name="grade" value ="<%=grade%>" readonly>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary">Update Result</button>
                </form>
           </div>
      </div>
</div>
    <!-- Bootstrap JS (Optional for interactive components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS (External file) -->
    <script src="script.js"></script>

</body>
</html>