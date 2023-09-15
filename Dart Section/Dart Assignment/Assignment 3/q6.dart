import 'dart:math';

void main() {
  List<int> numb = [2, 6, 1, 8, 10, 22, 9];
  int largest_value = max_value(numb);
  print("MAx value is: $largest_value");
}

max_value(List<int> numb) {
  int large_value = numb.reduce(max);
  return large_value;
}
