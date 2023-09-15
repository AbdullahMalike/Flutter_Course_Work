void main() {
  List<int> numbers1 = [4, 1, 6, 2, 9];
  int n = 0;
  Firstvalue(numbers1, n);
}

void Firstvalue(List<int> numbers1, n) {
  //tolist() used for convert into list
  List<int> first_n_value = numbers1.take(2).toList();
  print(first_n_value);
}
