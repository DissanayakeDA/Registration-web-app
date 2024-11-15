

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
    <link rel="stylesheet" href="teacherloginstyle.css" />
    <link rel="shortcut icon" href="RegistrationAssets/IMGS/login.png" />
    <script src="alert/dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <title>Teacher Login</title>
  </head>

  <body>
    <div class="container" id="container">
      

   
        <form action = "TeacherLoginServlet" method = "post">
          <!-- Home button inside the form box -->
          <a href="Home.jsp" class="home-icon">
            <i class="fa-solid fa-house"></i>
          </a>
          <h1>Teacher Log In</h1>

          <span>Use your Username and password to log into the system</span>
          <input class="input" type="email" name ="tEmail" placeholder="Email" required />
          <input type="password" name = "tpass" placeholder="Password"  required />
          <a href="#">Forget Your Password?</a>
          <button>Sign In</button>
        </form>


     
    </div>

    <script>
    
    document.addEventListener("DOMContentLoaded", function () {
        const form = document.querySelector(".sign-up form");
        const emailInput = form.querySelector('input[placeholder="Email"]');
    
        const signUpButton = form.querySelector("button");
      
        
        function validateEmail() {
          const email = emailInput.value;
          return email.includes("@");
        }
      
      
      
        form.addEventListener("submit", function (e) {
          let isValid = true;
      
          
          if (!validateEmail()) {
            alert("Please enter a valid email address with '@'.");
            isValid = false;
          }
      
         
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
    