/// Check if a string is an integer.
bool isInt(String str) => _isInt(str);

/// Extension on String to check if it is an integer.
extension IntX on String {
  bool get isInt {
    return _isInt(this);
  }
}

/// Check if a string is an integer.
bool _isInt(String str) {
  return int.tryParse(str) != null;
}
