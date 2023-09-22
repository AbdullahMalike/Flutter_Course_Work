void main() {
  List<int> numbers = [3, -5, 8, -2, -10, 15, -7, -6];
  int sum = 0, count = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < 0) {
      sum += numbers[i];
      count++;
    }
  }
  double avg;
  if (count > 0) {
    avg = sum / count;
  } else {
    avg = 0.0;
  }
  print(avg);
}
