void main() {
  var name = "Abdullah";
  print("My name is: " + name);
  var fname = "Muhammad Akram";
  print("My Father Name is: " + fname);
  var age = 21;
  print("My age: $age");

  print("-------------------------------------------");

// add two variable

  print("");

  var a = 10;
  var b = 5;
  var sum = a + b;
  print("Sum is: $sum");

// BODMAS
  var x = 10 + 2 / 5;
  print("A/c to BODMAS:  $x");

  var y = (10 + 2) * 5;
  print("A/c to BODMAS:  $y");

// num datatype
  print("-------------------------------------------");
  print("");
  num n1 = 23;
  num n2 = 12;
  num result = n1 * n2;
  print("Result using num datatype:  $result");

  print("");

  num val1 = 12, val2 = 12;
  print("Sum of $val1 and $val2 is: ${val1 + val2}");

  print("");
  int ab = 10;
  int bc = 3;
  print(ab ~/
      bc); // ~/ round off krdy ga points ko ya integer me return kre ga answer divide kr ke
  print(ab % bc);

  print("-------------------------------------------");

// increament or decrement

// pre - increment
  print("");

  int number1 = 0;
  // print("Pre Increment:  ${++number1}");
  print("Pre Increment:  ${number1 + 1}");

// post- increment
  print("");

  int number2 = 0;
  print("Before incriemnt: ${number2++}");
  print("After incriment: $number2");

  print("");

  int xy = 0;
  int yz = xy++ + xy;
  //        0 + 1     --> esme increment lga to agy hi apply ho gya foran ek hi line me 2 var use kiye thy to osi line me update krdy ga
  print(" value of yz  $yz");
  print("value of xy $xy");
}
