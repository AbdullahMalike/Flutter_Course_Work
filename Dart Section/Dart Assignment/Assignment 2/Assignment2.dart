void main() {
  print("");
  print("======= Question 1 =========");
  print("");
  num length = 10;
  num breadth = 10;
  if (length == breadth) {
    print("It's Square");
  } else {
    print("It's Rectangle");
  }

  print("");
  print("======= Question 2 =========");
  print("");

  num age1 = 21;
  num age2 = 19;
  if (age1 > age2) {
    print("Abdullah is oldest and age is: $age1");
    print("Saadullah is Youngest and age is: $age2");
  } else if (age1 < age2) {
    print("Saadullah is oldest and age is: $age2");
    print("Abdullah is Youngest and age is: $age1");
  } else {
    print("Abdullah and Saadullah have same Age");
  }

  print("");
  print("======= Question 3 =========");
  print("");

  num classes_held = 16;
  num attend_classes = 10;
  num attendance_percentage = (attend_classes * 100) / classes_held;

  if (attendance_percentage >= 75) {
    print("Student is allowed to sit in exam");
  } else {
    print("Student is not allowed to sit in exam");
  }

  print("");
  print("======= Question 4 =========");
  print("");

  int year = 2023;
  if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
    print("$year is a Leap Year");
  } else {
    print("$year is not a leap year");
  }

  print("");
  print("======= Question 5 =========");
  print("");

  num temp = 42;
  if (temp < 0) {
    print("Freezing weather");
  } else if (temp >= 0 && temp < 10) {
    print("Very Cold weather");
  } else if (temp >= 10 && temp < 20) {
    print("Cold weather");
  } else if (temp >= 20 && temp < 30) {
    print("Normal in Temp");
  } else if (temp >= 30 && temp < 40) {
    print("Its Hot");
  } else {
    print("Its Very Hot");
  }

  print("");
  print("======= Question 6 =========");
  print("");

  var alphabet = "A";
  if (alphabet == "a" ||
      alphabet == "e" ||
      alphabet == "i" ||
      alphabet == "o" ||
      alphabet == "u" ||
      alphabet == "A" ||
      alphabet == "E" ||
      alphabet == "I" ||
      alphabet == "O" ||
      alphabet == "U") {
    print("$alphabet is Vowel");
  } else {
    print("$alphabet is consonant");
  }

  print("");
  print("======= Question 7 =========");
  print("");

  num customer_id = 1001;
  var customer_name = "Abdullah";
  num units = 800;

  print("========  Electricity Bill  ================");
  print("");

  if (units <= 199) {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 1.20 per unit: ${units * 1.20}");
    print("Net Bill Amount: ${units * 1.20}");
  } else if (units >= 200 && units < 400) {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 1.50 per unit: ${units * 1.50}");
    print("Net Bill Amount: ${units * 1.50}");
  } else if (units >= 400 && units < 600) {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 1.80 per unit: ${units * 1.80}");
    print("Net Bill Amount: ${units * 1.80}");
  } else {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 2.00 per unit: ${units * 2.00}");
    print("Net Bill Amount: ${units * 2.00}");
  }
}
