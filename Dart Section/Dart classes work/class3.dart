//   =====   Equality Relation  =======

void main() {
  int n1 = 10;
  int n2 = 10;
  bool result = n1 < n2;
  bool result2 = n1 > n2;

  print(result);
  print(result2);

  String a = "5";
  String b = "5";
  bool res = a == b;
  print(res);

  var a1 = 10.2;
  int b1 = 10;
  bool res1 = a1 == b1;
  print(res1);

  var num1 = 5;
  var num2 = 5;
  var res2 = num1 != num2;
  print(res2);

// ======= logical Operator  ==========

  bool res3 = num1 != num2 && (num1 != num2 || a1 >= b1);
  print(res3);

//     ====== if else ===================
}
