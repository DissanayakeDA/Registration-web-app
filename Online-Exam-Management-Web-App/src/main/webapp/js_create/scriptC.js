document.addEventListener("DOMContentLoaded", function () {
  const addQuestionBtn = document.getElementById("add-question-btn");
  const numQuestionsInput = document.getElementById("num-questions");
  const questionList = document.getElementById("question-list");

  addQuestionBtn.addEventListener("click", () => {
    const numQuestions = parseInt(numQuestionsInput.value);
    questionList.innerHTML = ""; // Clear any previous questions

    for (let i = 1; i <= numQuestions; i++) {
      const questionDiv = document.createElement("div");
      questionDiv.classList.add("mb-3");

      // Question label and textarea
      const questionNumberLabel = document.createElement("label");
      questionNumberLabel.classList.add("form-label");
      questionNumberLabel.textContent = `Question ${i}`;
      questionNumberLabel.setAttribute("for", `question-${i}`);

      const questionNumberInput = document.createElement("textarea");
      questionNumberInput.classList.add("form-control");
      questionNumberInput.id = `question-${i}`;
      questionNumberInput.name = `question-${i}`;
      questionNumberInput.rows = 2;
      questionNumberInput.required = true;

      questionDiv.appendChild(questionNumberLabel);
      questionDiv.appendChild(questionNumberInput);

      // Answer label and textarea
      const answerLabel = document.createElement("label");
      answerLabel.classList.add("form-label", "mt-2");
      answerLabel.textContent = `Answer ${i}`;
      answerLabel.setAttribute("for", `answer-${i}`);

      const answerInput = document.createElement("textarea");
      answerInput.classList.add("form-control");
      answerInput.id = `answer-${i}`;
      answerInput.name = `answer-${i}`;
      answerInput.rows = 2;
      answerInput.required = true;

      questionDiv.appendChild(answerLabel);
      questionDiv.appendChild(answerInput);

      questionList.appendChild(questionDiv);
    }
  });

  document
    .getElementById("submit-questions")
    .addEventListener("click", function () {
      const questions = [];
      const answers = [];
      for (let i = 1; i <= parseInt(numQuestionsInput.value); i++) {
        const questionInput = document.getElementById(`question-${i}`);
        const answerInput = document.getElementById(`answer-${i}`);
        questions.push({
          question: questionInput.value,
          answer: answerInput.value,
        });
      }

      console.log("Questions and Answers Submitted:", questions);

      alert("Questions and answers submitted successfully!");

      // Close the modal
      const questionModal = bootstrap.Modal.getInstance(
        document.getElementById("questionModal")
      );
      questionModal.hide();
    });
});
