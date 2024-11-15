<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="shortcut icon" href="concern.png" />
<title>Exam Concerns</title>

<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
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
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <!-- Bootstrap Icons -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <style>
      body {
        font-family: Roboto Condensed;
        background-color: white;
        margin: 0;
        padding: 0;
      }
      .form-control {
        border: 1px solid #686d76;
        border-radius: 5px;
        padding: 12px;
        font-size: 1rem;
        background-color: #eeeeee; /* Matches background */
        color: #121212; /* Text color */
        transition: border-color 0.3s ease;

        font-family: Roboto Condensed;
      }
      .form-control:focus {
        border-color: #000000; /* Change border to black on focus */
        box-shadow: none; /* Remove any default focus shadow */
        outline: none;
        background-color: #eeeeee;

        font-family: Roboto Condensed;
      }
      .form-container {
        padding: 30px;
        border-radius: 8px;
        background-color: transparent;
        box-shadow: none;

        font-family: Roboto Condensed;
      }
      p {
        color: #000000;
        margin-bottom: 20px;

        font-family: Roboto Condensed;
      }
      .form-content {
        padding: 40px;
        max-width: 500px;
        width: 100%;
        background-color: transparent;

        font-family: Roboto Condensed;
      }
      .background-image {
        background-image: url("concern.jpg");
        background-size: contain;
        background-repeat: no-repeat;
        background-position: center;
        width: 50%;
        height: 80vh;
      }
      .full-page {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
      }
      .form-title {
        color: #4a12a5;
        font-weight: 600;
        margin-bottom: 10px;

        font-family: Roboto Condensed;
      }
      .form-group {
        margin-bottom: 20px;
      }
      .button-35 {
        align-items: center;
        background-color: transparent;
        border-radius: 12px;
        box-shadow: transparent 0 0 0 3px, rgba(18, 18, 18, 0.1) 0 6px 20px;
        box-sizing: border-box;
        color: #121212;
        cursor: pointer;
        display: inline-flex;
        flex: 1 1 auto;
        font-family: Roboto Condensed;
        font-size: 1rem;
        font-weight: 700;
        justify-content: center;
        line-height: 1;
        margin: 10px;
        outline: none;
        padding: 1rem 1.2rem;
        text-align: center;
        text-decoration: none;
        transition: box-shadow 0.2s, -webkit-box-shadow 0.2s;
        white-space: nowrap;
        border: 0;
        -webkit-user-select: none;
        user-select: none;
        touch-action: manipulation;
      }

      .button-35:hover {
        box-shadow: #000000 0 0 0 3px, transparent 0 0 0 0;
      }

      label {
        color: #000000;
        font-weight: bold;
        font-family: Roboto Condensed;
      }

      @media (max-width: 992px) {
        .background-image {
          display: none;
        }
        .form-container {
          padding: 30px;
          border-radius: 8px;
          background-color: transparent;
          box-shadow: none;

          font-family: Roboto Condensed;
        }
      }
      .form-select {
        border: 1px solid #6c757dcc;
        border-radius: 5px;
        padding: 12px;
        font-size: 1rem;
        background-color: rgb(255, 255, 255); /* Matches background */
        color: #121212; /* Text color */
        transition: border-color 0.3s ease;
      }

      .form-select:focus {
        border-color: #000000; /* Change border to black on focus */
        box-shadow: none; /* Remove any default focus shadow */
        outline: none;
      }
      .navbar {
        margin: 10px 10px 10px;
        border-radius: 25px;
        background: #4a12a5;
        /*backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);*/
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

      .btn-outline-primary {
        border: 2px;
        border-radius: 50px;
        text-align: center;
        font-family: Roboto Condensed;
        font-weight: 500;
        font-size: 1rem;
        color: rgb(0, 0, 0);
        border-color: rgb(255, 255, 255);
      }

      .btn-outline-primary:hover {
        background-color: rgb(16, 16, 16);
        color: #ffffff;
        transition: 0.3s;
      }
    </style>

</head>
<body>

<nav class="navbar navbar-expand-lg">
      <a class="navbar-brand" href="home2.jsp">SmartExam</a>
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
            <a class="nav-link" href="studentprofile.jsp">Dashboard</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Exam Concerns</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="examwrite.jsp">Write Exams</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="getResultServlet">Results</a>
          </li>
          
        </ul>
        
      </div>
    </nav>
    <div class="full-page">
      <div class="form-container">
        <div class="form-content">
          <h2 class="form-title">Report Exam Concern</h2>
          <p>
            Fill in the form below to submit your concern regarding the exam.
          </p>

          <form>
            <div class="form-group">
              <label for="yourName" class="form-label"
                >Your Name <span class="text-danger">*</span></label
              >
              <input
                type="text"
                class="form-control"
                id="name"
                placeholder="john"
                required
              />
            </div>

            <div class="form-group">
              <label for="emailAddress" class="form-label"
                >Your Email Address</label
              >
              <input
                type="email"
                class="form-control"
                id="emailAddress"
                placeholder="example@example.com"
                required
              />
            </div>

            <div class="form-group">
              <label for="concern" class="form-label"
                >Concern Description</label
              >
              <textarea
                class="form-control"
                id="concern"
                rows="4"
                placeholder="Describe your concern..."
                required
              ></textarea>
            </div>
            <div class="btn-container mt-4">
              <button type="submit" button class="button-35" role="button">
                <i class="bi bi-envelope-fill"></i> Submit Concern
              </button>
            </div>
          </form>
        </div>
      </div>

      <div class="background-image"></div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>