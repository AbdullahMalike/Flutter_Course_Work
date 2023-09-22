void main() {
  List<int> number = [6, 33, 45, 76, 24, 1, 98, 5, 199, 46];
  int smallest_value = number[0], largest_value = number[0];
  for (int i = 1; i < number.length; i++) {
    if (number[i] < smallest_value) {
      smallest_value = number[i];
    }
    if (number[i] > largest_value) {
      largest_value = number[i];
    }
  }
  print("Samllest Value in the list is: $smallest_value");
  print("Largest value in the list is: $largest_value");
}
