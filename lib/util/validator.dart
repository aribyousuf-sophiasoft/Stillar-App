class Validator {
  static String validateEmail(String value) {
    Pattern pattern = r'[^\@]+\@[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please enter a valid email address.';
    else
      return null;
  }

  static String validatePassword(String value) {
    Pattern pattern = r'^((?=.*[A-Z])(?=.*\W).{8,13})$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Password Length must be between 8 and 13 and must contain 1 Special Character and 1 number"';
    else
      return null;
  }


  static String validateConfirmPassword(String value,String PrevValue) {
    if (value!=PrevValue)
      return 'Password Does Not Match';
    else
      return null;
  }

  static String validateName(String value) {
    Pattern pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please enter a valid name.';
    else
      return null;
  }

  static String validateNumber(String value) {
    Pattern pattern = r'^(0041|\+41)?[1-9\s][0-9\s]{8}$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Invalid Phone format. Valid Formats are (+41/0041)(XX)XXXXXXX ';
    else
      return null;
  }
}