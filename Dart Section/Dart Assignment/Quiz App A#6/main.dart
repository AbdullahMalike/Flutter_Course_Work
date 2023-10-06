import 'dart:io';
import 'dart:math';

class MCQQuestion {
  String question;
  List<String> options;
  int correctOptionIndex;

  MCQQuestion(this.question, this.options, this.correctOptionIndex);
}

class QuizApp {
  List<MCQQuestion> questions;
  late List<int> randList;
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  QuizApp(this.questions) {
    randList = List<int>.generate(questions.length, (index) => index)
      ..shuffle();
  }

  void startQuiz() {
    print("Welcome to the Quiz App!");
    while (currentQuestionIndex < questions.length) {
      final int questionIndex = randList[currentQuestionIndex];
      final MCQQuestion question = questions[questionIndex];

      print("Question ${currentQuestionIndex + 1}: ${question.question}");
      for (int i = 0; i < question.options.length; i++) {
        print("Option ${i}: ${question.options[i]}");
      }

      String? userAnswer = stdin.readLineSync();

      if (userAnswer != null) {
        final int selectedOption = int.tryParse(userAnswer) ?? -1;

        if (selectedOption == question.correctOptionIndex) {
          correctAnswers++;
          print("Correct!");
        } else {
          print(
              "Incorrect. The correct option is: ${question.correctOptionIndex}");
        }
      } else {
        print("Invalid input. Moving to the next question.");
      }

      currentQuestionIndex++;
    }

    double percentage = (correctAnswers / questions.length) * 100;

    print("Quiz completed!");
    print("Total number of correct answers: $correctAnswers");
    print("Percentage of correct answers: $percentage%");

    if (percentage > 50) {
      print("Congratulations!");
    }

    print("Do you want to restart the quiz? (yes/no): ");
    String restart = stdin.readLineSync()!.toLowerCase();

    if (restart == 'yes') {
      currentQuestionIndex = 0;
      correctAnswers = 0;
      randList.shuffle();
      startQuiz();
    }
  }
}

