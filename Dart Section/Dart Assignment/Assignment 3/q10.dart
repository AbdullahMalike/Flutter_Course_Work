void main() {
  List<int> numbers2 = [1, 2, 3, 2, 4, 6, 3, 5];
  print("Original List: $numbers2");
  List<int> res3 = unique_element(numbers2);
  print("Unique List: $res3");
}

List<int> unique_element(List<int> numbers2) {
  List<int> result3 = [];
  for (int i = 0; i < numbers2.length; i++) {
    int unique_number = numbers2[i];
    if (result3.indexOf(unique_number) == -1) {
      result3.add(unique_number);
    }
  }
  return result3;
  // print("only Unique Elements: $result3");
}
