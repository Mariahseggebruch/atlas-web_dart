class Password {
  // Private property to store password
  late String _password;

  // Constructor to initialize password
  Password({required String password}) {
    this._password = password;
  }

  // Getter for password
  String get password => _password;

  // Setter for password
  set password(String value) {
    _password = value;
  }

  // Method to validate password based on specified criteria
  bool isValid() {
    // Check if password length is between 8 and 16 characters
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    // Check if password contains at least one uppercase letter
    if (!_password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }
    // Check if password contains at least one lowercase letter
    if (!_password.contains(RegExp(r'[a-z]'))) {
      return false;
    }
    // Check if password contains at least one digit
    if (!_password.contains(RegExp(r'\d'))) {
      return false;
    }
    // If all conditions are satisfied, return true
    return true;
  }

  // Override toString method to provide custom string representation
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
