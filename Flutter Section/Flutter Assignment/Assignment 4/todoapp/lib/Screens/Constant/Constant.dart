class Constant {
  static String username = "";
  static String password = "";
  static String confirm_password = "";
  static String _title = "";
  static String _discription = "";

  static String get title => _title;
  static set title(String value) {
    _title = value;
  }

  static String get discription => _discription;
  static set discription(String value) {
    _discription = value;
  }
}
