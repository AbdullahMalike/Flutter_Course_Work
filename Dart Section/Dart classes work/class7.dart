void main() {
  List fruitslist = ["Apple", "Banana", "Mango"];
  showfruit(fruitslist, "Cherry");
  var printname = namelist("6th semester", "SP21-BSSE-0011",
      lname: "Akram", fname: "Abdullah");
  print(printname);

// class object or instance
  print("");
  print("Class work");
  print("");
  var Human = Person(
      "rafay", 22); // --> constructor ke bad hi function hi use ho skta hai

  Human.changeData("Abdullah Akram",
      19); // agr ye function run kr rha to override kr rha values ko jb same variable use kr rha or sirf object se hi function call ho skta hai

  var human1 = Person.helloworl("Ahtasham", 25);

  print("${Human.name} ${Human.age}");
  print("${Human.name2} ${Human.age2}");
  print("${human1.name} ${human1.age}");

// =====  inheritance class work

  var Phone = MobileDetail("Samsung", "A22", "60,000");
  print(Phone.showdetail());
  print(Phone.showMobiledetail());
}

showfruit(List fruit, String newfruit) {
  fruit.add(newfruit);
  // for in loop only list ke liye use hota hai

  for (var fruits in fruit) {
    print(fruits);
  }
}

// Named/optional parameter functions -->  ye tb use krty jb parameter zyada ho like 3 parameter liken hm data 2 ka insert kre or function ke parameter me ye rule hai ke position parameter pehly ay gy named parameter bad me ay gy agr dono ek sath use kre gy nechy ke code me kia hai namelist me

// value ke agy default value set ke hoi hai or agr ? to be nullable variable ban jaen ga or agr required lga do ga tb be error solve ho jaen ga to wo dalna zaroori hai
namelist(String mclass, String rollno,
    {required String fname, String mname = "", required String lname}) {
  return "$mclass $rollno $fname $mname $lname";
}

// class work start

class Person {
  String name = "Abdullah";
  int age = 21;
  String name2 = "";
  int age2 = 0;

  // changeData(String mName, int mage) {
  //   name = mName;
  //   age = mage;
  // }
  // agr esi function ke variable or class ke variable ko same rkhty hai to this use krty hai btany ke lye kon kes ka variable hai this. ke sath jo variable ho ga wo class ka ho ga

  changeData(String name2, int age2) {
    this.name2 = name2;
    this.age2 = age2;
  }

// default constructor
  // Person() {
  //   name = "Rafay";
  //   age = 22;
  //   print("$name $age");
  // }

// constructr with parameter

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // named COnstructor
  Person.helloworl(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

//  ====== inheritance class =========

// Note --> parent wala sir data hm child class ke object se access kr skty hai liken parent se child ka access nhi kr skty  jesko child bnana ho ga osko extend krdy gy parent se                                                                                                                        or eske ilawa multilevel inheritance hai jo parent to child phr ye child third child ka parent ban jata hai

class Mobile {
  String? mobile_name;
  String? mobile_model;
  String? mobile_price;

  showdetail() {
    return "$mobile_name $mobile_model $mobile_price";
  }
}

class MobileDetail extends Mobile {
  MobileDetail(String mobile_name, String mobile_model, String mobile_price) {
    this.mobile_name = mobile_name;
    this.mobile_model = mobile_model;
    this.mobile_price = mobile_price;
  }
// agr same name ke function hai parent or child class me hai to child wala chale ga
  showdetail() {
    return "Mobile Name: $mobile_name Model: $mobile_model Price: $mobile_price";
  }

  showMobiledetail() {
    return "$mobile_name sold out";
  }
}
