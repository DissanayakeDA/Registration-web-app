<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Gateway</title>
<link rel="stylesheet" href="css/style.css">

<script>
        function validateForm() {
            const amountInput = document.querySelector('input[name="amount"]');
            const amountValue = parseFloat(amountInput.value);
            const errorMessage = document.getElementById('error-message');
            errorMessage.style.display = 'none'; 

            
            if (isNaN(amountValue) || amountValue <= 0) {
                errorMessage.style.display = 'block'; 
                return false; 
            }
            return true; 
        }
        
        function isNumber(evt) {
            const char = String.fromCharCode(evt.which);
            if (!/[\d-]/.test(char)) {
                evt.preventDefault();
            }
        }

        function formatCardNumber(input) {
            let value = input.value.replace(/\D/g, '');
            const formattedValue = value.replace(/(\d{4})(?=\d)/g, '$1-');
            input.value = formattedValue; 
        }

    </script>


</head>
<body>


 <div class="container">

        <form action="inserservelat" method="post"  onsubmit="return validateForm()">

            <div class="row">

                <div class="col">
                    <h3 class="title">
                        user details
                    </h3>

                    <div class="inputBox">
                        <label for="name">
                              Full Name:
                          </label>
                        <input type="text" name="name" 
                               placeholder="ex-kalana karunarathna" 
                               required pattern="^[a-zA-Z]+ [a-zA-Z]+$"
                               title="Full name must include at least two parts separated by a space (e.g., 'John Doe')">
                    </div>

                    <div class="inputBox">
                        <label for="email">
                              Email:
                          </label>
                        <input type="text" name="email" 
                               placeholder="example@gmail.com" 
                               required>
                    </div>

                    <div class="inputBox">
                        <label for="address">
                              Addresss
                          </label>
                        <input type="text" name="address" 
                               placeholder="Enter address" 
                               required>
                    </div>

                    <div class="inputBox">
                        <label for="city">
                              City:
                          </label>
                        <input type="text" name="city" 
                               placeholder="Enter city" 
                               required>
                    </div>

                    <div class="flex">

                        <div class="inputBox">
                            <label for="state">
                                  State:
                              </label>
                            <input type="text" name="state" 
                                   placeholder="Enter state" 
                                   required>
                        </div>

                        <div class="inputBox">
                            <label for="zip">
                                  Zip Code:
                              </label>
                            <input type="number" name="zipcode" 
                                   placeholder="123 456" maxlength="6"  min="100000" max="999999"
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
                        <input type="text" name="cardname" 
                               placeholder="Enter card name" 
                               required>
                    </div>

                    <div class="inputBox">
                        <label for="cardNum">
                              Credit Card Number:
                          </label>
                        <input type="text" name="cardnumber" 
                               placeholder="1111-2222-3333-4444" 
                               maxlength="19" pattern="\d{4}-\d{4}-\d{4}-\d{4}" title="Enter a valid card number (format: xxxx-xxxx-xxxx-xxxx)" 
                               required onkeypress="return isNumber(event)" 
                           oninput="formatCardNumber(this)">
                               >
                    </div>
                    
                    <div class="inputBox">
    <label for="year">Expire Year:</label>
    <select name="expyear" required>
        <option value="" disabled selected>Select a year</option>
    
        <option value="2024">2024</option>
        <option value="2023">2023</option>
        <option value="2022">2022</option>
        <option value="2024">2021</option>
        <option value="2023">2020</option>
        <option value="2022">2019</option>
         <option value="2024">2018</option>
        <option value="2023">2017</option>
        <option value="2022">2016</option>
 
    </select>
</div>
               <div class="inputBox">
    <label for="year">Expire month:</label>
    <select name="expmonth" required>
        <option value="" disabled selected>Select a month</option>
    
        <option value="january">january</option>
        <option value="february">february</option>
        <option value="march">march</option>
        <option value="april">april</option>
        <option value="may">may</option>
        <option value="june">june</option>
         <option value="july">july</option>
        <option value="august">august</option>
        <option value="september">september</option>
        <option value="october">october</option>
        <option value="november">november</option>
        <option value="december">december</option>
 
    </select>
</div>

 <div class="inputBox">
                        <label for="cvv">
                              cvv:
                          </label>
                        <input type="text" name="cvv" 
                               placeholder="Enter cvv" 
                              maxlength="3" pattern="\d{3}" title="CVV must be 3 digits"  required>
                    </div>
                    
   <div class="inputBox">
                        <label for="cvv">
                              amount:
                          </label>
                        <input type="text" name="amount" 
                               placeholder="amount$" 
                             min="0"  required > 
                              <span id="error-message" style="color: red; display: none;">Enter a valid amount (greater than 0)</span>
                    </div>                  
                    
                    
                       <input type="submit" value="save" 
                   class="submit_btn">
                    

                    </div>

                </div>
</form>
            </div>



</body>
</html>