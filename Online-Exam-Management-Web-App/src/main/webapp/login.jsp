<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
      rel="stylesheet"
    />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />
    <link rel="stylesheet" href="RegistrationAssets/CSS/style.css" />
    <link rel="shortcut icon" href="RegistrationAssets/IMGS/login.png" />
    <script src="alert/dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <title>Registration</title>
  </head>

  <body>
    <div class="container" id="container">
      <div class="form-container sign-up">
        <form action ="AddStudentServlet" method ="post">
          <!-- Home button inside the form box -->
          <a href="Home.jsp" class="home-icon">
          
            <i class="fa-solid fa-house"></i>
          </a>
          <h1>Register</h1>

          <span>Fill the form to register to the system</span>
          
          <input required pattern="^[a-zA-Z]+ [a-zA-Z]+$" type="text" name ="stName" placeholder="Name" />
          <input type="email" name ="stEmail" placeholder="Email" />
          <input type="text" name ="mobileNumber" placeholder="Mobile Number" />
          <input type="password" name ="password" placeholder="Password" />
          <input type="password" placeholder="Confirm Password" />
          <button>Sign Up</button>
        </form>
      </div>

      <div class="form-container sign-in">
        <form action = "LoginServlet" method = "post">
          <!-- Home button inside the form box -->
          <a href="Home.jsp" class="home-icon">
            <i class="fa-solid fa-house"></i>
          </a>
          <h1>Student Log In</h1>

          <span>Use your Student ID and password to log into the system</span>
          <input type="email" name ="stEmail" placeholder="Email" required />
          <input type="password" name = "password" placeholder="Password"  required />
          <a href="#">Forget Your Password?</a>
          <button>Log In</button>
        </form>
      </div>

      <div class="toggle-container">
        <div class="toggle">
          <div class="toggle-panel toggle-left">
            <p>Already have an account ? Log in..</p>
            <button class="hidden" id="login">Sign In</button>
          </div>
          <div class="toggle-panel toggle-right">
            <p>Don't have an account ? Register now..</p>
            <button class="hidden" id="register">Sign Up</button>
          </div>
        </div>
      </div>
    </div>

    <script>
    const container = document.getElementById('container');
    const registerBtn = document.getElementById('register');
    const loginBtn = document.getElementById('login');

    registerBtn.addEventListener('click', () => {
        container.classList.add("active");
    });

    loginBtn.addEventListener('click', () => {
        container.classList.remove("active");
        
    });

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
  </body>
</html>
    