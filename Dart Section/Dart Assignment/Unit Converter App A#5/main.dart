import 'dart:io';

void main() {
  print("");
  print("==========================");
  print("|   Unit App Convertor   |");
  print("==========================");
  print("");
  bool isapp_run = false;

  while (!isapp_run) {
    print("Select One Option");

    print("""1. Length Conversion
2. Temperature conversion
3. Area Conversion
4. Weight Conversion
5. Time conversion
6. Exit """);
    int option = int.parse(stdin.readLineSync()!);
    switch (option) {
      case 1:
        LengthConverstion();
        break;
      case 2:
        TemperatureConverstion();
        break;
      case 3:
        AreaConversion();
        break;
      case 4:
        WeightConversion();
        break;
      case 5:
        Timeconversion();
      case 6:
        print("Good Bye :)");
        exit(0);
    }
  }
}

LengthConverstion() {
  print("");
  print("Length Converstion");
  print("");
  print("""1.Meter to kilometers
2.Kilometer to Meters
3.feet to Inches
4.Inches to Feet
5.Centimeter to Meter
6.Meter to Centimeter """);
  print("Select any one Option: ");
  double result = 0.0;
  int lenght_opt = int.parse(stdin.readLineSync()!);
  switch (lenght_opt) {
    case 1:
      print("Enter Length in Meter: ");
      double meter = double.parse(stdin.readLineSync()!);
      result = meter / 1000;
      print("Length Meter to kilometers: $result");
      break;
    case 2:
      print("Enter Length in Kilo Meter: ");
      double km = double.parse(stdin.readLineSync()!);
      result = km * 1000;
      print("Length Kilometer to Meters: $result");
      break;
    case 3:
      print("Enter Length in Feet: ");
      double feet = double.parse(stdin.readLineSync()!);
      result = feet * 12;
      print("Length feet to Inches: $result");
      break;
    case 4:
      print("Enter Length in Inches: ");
      double inches = double.parse(stdin.readLineSync()!);
      result = inches / 12;
      print("Length Inches to Feet: $result");
      break;
    case 5:
      print("Enter length in Centimeter: ");
      double centimeter = double.parse(stdin.readLineSync()!);
      result = centimeter / 100;
      print("Length Centimeter to Meter: $result");
      break;
    case 6:
      print("Enter length in Meter: ");
      double meter_to_centi = double.parse(stdin.readLineSync()!);
      result = meter_to_centi * 100;
      print("Length Meter to Centimeter: $result");
      break;
    default:
      print("Invalid Nmber");
  }
  Continueapp();
}

TemperatureConverstion() {
  print("");
  print("Temperature conversion");
  print("");
  print("""1.Fahrenheit to Celcius
2.Celcius to Fahrenheit
 """);
  print("Select any one Option: ");
  double result = 0.0;
  int temp_opt = int.parse(stdin.readLineSync()!);

  switch (temp_opt) {
    case 1:
      print("Enter Temperature in F: ");
      double fahr = double.parse(stdin.readLineSync()!);
      result = (fahr - 32) * 5 / 9;
      print("Temperature Fahrenheit to Celcius: $result");
      break;
    case 2:
      print("Enter Temperature in C: ");
      double cel = double.parse(stdin.readLineSync()!);
      result = (cel * 9 / 5) + 32;
      print("Temperature Celcius to Fahrenheit: $result");
      break;
    default:
      print("Invalid Number");
  }
  Continueapp();
}

AreaConversion() {
  print("");
  print("Area conversion");
  print("");
  print("""1.Square Miles to Square yards
2.Square Yards to Square Miles
3.Square Yards to Square Feet
4.Square Feet to Square Yards
 """);
  print("Select any one Option: ");
  double result = 0.0;
  int area_opt = int.parse(stdin.readLineSync()!);
  switch (area_opt) {
    case 1:
      print("Enter length in Square Miles: ");
      double sq_mile = double.parse(stdin.readLineSync()!);
      result = sq_mile * 3097600;
      print("Area Square Miles to Square yards: $result");
      break;
    case 2:
      print("Enter length in Square Yards: ");
      double sq_yards = double.parse(stdin.readLineSync()!);
      result = sq_yards / 3097600;
      print("Area Square Yards to Square Miles: $result");
      break;
    case 3:
      print("Enter length in Square Yards: ");
      double sq_yard_feets = double.parse(stdin.readLineSync()!);
      result = sq_yard_feets * 9;
      print("Area Square Yards to Square Feet: $result");
      break;
    case 4:
      print("Enter length in Square Feets: ");
      double sq_feets = double.parse(stdin.readLineSync()!);
      result = sq_feets / 9;
      print("Area Square Feet to Square Yards: $result");
      break;
    default:
      print("Invalid Number");
  }
  Continueapp();
}

