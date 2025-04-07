/// Check if string is a valid email.
bool isEmail(String str) => _isEmail(str);

extension EmailX on String {
  bool get isEmail {
    return _isEmail(this);
  }
}

bool _isEmail(String str) {
  return RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  ).hasMatch(str);
}