void main() {
  List<MCQQuestion> quizQuestions = [
    MCQQuestion(
      "What is the capital of France?",
      ["London", "Berlin", "Paris", "Madrid"],
      2,
    ),
    MCQQuestion(
      "Which planet is known as the Red Planet?",
      ["Mars", "Jupiter", "Venus", "Saturn"],
      0,
    ),
    MCQQuestion(
      "What is the largest mammal on Earth?",
      ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
      1,
    ),
    MCQQuestion(
      "Which gas do plants absorb from the atmosphere?",
      ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
      1,
    ),
    MCQQuestion(
      "Who wrote the play 'Romeo and Juliet'?",
      ["Charles Dickens", "Leo Tolstoy", "William Shakespeare", "Jane Austen"],
      2,
    ),
    MCQQuestion(
      "What is the chemical symbol for gold?",
      ["Go", "Au", "Ag", "Ge"],
      1,
    ),
    MCQQuestion(
      "Which country is known as the Land of the Rising Sun?",
      ["China", "India", "Japan", "South Korea"],
      2,
    ),
    MCQQuestion(
      "What is the largest planet in our solar system?",
      ["Earth", "Mars", "Jupiter", "Venus"],
      2,
    ),
    MCQQuestion(
      "How many continents are there on Earth?",
      ["4", "6", "7", "5"],
      2,
    ),
    MCQQuestion(
      "Which gas makes up the majority of Earth's atmosphere?",
      ["Carbon Dioxide", "Nitrogen", "Oxygen", "Methane"],
      1,
    ),
    MCQQuestion(
      "What is the chemical symbol for water?",
      ["Wa", "Wo", "H2O", "Wi"],
      2,
    ),
    MCQQuestion(
      "Which animal is known as the 'king of the jungle'?",
      ["Elephant", "Tiger", "Lion", "Giraffe"],
      2,
    ),
    MCQQuestion(
      "Which gas do humans breathe out?",
      ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
      1,
    ),
    MCQQuestion(
      "Who was the first President of the United States?",
      [
        "George Washington",
        "Thomas Jefferson",
        "John Adams",
        "Benjamin Franklin"
      ],
      0,
    ),
    MCQQuestion(
      "What is the largest organ in the human body?",
      ["Heart", "Lung", "Liver", "Skin"],
      3,
    ),
    MCQQuestion(
      "Which planet is known as the 'Morning Star'?",
      ["Venus", "Mars", "Jupiter", "Saturn"],
      0,
    ),
    MCQQuestion(
      "How many bones are there in the adult human body?",
      ["206", "212", "196", "230"],
      0,
    ),
    MCQQuestion(
      "What is the largest desert in the world?",
      ["Gobi Desert", "Kalahari Desert", "Sahara Desert", "Arabian Desert"],
      2,
    ),
    MCQQuestion(
      "Which gas is used for fire extinguishment?",
      ["Oxygen", "Carbon Dioxide", "Nitrogen", "Helium"],
      1,
    ),
    MCQQuestion(
      "Who wrote 'Pride and Prejudice'?",
      ["Jane Austen", "Charles Dickens", "George Orwell", "Leo Tolstoy"],
      0,
    ),
    MCQQuestion(
      "Which gas is known as 'Laughing Gas'?",
      ["Nitrogen", "Oxygen", "Carbon Dioxide", "Nitrous Oxide"],
      3,
    ),
    MCQQuestion(
      "What is the chemical symbol for oxygen?",
      ["Ox", "O2", "Om", "Oxg"],
      1,
    ),
    MCQQuestion(
      "Which planet is known as the 'Red Planet'?",
      ["Mars", "Jupiter", "Venus", "Saturn"],
      0,
    ),
    MCQQuestion(
      "Who painted the Mona Lisa?",
      [
        "Vincent van Gogh",
        "Pablo Picasso",
        "Leonardo da Vinci",
        "Michelangelo"
      ],
      2,
    ),
    MCQQuestion(
      "What is the chemical symbol for silver?",
      ["Si", "Ag", "Sv", "Sr"],
      1,
    ),
    MCQQuestion(
      "Which gas is used in balloons to make them float?",
      ["Hydrogen", "Helium", "Oxygen", "Carbon Dioxide"],
      1,
    ),
    MCQQuestion(
      "What is the largest ocean in the world?",
      ["Indian Ocean", "Atlantic Ocean", "Arctic Ocean", "Pacific Ocean"],
      3,
    ),
    MCQQuestion(
      "Which country is known as the 'Land of the Rising Sun'?",
      ["China", "India", "Japan", "South Korea"],
      2,
    ),
    MCQQuestion(
      "What is the chemical symbol for gold?",
      ["Go", "Au", "Ag", "Ge"],
      1,
    ),
    MCQQuestion(
      "Which gas is known as the 'Silent Killer'?",
      ["Oxygen", "Carbon Dioxide", "Nitrogen", "Radon"],
      3,
    ),
    MCQQuestion(
      "What is the chemical symbol for water?",
      ["Wa", "Wo", "H2O", "Wi"],
      2,
    ),
    MCQQuestion(
      "Who is known as the 'Father of Modern Physics'?",
      ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Stephen Hawking"],
      1,
    ),
    MCQQuestion(
      "Which planet is known as the 'Evening Star'?",
      ["Mars", "Venus", "Jupiter", "Saturn"],
      1,
    ),
    MCQQuestion(
      "How many continents are there on Earth?",
      ["4", "6", "7", "5"],
      2,
    ),
    MCQQuestion(
      "Which gas makes up the majority of Earth's atmosphere?",
      ["Carbon Dioxide", "Nitrogen", "Oxygen", "Methane"],
      1,
    ),
    MCQQuestion(
      "What is the chemical symbol for water?",
      ["Wa", "Wo", "H2O", "Wi"],
      2,
    ),
    MCQQuestion(
      "Which animal is known as the 'king of the jungle'?",
      ["Elephant", "Tiger", "Lion", "Giraffe"],
      2,
    ),
    MCQQuestion(
      "Which gas do humans breathe out?",
      ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
      1,
    ),
    MCQQuestion(
      "Who was the first President of the United States?",
      [
        "George Washington",
        "Thomas Jefferson",
        "John Adams",
        "Benjamin Franklin"
      ],
      0,
    ),
    MCQQuestion(
      "What is the largest organ in the human body?",
      ["Heart", "Lung", "Liver", "Skin"],
      3,
    ),
    MCQQuestion(
      "Which planet is known as the 'Morning Star'?",
      ["Venus", "Mars", "Jupiter", "Saturn"],
      0,
    ),
    MCQQuestion(
      "How many bones are there in the adult human body?",
      ["206", "212", "196", "230"],
      0,
    ),
    MCQQuestion(
      "What is the largest desert in the world?",
      ["Gobi Desert", "Kalahari Desert", "Sahara Desert", "Arabian Desert"],
      2,
    ),
    MCQQuestion(
      "Which gas is used for fire extinguishment?",
      ["Oxygen", "Carbon Dioxide", "Nitrogen", "Helium"],
      1,
    ),
    MCQQuestion(
      "Who wrote 'Pride and Prejudice'?",
      ["Jane Austen", "Charles Dickens", "George Orwell", "Leo Tolstoy"],
      0,
    ),
    MCQQuestion(
      "Which gas is known as 'Laughing Gas'?",
      ["Nitrogen", "Oxygen", "Carbon Dioxide", "Nitrous Oxide"],
      3,
    ),
    MCQQuestion(
      "What is the chemical symbol for oxygen?",
      ["Ox", "O2", "Om", "Oxg"],
      1,
    ),
    MCQQuestion(
      "Which planet is known as the 'Red Planet'?",
      ["Mars", "Jupiter", "Venus", "Saturn"],
      0,
    ),
    MCQQuestion(
      "Who painted the Mona Lisa?",
      [
        "Vincent van Gogh",
        "Pablo Picasso",
        "Leonardo da Vinci",
        "Michelangelo"
      ],
      2,
    ),
    MCQQuestion(
      "What is the chemical symbol for silver?",
      ["Si", "Ag", "Sv", "Sr"],
      1,
    )
  ];

  QuizApp quizApp = QuizApp(quizQuestions);
  quizApp.startQuiz();
}
