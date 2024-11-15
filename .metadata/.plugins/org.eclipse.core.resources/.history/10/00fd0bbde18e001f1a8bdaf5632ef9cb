<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String zipcode=request.getParameter("zipcode");
String cardname=request.getParameter("cardname");
String cardnumber=request.getParameter("cardnumber");
String expyear =request.getParameter("expyear");
String expmonth =request.getParameter("expmonth");
String cvv =request.getParameter("cvv");
String amount =request.getParameter("amount");
%>

<div class="container">
<form action="updateservlet" method="post">


            <div class="row">

                <div class="col">
                    <h3 class="title">
                        user details
                    </h3>

                    <div class="inputBox">
                        <label for="name">
                              Full Name:
                          </label>
                        <input type="text" name="name"  id="name" value="<%=name%>"
                               placeholder="Enter your full name" 
                               required>
                    </div>

                    <div class="inputBox">
                        <label for="email">
                              Email:
                          </label>
                        <input type="text" name="email" 
                               placeholder="Enter email address" id="email" value="<%=email%>"
                               required>
                    </div>

                    <div class="inputBox">
                        <label for="address">
                              Address:
                          </label>
                        <input type="text" name="address" id="address"
                               placeholder="Enter address" value="<%=address%>" 
                               required>
                    </div>

                    <div class="inputBox">
                        <label for="city">
                              City:
                          </label>
                        <input type="text" name="city" id="city"
                               placeholder="Enter city" value="<%=city%>"
                               required>
                    </div>

                    <div class="flex">

                        <div class="inputBox">
                            <label for="state">
                                  State:
                              </label>
                            <input type="text" name="state" id="state"
                                   placeholder="Enter state"  value="<%=state%>"
                                   required>
                        </div>

                        <div class="inputBox">
                            <label for="zip">
                                  Zip Code:
                              </label>
                            <input type="number" name="zipcode" id="zipcode"
                                   placeholder="123 456" value="<%=zipcode%>"
                                   required>
                        </div>

                    </div>

                </div>
                <div class="col">
                    <h3 class="title">Payment</h3>

                    <div class="inputBox">
                        <label for="name">
                              Card Accepted:
                          </label>
                  <img src="https://upload.wikimedia.org/wikipedia/commons/0/04/Visa.svg" alt="Visa" width="50px">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/PayPal.svg" alt="PayPal" width="50px">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/a/a4/Mastercard_2019_logo.svg" alt="MasterCard" width="50px">
                        </div>


                    <div class="inputBox">
                        <label for="cardName">
                              Name On Card:
                          </label>
                        <input type="text" name="cardname" id="cardname"
                               placeholder="Enter card name" value="<%=cardname%>"
                               required>
                    </div>

                    <div class="inputBox">
                        <label for="cardNum">
                              Credit Card Number:
                          </label>
                        <input type="text" name="cardnumber" id="cardnumber"
                               placeholder="1111-2222-3333-4444" 
                               maxlength="19" value="<%=cardnumber%>" required>
                    </div>
                    
                    <div class="inputBox">
    <label for="year">Expire Year:</label>
    <select name="expyear" id="expyear" required>
        <option value="" disabled >Select a year</option>
    
        <option value="2024" <%= expyear == "2024" ? "selected" : "" %>>2024</option>
        <option value="2023"<%= expyear == "2023" ? "selected" : "" %>>2023</option>
        <option value="2022"<%= expyear == "2022" ? "selected" : "" %>>2022</option>
        <option value="2021"<%= expyear == "2021" ? "selected" : "" %>>2021</option>
        <option value="2020"<%= expyear == "2020" ? "selected" : "" %>>2020</option>
        <option value="2019"<%= expyear == "2019" ? "selected" : "" %>>2019</option>
         <option value="2018"<%= expyear == "2018" ? "selected" : "" %>>2018</option>
        <option value="2017"<%= expyear == "2017" ? "selected" : "" %>>2017</option>
        <option value="2016"<%= expyear == "2016" ? "selected" : "" %>>2016</option>
 
    </select>
</div>
               <div class="inputBox">
    <label for="year">Expire month:</label>
    <select name="expmonth" id="expmonth"  required>
        <option value="" disabled>Select a month</option>
    
        <option value="january" <%= expmonth == "january" ? "selected" : "" %>>January</option>
        <option value="february"<%= expmonth =="february" ? "selected" : "" %>>february</option>
        <option value="march"<%= expmonth =="march" ? "selected" : "" %>>march</option>
        <option value="april"<%= expmonth =="april" ? "selected" : "" %>>april</option>
        <option value="may"<%= expmonth =="may" ? "selected" : "" %>>may</option>
        <option value="june"<%= expmonth =="june" ? "selected" : "" %>>june</option>
         <option value="july"<%= expmonth =="july" ? "selected" : "" %>>july</option>
        <option value="august"<%= expmonth =="august" ? "selected" : "" %>>august</option>
        <option value="september"<%= expmonth =="september" ? "selected" : "" %>>september</option>
        <option value="october"<%= expmonth =="october" ? "selected" : "" %>>october</option>
        <option value="november"<%= expmonth =="november" ? "selected" : "" %>>november</option>
        <option value="december"<%= expmonth =="december" ? "selected" : "" %>>december</option>
 
    </select>
</div>

 <div class="inputBox">
                        <label for="cvv">
                              cvv:
                          </label>
                        <input type="text" name="cvv" id="cvv"
                               placeholder="Enter cvv" value="<%=cvv%>"
                               required>
                    </div>
                    
   <div class="inputBox">
                        <label for="cvv">
                              amount:
                          </label>
                        <input type="text" name="amount" id="amount"
                               placeholder="Enter amount" value="<%=amount%>"
                               required>
                    </div>                  
                    
                    
                       <input type="submit" value="save" 
                   class="submit_btn">
                    

                    </div>

                </div>

</form>



</div>




</body>
</html>