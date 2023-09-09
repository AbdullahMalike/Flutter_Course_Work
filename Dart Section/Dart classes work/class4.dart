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

  //   ============== List ===============================

  print("");

  var fruitlist = [
    "Mango",
    "Banana",
    "Orange",
    "PineApple"
  ]; // var me list bnai hai agr me number be dal do accept ho jaen ga liken eske type object ho jaen gi
  print(fruitlist);
  print(fruitlist
      .reversed); // reversed krne se object ban jati hai q ke ye kahi save nhi kr rha hota

  var newlist = List.of(fruitlist
      .reversed); // list.of reversed list jo ke object hai osko wapis list bna deta hai
  print(newlist);

  fruitlist.sort(); // esne list ko sort krdia a -> z or nechy print krwa dia
  print(fruitlist);

  print(fruitlist.length);
  print(fruitlist.first);
  print(fruitlist.last);
  print(fruitlist.elementAt(2));

  print(fruitlist
      .runtimeType); // index dy kr os index ke be type check kr skty hai

  print(fruitlist.isEmpty); // ye check kre ga ke empty hai ya nahi

  print(fruitlist.isNotEmpty);

  fruitlist.replaceRange(1, 3, [
    "Watermelon",
    "Banana",
    "Banana",
    "Banana",
    "Banana4"
  ]); // esme hm replace kr skty hai start wala index replace ho ga liken end wala index replace nahi ho ga or ander jitny marzi index add krwa do or ye print ke ander error dy ga esliye print alag se krwana ho ga or agr start or end dono same dy do to wo index replace nahi ho ga balke add krdy ga oske index pr

  print(fruitlist);

  fruitlist.add("papita"); // single value add kre ga last me
  print(fruitlist);

  fruitlist.addAll(["Avocado", "cherry"]); // multiple value add kre ga last me
  print(fruitlist);

  print(fruitlist.indexWhere((fruit) =>
      fruit == "PineApple")); // konsa fruit kes index me hai ye check kre ga

  fruitlist.insertAll(2, [
    "add one item",
    "second item"
  ]); // esi trha esme be insert hota jo sirf single data insert kre ga kahi be or insert all multiple data insert kre ga
  print(fruitlist);

  fruitlist.remove(
      "Banana"); // ye jaha value ho gi waha se remove kre ga os value ko or agr same name ho gy to pehly wala sirf remove kre ga dosra wala nahi ho ga same name
  print(fruitlist);

  // fruitlist.removeAt(8);
  fruitlist.removeAt(fruitlist.length -
      3); // ue last se minus kre ga or ye sirf index se minus kre ga
  print(fruitlist);

  fruitlist.removeWhere((element) =>
      element == "Banana" ||
      element ==
          "Banana4"); // esme agr or operator use kre gy to dono condition waly delete krdy ga agr  ho gy liken esme && operator use nhi kr skta or esme jaha jaha wo value ho gi es index se remove ho jaen gi
  print(fruitlist);

  fruitlist.retainWhere((element) =>
      element == "Watermelon" ||
      element == "second item" ||
      element == "PineApple" ||
      element ==
          "cherry"); // esme jo chahiye wo likh dy baki sb delete krdy ga jo hm value dy gy bs wo bacha kr rkhy ga
  print(fruitlist);

  fruitlist.removeRange(1,
      3); // ye bs range dekh kr delete kre ga last wala include nahi ho ga or first wala include ho ga
  print(fruitlist);

  var newfruit = ["Mango", "Banana", 34];
  newfruit.replaceRange(1, 2, ["Apple", 2, 4]);

  newfruit.addAll(["cherry", 56]);
  print(newfruit);
}
