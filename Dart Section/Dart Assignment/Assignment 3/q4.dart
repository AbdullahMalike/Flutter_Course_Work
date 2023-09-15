import 'dart:math';

void main() {
  List<int> numbers = [1, 2, 6, 4, 9, 8, 7];
  var smallest_num = numbers.reduce(min);
  var largest_num = numbers.reduce(max);

  print("Smallest Number in List is: $smallest_num");
  print("Largest Number in List is: $largest_num");

  // int small = numbers[0], largest = numbers[0];
  // for (int i = 1; i < numbers.length; i++) {
  //   if (numbers[i] < small) {
  //     small = numbers[i];
  //   }
  //   if (numbers[i] > largest) {
  //     largest = numbers[i];
  //   }
  // }
  // print(small);
  // print(largest);
}
