void main() {
  List<int> numbers7 = [2, 4, 6, 8, 10];
  List<int> square_values = convert_to_square(numbers7);
  print("Original List Before Maping: $numbers7");
  print("After Mapring and Return Sqaure Values: $square_values");
}

List<int> convert_to_square(List<int> numbers7) {
  List<int> sqaure_values = numbers7.map((e) => e * e).toList();
  return sqaure_values;
}
