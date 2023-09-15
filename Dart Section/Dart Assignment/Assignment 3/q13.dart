void main() {
  List<int> numbers6 = [1, 3, 2, 4, 5, 8, 20];
  print("Original List: $numbers6");
  List<int> even_numbers = Find_even_numbers(numbers6);
  print("Even Number from Original List: $even_numbers");
}

List<int> Find_even_numbers(List<int> numbers6) {
  List<int> even_numbers =
      numbers6.where((element) => element % 2 == 0).toList();
  return even_numbers;
}
