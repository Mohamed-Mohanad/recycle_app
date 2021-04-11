//

bool validateName(String input) {
  // Pattern pattern = '^[a-z A-Z,.\-]+\$';
  Pattern pattern =
      '^[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z]+[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z-_]+\$';
  Pattern temp = '^[p{L}]';
  RegExp regex = RegExp(pattern);
  if (regex.hasMatch(input)) return true;
  return false;
}

bool validateNumber(String input) {
  Pattern pattern = '^[1-9]+[0-9]*\$';
  RegExp regex = RegExp(pattern);
  if (regex.hasMatch(input)) return true;
  return false;
}

bool validateNumberOrEmpty(String input) {
  Pattern pattern = '^[1-9]+[0-9]*\$';
  RegExp regex = RegExp(pattern);
  if (input.isEmpty || regex.hasMatch(input)) return true;
  return false;
}

bool validatePhoneNumber(String input) {
  Pattern pattern =
      '^(\\+201[0125]\\d{8}|\\+9665[503649187]\\d{7}|\\+965[569]\\d{7}|\\+971(2|3|4|6|7|9|50|52|54|55|56|58)\\d{7})\$';
  RegExp regex = RegExp(pattern);
  if (regex.hasMatch(input)) return true;
  return false;
}

bool validatePassword(String input) {
  Pattern pattern = '^([a-zA-Z0-9@*#]{6,})\$';
  RegExp regex = RegExp(pattern);
  if (regex.hasMatch(input)) return true;
  return false;
}

bool validateDropDown({String initialValue, String input}) {
  if (initialValue != input) return true;
  return false;
}
