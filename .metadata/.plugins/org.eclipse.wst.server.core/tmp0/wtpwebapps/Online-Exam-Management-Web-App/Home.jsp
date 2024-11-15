<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="home.png" />
    <title>SmartExam</title>
    
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
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
    <link rel="stylesheet" href="RegistrationAssets/CSS/homestyles.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            <a class="nav-link" href="Home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pricelist.jsp">Courses</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Results</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Exams</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.jsp">About Us</a>
          </li>
        </ul>
        <div>
        <a href="login.jsp">
          <button class="btn btn-outline-primary mx-1">Student Log In</button>
          </a>
          <a href="teacherLogin.jsp">
          <button class="btn btn-outline-primary mx-1">Teacher Log In</button>
          </a>
        </div>
      </div>
    </nav>
    <header class="bg-image">
      <div class="container">
        <h1>Exams Made Easy, <br />Anytime, Anywhere...</h1>
        <a href="login.jsp">
        <button class="button-35" role="button">GET START</button>
        </a>
      </div>
    </header>

    <!-- Why Smart Tuition Section -->
    <main class="l-card">
      <section class="l-card__text">
        <p>
          Your site demonstrates a strong foundation in both design and functionality, which is crucial for an online educational platform.
        </p>
      </section>
      <section class="l-card__user">
        <div class="l-card__userImage">
          <img src="https://avatars.githubusercontent.com/u/20525486?v=4" alt="Naruto">
        </div>
        <div class="l-card__userInfo">
          <span>dasun</span>
          <span>dasun</span>
        </div>
      </section>
    </main>
    <main class="l-card">
      <section class="l-card__text">
        <p>
          Your platform’s emphasis on online examinations positions it as a valuable tool in assessing students’ knowledge effectively. 
        </p>
      </section>
      <section class="l-card__user">
        <div class="l-card__userImage">
          <img src="https://avatars.githubusercontent.com/u/20525486?v=4" alt="Naruto">
        </div>
        <div class="l-card__userInfo">
          <span>nethupul</span>
          <span>nethupul</span>
        </div>
      </section>
    </main>
    <main class="l-card">
      <section class="l-card__text">
        <p>
          You’ve used subtle animations like the fadeInUp effect to create a dynamic feel, which is engaging for users.knowledge effectively 
        </p>
      </section>
      <section class="l-card__user">
        <div class="l-card__userImage">
          <img src="https://avatars.githubusercontent.com/u/20525486?v=4" alt="Naruto">
        </div>
        <div class="l-card__userInfo">
          <span>thavidu</span>
          <span>thavidu</span>
        </div>
      </section>
    </main>
      <footer class="footer-section">
        <div class="dcontainer">
            <div class="footer-content">
              <!-- <div class="footer-logo">
                    <a href="Home.html"><img src="https://i.ibb.co/QDy827D/ak-logo.png" alt="Logo"></a>
                </div>  -->
                <div class="footer-links">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="Home.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="login.jsp">concerns</a></li>
                        <li><a href="pricelist.jsp">Courses</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h3>Contact Us</h3>
                    <p><i class="fas fa-map-marker-alt"></i> 123 Street, City, Country</p>
                    <p><i class="fas fa-phone"></i> +123 456 789</p>
                    <p><i class="fas fa-envelope"></i> info@example.com</p>
                </div>
                <div class="footer-subscribe">
                    <h3>Subscribe to our Newsletter</h3>
                    <form action="#">
                        <input type="email" placeholder="Your Email Address" required>
                        <button type="submit"><i class="fas fa-paper-plane"></i></button>
                    </form>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Your Company. All rights reserved.</p>
                <div class="footer-socials">
                    <a href="https://facebook.com"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
    </footer>

    </footer>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
