void main() {
  List<int> numbers = [1, 2, 5, 2, 87, 45, 66, 99, 121, 50];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 5) {
      print(numbers[i]);
    }
  }
}
