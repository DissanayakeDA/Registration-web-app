<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="dash.png">
    <title>ALL STUDENTS</title>
    <link rel="stylesheet" href="adminstyle.css" />
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
              <a href="#">
                <span class="icon">
                  <ion-icon class="bx bxs-book-reader"></ion-icon>
                </span>
                <span class="title">SmartExam</span>
              </a>
            </li>
  
            <li>
              <a href="admindashboard.jsp">
                <span class="icon">
                  <ion-icon name="home-outline"></ion-icon>
                </span>
                <span class="title">Dashboard</span>
              </a>
            </li>
  
            <li>
              <a href="">
                <span class="icon">
                  <ion-icon class="bx bxs-envelope"></ion-icon>
                </span>
                <span class="title">Exam Concerns</span>
              </a>
            </li>
  
            <li>
              <a href="exam/creatExam.html">
                <span class="icon">
                  <ion-icon class ="bx bxs-edit"></ion-icon>
                </span>
                <span class="title">Create Exam</span>
              </a>
            </li>
  
            <li>
              <a href="#">
                <span class="icon">
                  <ion-icon name="megaphone"></ion-icon>
                </span>
                <span class="title">Results Publishing</span>
              </a>
            </li>
  
            <li>
              <a href="#">
                <span class="icon">
                  <ion-icon class= "bx bxs-user"></ion-icon>
                </span>
                <span class="title">Profile</span>
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
                 <input class="search" type="text" id="searchInput" placeholder="Search here" onkeyup="filterTable()" />
                  <ion-icon name="search-outline"></ion-icon>
                </label>
              </div>
    
              <div class="user">
                <i class="bx bxs-user" ></i>
              </div>
            </div>

           
                    <!-- Table Section -->
        <div class="table-container fullWidthCard">
            <h2 class="content">Student Information</h2>
           <table id="table" class="custom-table">
              <thead>
                <tr>
                  <th>Student ID</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Contact Number</th>
                </tr>
              </thead>
              <c:forEach var = "student" items ="${allStudent }" >
              <tbody>
                <tr>
                  <td>${student.student_Id }</td>
                  <td>${student.stName }</td>
                  <td>${student.stEmail }</td>
                  <td>${student.mobileNumber}</td>
                </tr>
           
              </tbody>
              </c:forEach>
            </table>
          </div>
             
              
                
      
                
             
              
      
                
      
               
              
              <script src="RegistrationAssets/Script/admin.js"></script>
        <script
          type="module"
          src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
        ></script>
        <script
          nomodule
          src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
        ></script>

        <script>
        function filterTable() {
            var input, filter, table, tr, td, i, j, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("table"); // Changed from "examTable" to "table"
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
    