void main() {
  String sent = "My name is Abdullah";

  sent = sent.toLowerCase();
  // print(sent);
  int count_vowels = 0;
  for (int i = 0; i < sent.length; i++) {
    String current_character = sent[i];
    if (current_character == "a" ||
        current_character == "e" ||
        current_character == "i" ||
        current_character == "o" ||
        current_character == "u") {
      count_vowels++;
    }
  }
  print("Total Vowels are: $count_vowels");
}
