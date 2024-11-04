class onlineShopValidator {
  static String? validateEmail(String value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$)');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email adress';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Passowd is required';
    }
    if (value.length < 6) {
      return 'Password  most contain at least one uppercase letter';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contains al least one Upercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password most conatain al least one number';
    }
    if (value.contains(RegExp(r'[!@#$%^*(),.:{}|<>]'))) {
      return 'Password must contain at last one special characted';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required';
    }
    final phoneNumberRegExp = RegExp(r' ^\d{10}$');
    if (!phoneNumberRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required)';
    }
    return null;
  }
}