WeightConversion() {
  print("");
  print("Weight conversion");
  print("");
  print("""1.Kg to Grams
2.Grams to Kg
3.Pounds to Kg
4.Kg to Tons
5.Tons to Kg
 """);
  print("Select any one Option: ");
  double result = 0.0;
  int weiht_opt = int.parse(stdin.readLineSync()!);
  switch (weiht_opt) {
    case 1:
      print("Enter weight in KG: ");
      double gram = double.parse(stdin.readLineSync()!);
      result = gram * 1000;
      print("Weight Kg to Grams: $result");
      break;
    case 2:
      print("Enter weight in Garam: ");
      double gram_kg = double.parse(stdin.readLineSync()!);
      result = gram_kg / 1000;
      print("Weight Grams to Kg: $result");
      break;
    case 3:
      print("Enter weight in Pounds: ");
      double ponds_kg = double.parse(stdin.readLineSync()!);
      result = ponds_kg * 0.45359237;
      print("Weight Pounds to Kg: $result");
      break;
    case 4:
      print("Enter weight in KG: ");
      double tons = double.parse(stdin.readLineSync()!);
      result = tons / 1000;
      print("Weight Kg to Tons: $result");
      break;
    case 5:
      print("Enter weight in Ton: ");
      double tons_kg = double.parse(stdin.readLineSync()!);
      result = tons_kg * 1000;
      print("Weight Tons to Kg: $result");
      break;
    default:
      print("Invalid Number");
  }
  Continueapp();
}

Timeconversion() {
  print("");
  print("Time conversion");
  print("");
  print("""1.Seconds to Minutes
2.Minutes to Seconds
3.Minutes to Hours
4.Seconds to Hours
5.Milliseconds to Minutes
6.Milliseconds to Hours
 """);
  print("Select any one Option: ");
  double result = 0.0;
  int time_opt = int.parse(stdin.readLineSync()!);
  switch (time_opt) {
    case 1:
      print("Enter Time in Seconds: ");
      double sec = double.parse(stdin.readLineSync()!);
      result = sec / 60;
      print("Time Seconds to Minutes: $result");
      break;
    case 2:
      print("Enter Time in Minutes: ");
      double minutes = double.parse(stdin.readLineSync()!);
      result = minutes * 60;
      print("Time Minutes to Seconds: $result");
      break;
    case 3:
      print("Enter Time in Minutes: ");
      double hrs = double.parse(stdin.readLineSync()!);
      result = hrs / 60;
      print("Time Minutes to Hours: $result");
      break;
    case 4:
      print("Enter Time in Seconds: ");
      double sec_hrs = double.parse(stdin.readLineSync()!);
      result = sec_hrs / 3600;
      print("Time Seconds to Hours: $result");
      break;
    case 5:
      print("Enter Time in Milliseconds: ");
      double millisec = double.parse(stdin.readLineSync()!);
      result = millisec / 60000;
      print("Time Milliseconds to Minutes: $result");
      break;
    case 6:
      print("Enter time in Milliseconds: ");
      double milisec_hrs = double.parse(stdin.readLineSync()!);
      result = milisec_hrs / 3600000;
      print("Time Miliseconds to Hours: $result");
      break;
    default:
      print("Invalid Number");
  }
  Continueapp();
}

Continueapp() {
  print("""Do you want to Continue?
1. Yes
2.No   """);
  int conti = int.parse(stdin.readLineSync()!);
  if (conti == 2) {
    print("Good Bye :)");
    exit(0);
  }
}
