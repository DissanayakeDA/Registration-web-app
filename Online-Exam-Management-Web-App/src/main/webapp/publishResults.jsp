<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Publish Exam Results</title>
    <link rel ="icon" href="images/title.png" type="image/png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">
    
    <!-- Custom CSS (External file) -->
    <link rel="stylesheet" href="resultstyle.css">
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
              <a class="nav-link" href="#">Create Exam</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="publishResults.jsp">Result Publishing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Profile</a>
            </li>
          </ul>
           <div>
          <a href=admindashboard.jsp>
          <button id="profileButton" class="user-btn">
            <i class="fas fa-user"></i>
          </button>
          </a>
        </div>
        </div>
     </nav>
    
    <div class="container">
<c:if test="${not empty error}">
    <div class="alert alert-danger">${error}</div>
</c:if>

        <!-- Card Component -->
        <div class="card form-card">
            <div class="card-header text-center">
                <h2>Publish Exam Results</h2>
            </div>
            <div class="card-body">
                <!-- Publish Results Form -->
                <form id="publishForm" action="insertServlet" method="post" onsubmit="return validateStudentId();">

                    <!-- Form Group for Student ID -->
                    <div class="mb-3">
                        <label for="studentId" class="form-label">Student ID</label>
                        <input type="text" class="form-control" id="studentId" name="studentId" required>
                         <div id="studentIdError" class="text-danger"></div> 
                    </div>

                    <!-- Form Group for Exam Name -->
                    <div class="mb-3">
                        <label for="examName" class="form-label">Exam Name</label>
                        <input type="text" class="form-control" id="examName" name="examName" required>
                    </div>
                    <!-- Generated Exam ID -->
                    <div class="mb-3">
                        <label for="examId" class="form-label">Exam ID</label>
                        <input type="text" class="form-control" id="examId" name="examId" readonly>
                    </div>

                    <!-- Form Group for Score -->
                    <div class="mb-3">
                        <label for="score" class="form-label">Score</label>
                        <input type="number" class="form-control" id="score" name="score" required onchange="calculateGrade()">
                         <div id="scoreError" class="text-danger"></div>
                    </div>

                    <!-- Auto-generated Grade -->
                    <div class="mb-3">
                        <label for="grade" class="form-label">Grade</label>
                        <input type="text" class="form-control" id="grade" name="grade" readonly>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary">Publish Result</button>
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
