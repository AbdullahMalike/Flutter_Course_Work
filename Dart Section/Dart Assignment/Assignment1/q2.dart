void main() {
  num Fahrenheit = 120, Celsius = 40;
  num convertcel = ((Celsius) * 9 / 5) + 32;
  num convertfahren = (Fahrenheit - 32) * 5 / 9;

  print("Temperature of Fahrenheit is: $Fahrenheit");
  print("Temperature of Celsius is: $Celsius");
  print("");
  print("Temperature Fahrenheit to Celsius: $convertfahren C");
  print("Temperature Celsius to Fahrenheit: $convertcel F");
}
