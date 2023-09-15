void main() {
  List<String> list1 = ["FLutter", "Website", "Web app", "database", "backend"];
  list1.replaceRange(2, 3, ["Frontend"]);

  List<int> list2 = [1, 2, 3, 4, 5];
  list2.replaceRange(2, 3, [6]);

  List<bool> list3 = [true, false, false, true, true];
  list3.replaceRange(2, 5, [true, true, false]);

  print("List 1 result Replace middle element: $list1");
  print("List 2 result replace 3rd last element: $list2");
  print("List 3 result replace 2,3 & 4th element: $list3");
}
