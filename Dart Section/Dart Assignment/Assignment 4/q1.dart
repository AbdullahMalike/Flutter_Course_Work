void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> even_numbers = [];

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      even_numbers.add(numbers[i]);
    }
  }
  print("Items in List: $even_numbers");
}
