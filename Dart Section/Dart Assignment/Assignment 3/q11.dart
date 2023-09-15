void main() {
  List<int> numbers4 = [3, 6, 1, 9, 5, 4, 7, 8, 2];
  print("Original List: $numbers4");
  sorted_list(numbers4);
  print("Sorted List: ${sorted_list(numbers4)}");
}

List<int> sorted_list(List<int> numbers4) {
  numbers4.sort();
  return numbers4;
}
