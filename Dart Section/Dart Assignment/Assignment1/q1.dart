void main() {
  int maths = 90, physics = 85, chemistry = 80, urdu = 95;
  int sum = maths + physics + chemistry + urdu;
  double percentage = (sum / 400) * 100;

  print("======== Marksheet ================");

  print("");
  print("Marks in Maths:  $maths");
  print("Marks in Physics:  $physics");
  print("Marks in Chemistry $chemistry");
  print("Marks in Urdu  $urdu");
  print("Abdullah Total Marsk is : " +
      sum.toString() + // use .toString function to convert int value to string for concatenation
      " out of 400 and Percentage is: " +
      percentage.toString() +
      "%");
}
