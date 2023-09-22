void main() {
  // var names = [];

  // ye map hai list ke trha hota hai liken esme key hoti hai jes se hm oska data access kr skty hai or keys unique hoti hai
  var mMap = {
    "name": ["Abdullah", "Malik"],
    "gender": "male"
  };

// containskey se check kre ga ke key exist kr rhi ya nahi agr nahi kr rhi to add krdy ga
  if (!mMap.containsKey("fname")) {
    mMap["fname"] =
        "Akram"; // key add kr dega map me agr bad me key add krwani ho to
    print(mMap);
  }

  // containvalues same values check kre ga ke contain kr rha ya nhi
  if (mMap.containsValue("female")) {
    print("Yes Exist");
  } else {
    print("Not Exist");
  }

  // mMap.clear();  // es se map clear ho jaen ga

// putifAbsent check kre ga agr ye exist nhi krta to add krdy ga new key or new value add krdy ga map
  mMap.putIfAbsent("dob", () => "oct");

// addall merge krdy ga 2 maps ko
  var classinfo = {"class": "University", "Semester": "6"};
  mMap.addAll(classinfo);

  // mMap.remove("name");
  mMap.removeWhere((key, value) =>
      (key == "name" && value == ["Abdullah"]) || value == "male");

  print(mMap);

  print(mMap.length);
  print(mMap.keys);
  print(mMap["gender"]);
  print(mMap.values);

// double .. multiple time addall ka access deta hai map ko merge krne me
  var exp = {}
    ..addAll(classinfo)
    ..addAll(mMap);

// ... ye 3 dort map ke ander hi merge krdy ga baki ke maps ko es new map me
  var exp1 = {...exp, ...classinfo};
  print(exp1);

  //  list convert into map

  var listvalues = ["ABdullah", "MAJU", "6", "3.1"];
  var listkeys = ["Name", "Uni", "Semester", "CGPA"];

  var result = Map.fromIterables(listkeys, listvalues);
  print(result);

  //   ====  Loops ======

  for (var table = 2; table <= 10; table++) {
    print("Table of $table");
    for (var i = 1; i <= 10; i++) {
      print("$table X $i = ${table * i}");
    }
  }
// print
  var list1 = ["apple", "banana", "mango"];
  for (var i = 0; i < list1.length; i++) {
    print("${i + 1}: ${list1[i]} ");
  }
}
