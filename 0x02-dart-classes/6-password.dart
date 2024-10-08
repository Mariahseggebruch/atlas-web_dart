// Password class now mutable
class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String? get password => _password;  // Getter for the password

  set password(String? newPassword) {  // Setter for the password
    _password = newPassword;
  }

  bool isValid() {
    if (_password == null) {
      return false;
    }
    bool hasUppercase = _password!.contains(new RegExp(r'[A-Z]'));
    bool hasLowercase = _password!.contains(new RegExp(r'[a-z]'));
    bool hasDigits = _password!.contains(new RegExp(r'\d'));
    bool hasValidLength = _password!.length >= 8 && _password!.length <= 16;

    return hasUppercase && hasLowercase && hasDigits && hasValidLength;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
