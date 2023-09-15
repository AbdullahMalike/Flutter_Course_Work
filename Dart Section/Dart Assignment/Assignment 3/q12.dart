void main() {
  List<int> numbers5 = [-1, -10, 4, -4, 5, 7, 8];
  print("Original List: $numbers5");
  List<int> result5 = remove_neg_values(numbers5);
  print("Remove Negative values From List: $result5");
}

List<int> remove_neg_values(List<int> numbers5) {
  List<int> result3 = numbers5.where((element) => element > 0).toList();
  return result3;
}
