/**
 * 
 */
//Function to generate a random 1-digit Exam ID (without 0)
document.getElementById('examName').addEventListener('input', function() {
    const examName = document.getElementById('examName').value;

    if (examName.length > 0) {
        // Generate a hash code from the exam name
        const hashCode = hashString(examName);

        // Create the unique exam ID directly from the hash code
        const examId = 'EXAM-' + hashCode;

        // Set the generated Exam ID in the input field
        document.getElementById('examId').value = examId;
    } else {
        // Clear the exam ID if no exam name is provided
        document.getElementById('examId').value = '';
    }
});

// Simple hash function to convert string to a unique 4-digit number
function hashString(str) {
    let hash = 0;
    for (let i = 0; i < str.length; i++) {
        const char = str.charCodeAt(i);
        hash = (hash << 5) - hash + char;
        hash = hash & hash; // Convert to 32-bit integer
    }
    return Math.abs(hash) % 9000 + 1000; // Return a 4-digit positive number (1000-9999)
}

// Function to calculate the grade based on the score
function calculateGrade() {
    const score = document.getElementById('score').value;
    let grade = '';

    if (score >= 75) {
        grade = 'A';
    } else if (score >= 65) {
        grade = 'B';
    } else if (score >= 45) {
        grade = 'C';
    } else {
        grade = 'F';
    }

    document.getElementById('grade').value = grade;
}

//validate score 
document.getElementById('score').addEventListener('input', function() {
    const score = this.value;
    const errorDiv = document.getElementById('scoreError');
    if (score < 0 || score > 100) {
        errorDiv.textContent = "Score must be between 0 and 100.";
    } else {
        errorDiv.textContent = "";
    }
});


function validateStudentId() {
    var studentId = document.getElementById("studentId").value;
    var studentIdError = document.getElementById("studentIdError");

    // Regex to check that student ID is exactly 4 digits
    var studentIdPattern = /^[0-9]{4}$/;

    if (!studentIdPattern.test(studentId)) {
        studentIdError.innerHTML = "Student ID must be exactly 4 digits and contain no letters or special characters.";
        return false; // Prevent form submission
    } else {
        studentIdError.innerHTML = ""; // Clear the error message
        return true; // Allow form submission
    }
}




