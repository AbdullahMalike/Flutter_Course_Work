void main() {
  List<String> city = ['Karachi', "Lahore", "Multan", "Islamabad"];
  List<String> reversed_city = rever_order(city);
  print("Original List: $city");
  print("Reversed List: $reversed_city");
}

List<String> rever_order(List<String> city) {
  List<String> reversed_list = city.reversed.toList();
  return reversed_list;
}
