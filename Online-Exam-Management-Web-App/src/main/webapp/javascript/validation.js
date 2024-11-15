document.getElementById("paymentForm").addEventListener("submit", function(event) {
    // Get form values
    let name = document.querySelector('input[name="name"]').value;
    let email = document.querySelector('input[name="email"]').value;
    let cardNumber = document.querySelector('input[name="cardnumber"]').value;
    let expYear = document.querySelector('select[name="expyear"]').value;
    let expMonth = document.querySelector('select[name="expmonth"]').value;
    let cvv = document.querySelector('input[name="cvv"]').value;
    let amount = document.querySelector('input[name="amount"]').value;

    let errorMessage = "";

    
    if (name.length < 3) {
        errorMessage += "Name must be at least 3 characters long.\n";
    }

    
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        errorMessage += "Please enter a valid email address.\n";
    }

   
    let cardRegex = /^\d{4}-\d{4}-\d{4}-\d{4}$/;
    if (!cardRegex.test(cardNumber)) {
        errorMessage += "Please enter a valid card number (xxxx-xxxx-xxxx-xxxx).\n";
    }

   
    if (expMonth === "" || expYear === "") {
        errorMessage += "Please select a valid expiration month and year.\n";
    }

   
    let cvvRegex = /^\d{3}$/;
    if (!cvvRegex.test(cvv)) {
        errorMessage += "CVV must be 3 digits.\n";
    }

    
    if (amount <= 0) {
        errorMessage += "Amount must be a positive value.\n";
    }

    
    if (errorMessage !== "") {
        alert(errorMessage);
        event.preventDefault();
    }
});
