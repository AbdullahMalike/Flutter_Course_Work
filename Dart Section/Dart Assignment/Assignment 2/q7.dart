void main() {
  num customer_id = 1001;
  var customer_name = "Abdullah";
  num units = 800;

  print("========  Electricity Bill  ================");
  print("");

  if (units <= 199) {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 1.20 per unit: ${units * 1.20}");
    print("Net Bill Amount: ${units * 1.20}");
  } else if (units >= 200 && units < 400) {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 1.50 per unit: ${units * 1.50}");
    print("Net Bill Amount: ${units * 1.50}");
  } else if (units >= 400 && units < 600) {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 1.80 per unit: ${units * 1.80}");
    print("Net Bill Amount: ${units * 1.80}");
  } else {
    print("Customer ID: $customer_id");
    print("Customer Name: $customer_name");
    print("Unit Consumed: $units");
    print("Amount Charges @Rs 2.00 per unit: ${units * 2.00}");
    print("Net Bill Amount: ${units * 2.00}");
  }
}
