void main() {
  String text = "Civic";
  if (palondrome(text)) {
    print("$text: is Palindrome ");
  } else {
    print("$text: is not Palindrome");
  }
}

bool palondrome(String text) {
  text = text.replaceAll(" ", "").toLowerCase();
  String reversed_text = text.split("").reversed.join();
  return text == reversed_text;
}
