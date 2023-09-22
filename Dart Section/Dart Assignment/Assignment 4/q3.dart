void main() {
  int number = 17;
  if (number <= 1) {
    print("$number not a prime Number");
  } else {
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) {
        print("$number Not a Prime Number");
        return;
      }
    }
    print("$number is a Prime Number");
  }
}
