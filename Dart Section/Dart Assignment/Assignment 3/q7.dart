void main() {
  List<String> fruitlist = [
    "apple",
    "banana",
    "cherry",
    "apple",
    "Watermelon",
    "Mango",
    "cherry"
  ];
  List<String> result = removeduplicate_values(fruitlist);
  print("");
  print("After Remove Duplicate Values New List is: $result");
}

// use the same name in function parameter jo ke hm ne oper declare ke hai list
List<String> removeduplicate_values(List<String> fruitlist) {
  List<String> result = [];
  for (int i = 0; i < fruitlist.length; i++) {
    String currentElement = fruitlist[i];
    if (result.indexOf(currentElement) == -1) {
      // -1 check if the value is not present in current index so they return -1 afer that if condition run so they store values in result list
      result.add(currentElement);
    }
  }
  return result;
}
