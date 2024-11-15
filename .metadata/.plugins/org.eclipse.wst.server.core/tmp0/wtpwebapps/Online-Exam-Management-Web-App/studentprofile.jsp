<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Registration.RegisterModel" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="RegistrationAssets/IMGS/dash.png">
    <title>STUDENT DASH</title>
    <link rel="stylesheet" href="RegistrationAssets/CSS/profilestyle.css" />
    <link
    href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css"
    rel="stylesheet"
  />
  </head>
  <body>
    <div class="container">
        <div class="navigation">
          <ul>
            <li>
              <a href="Home.jsp">
                <span class="icon">
                  <ion-icon class="bx bxs-book-reader"></ion-icon>
                </span>
                <span class="title">SmartExam</span>
              </a>
            </li>
  
            <li>
              <a href="#">
                <span class="icon">
                  <ion-icon name="home-outline"></ion-icon>
                </span>
                <span class="title">Dashboard</span>
              </a>
            </li>
  
            <li>
              <a href="examconcern.jsp">
                <span class="icon">
                  <ion-icon class="bx bxs-envelope"></ion-icon>
                </span>
                <span class="title">Exam Concerns</span>
              </a>
            </li>
  
            <li>
              <a href="examwrite.jsp">
                <span class="icon">
                  <ion-icon class ="bx bxs-edit"></ion-icon>
                </span>
                <span class="title">Write Exam</span>
              </a>
            </li>
  
            <li>
              <a href="#">
                <span class="icon">
                  <ion-icon name="megaphone"></ion-icon>
                </span>
                <span class="title">Results</span>
              </a>
            </li>
            
            <li>
              <a href="pricelist2.jsp">
                <span class="icon">
                  <ion-icon name="money"></ion-icon>
                </span>
                <span class="title">Enrollment</span>
              </a>
            </li>
  
           <br>
           <br>
           <br>
            <li>
              <a href="Home.jsp">
                <span class="icon">
                  <ion-icon name="log-out-outline"></ion-icon>
                </span>
                <span class="title">Sign Out</span>
              </a>
            </li>
          </ul>
        </div>

        <div class="main">
            <div class="topbar">
              <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
              </div>
    
              <div class="search">
                <label>
                  <input type="text" placeholder="Search here" />
                  <ion-icon name="search-outline"></ion-icon>
                </label>
              </div>
    
              <div class="user">
                <i class="bx bxs-user" ></i>
              </div>
            </div>

            <div class="form-container sign-up">
              <form action="updateProfileServlet" method="post">
                <a href="../home/home.html" class="home-icon">
                  <i class="fa-solid fa-house"></i>
                </a>
                <h1>Profile</h1>
      
<%
    // Use the session object directly (it's already available in JSP)
    if (session != null && session.getAttribute("loggedInStudent") != null) {
        RegisterModel student = (RegisterModel) session.getAttribute("loggedInStudent");
%>
    <input type="text" name="stName" value="<%= student.getStName() %>" placeholder="Name" />
    <input type="email" name="stEmail" value="<%= student.getStEmail() %>" readonly placeholder="Email" />
    <input type="text" name="mobileNumber" value="<%= student.getMobileNumber() %>" placeholder="Mobile Number" />
    <input type="password" name="password" value="<%= student.getPassword() %>" placeholder="Password" />
    <input type="password" value="<%= student.getPassword() %>" placeholder="Confirm Password" />
    <input type="hidden" name="student_Id" value="<%= student.getStudent_Id() %>" />
    <button class="btn" type="submit">Save Changes</button>
   
     </form>
      <form action="DeleteStudentServlet" method="post">
    <input type="hidden" name="student_Id" value="<%= student.getStudent_Id() %>" />
    <!-- Add Delete Profile button -->
    <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete your profile? This action cannot be undone.');">Delete Profile</button>
</form>
<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>
               
             
   
            </div>

            <script>
            
                function deleteProfile() {
                    if (confirm("Are you sure you want to delete your profile?")) {
                        window.location.href = "DeleteProfileServlet"; // Implement this servlet for deletion
                    }
                }
                document.addEventListener("DOMContentLoaded", function () {
                    const form = document.querySelector(".sign-up form");
                    const emailInput = form.querySelector('input[placeholder="Email"]');
                  const mobileInput = form.querySelector('input[placeholder="Mobile Number"]');
                    const passwordInput = form.querySelector('input[placeholder="Password"]');
                    const confirmPasswordInput = form.querySelector('input[placeholder="Confirm Password"]');
                    const signUpButton = form.querySelector("button");
                  
                    // Email validation: must include '@'
                    function validateEmail() {
                      const email = emailInput.value;
                      return email.includes("@");
                    }
                  
                    //Mobile number validation: must be exactly 10 digits
                    function validateMobileNumber() {
                      const mobile = mobileInput.value;
                      const mobilePattern = /^[0-9]{10}$/;
                      return mobilePattern.test(mobile);
                    }
                  
                    // Password matching validation
                    function validatePasswordMatch() {
                      return passwordInput.value === confirmPasswordInput.value;
                    }
                  
                    // Add event listener to validate on form submission
                    form.addEventListener("submit", function (e) {
                      let isValid = true;
                  
                      // Validate email
                      if (!validateEmail()) {
                        alert("Please enter a valid email address with '@'.");
                        isValid = false;
                      }
                  
                      //Validate mobile number
                      if (!validateMobileNumber()) {
                        alert("Please enter a valid 10-digit mobile number.");
                        isValid = false;
                      }
                  
                      // Validate password match
                      if (!validatePasswordMatch()) {
                        alert("Password and Confirm Password must match.");
                        isValid = false;
                      }
                  
                      // If any validation fails, prevent form submission
                      if (!isValid) {
                        e.preventDefault();
                      }
                    });
                  
                    // Add input restrictions for mobile number (only digits)
                    mobileInput.addEventListener("input", function () {
                      mobileInput.value = mobileInput.value.replace(/[^0-9]/g, ""); // Allow only digits
                    });
                  });
            </script>
           
            <script src="RegistrationAssets/Script/profile.js"></script>
            <script
            type="module"
            src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
          ></script>
          <script
            nomodule
            src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
          ></script>
  </body>
</html>
