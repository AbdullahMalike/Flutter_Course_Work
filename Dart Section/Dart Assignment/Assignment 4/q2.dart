void main() {
  int first_number = 0, second_num = 1, n = 20;
  if (n >= 1) {
    print(first_number);
  }
  if (n >= 2) {
    print(second_num);
  }
  for (int i = 3; i <= n; i++) {
    int next = first_number + second_num;
    if (next <= n) {
      print(next);
    } else {
      break;
    }
    first_number = second_num;
    second_num = next;
  }
}
