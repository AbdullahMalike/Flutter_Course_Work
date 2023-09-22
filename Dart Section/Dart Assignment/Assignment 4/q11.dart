void main() {
  List<int> numbers = [1, 4, 2, 7, 3, 9, 17, 25];
  int sum_fo_sq = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 != 0) {
      int sq = numbers[i] * numbers[i];
      sum_fo_sq += sq;
    }
  }
  print("Sum of Sqaure of Odd number is: $sum_fo_sq");
}
