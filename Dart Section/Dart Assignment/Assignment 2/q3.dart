void main() {
  num classes_held = 16;
  num attend_classes = 10;
  num attendance_percentage = (attend_classes * 100) / classes_held;

  if (attendance_percentage >= 75) {
    print("Student is allowed to sit in exam");
  } else {
    print("Student is not allowed to sit in exam");
  }
}
