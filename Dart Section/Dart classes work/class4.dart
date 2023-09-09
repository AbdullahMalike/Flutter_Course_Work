void main() {
  // class task create marksheet
  var name = "Abdullah",
      obtained_marks,
      percentage,
      roll_no = 1,
      student_class = 10,
      math = 60,
      phy = 90,
      urdu = 80,
      chem = 95;

  obtained_marks = math + phy + chem + urdu;
  percentage = (obtained_marks * 100) / 400;
  print("Student NAme: $name");
  print("Student Roll No: $roll_no");
  print("Student Class: $student_class");
  print("Obtained Marks: $obtained_marks");
  print("Percentage: $percentage");

  if (percentage >= 80) {
    print("Grade: A+");
  } else if (percentage >= 70) {
    print("Grade : A");
  } else if (percentage >= 60) {
    print("Grade: B");
  } else if (percentage >= 50) {
    print("Grade: C");
  } else if (percentage >= 40) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }
}
