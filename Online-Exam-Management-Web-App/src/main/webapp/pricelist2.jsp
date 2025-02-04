<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="list.css">
    <title>Document</title>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    
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
    background-color: rgb(124, 39, 243);
    color: #ffffff;
    transition: 0.3s;
  }

</style>
</head>
<body><nav class="navbar navbar-expand-lg">
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
          <a class="nav-link" href="home2.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="pricelist2.jsp">Courses</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="getResultServlet">Results</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="examwrite.jsp">Exams</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="aboutus2.jsp">About Us</a>
        </li>
      </ul>
    
    </div>
  </nav>
    <div class="wrapper">
        <div class="pricing-table gprice-single">
            <div class="head">
                 <h4 class="title">web devolepment</h4> 
            </div>
            <div class="content">
                <div class="price">
                    <h1>$5</h1>
                </div>
                <ul>
                    <li>2 months</li>
                    <li>practical sessions</li>
                    <li>free software package</li>
                    <li>Responsive Framework</li>
                    <li> <del>industry experience</del> </li>

                </ul>
                <div class="sign-up">
                    <a href="paymentinsert.jsp" class="btn bordered radius">buy now</a>
                </div>
            </div>
        </div>
            <div class="pricing-table gprice-single">
                <div class="head">
                    <h4 class="title">Graphic design</h4>
                </div>
                <div class="content">
                    <div class="price">
                        <h1>$10</h1>
                    </div>
                    <ul>
                        <li>3 months</li>
                        <li>practical session</li>
                        <li>free software package</li>
                        <li>responsive framework</li>
                        <li><del>industry experience</del></li>
                    
            
                    </ul>
                    <div class="sign-up">
                        <a href="paymentinsert.jsp" class="btn bordered radius">buy now</a>
                    </div>
                </div>
            </div>
                <div class="pricing-table gprice-single">
                    <div class="head">
                        <h4 class="title">spoken english</h4>
                    </div>
                    <div class="content">
                        <div class="price">
                            <h1 class="text-algin-center">$12</h1>
                        </div>
                        <ul>
                            <li>3 months</li>
                            <li>physical classes</li>
                            <li>industry guidance</li>
                            <li>video package</li>
                            <li><del>spoken test</del></li>
                        </ul>
                        <div class="sign-up">
                            <a href="paymentinsert.jsp" class="btn bordered radius">buy now</a>
                        </div>
                    </div>
                </div>
    </div>

    <footer class="footer-section">
        <div class="dcontainer">
            <div class="footer-content">
              <!-- <div class="footer-logo">
                    <a href="Home.html"><img src="https://i.ibb.co/QDy827D/ak-logo.png" alt="Logo"></a>
                </div>  -->
                <div class="footer-links">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="home2.jsp">Home</a></li>
                        <li><a href="aboutus2.jsp">About</a></li>
                        <li><a href="examconcern.jsp">concerns</a></li>
                        <li><a href="pricelist2.jsp">Courses</a></li>
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
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
    </footer>




</body>
</html>