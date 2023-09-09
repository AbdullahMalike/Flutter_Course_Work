void main() {
  int year = 2023;
  if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
    print("$year is a Leap Year");
  } else {
    print("$year is not a leap year");
  }
}
