/// Checks if the string contains only letters (a-z, A-Z).
///
/// Example:
/// ```dart
/// isAlpha('abc'); // true
/// isAlpha('abc1'); // false
/// ```
bool isAlpha(String str) => _isAlpha(str);

/// Checks if the string contains only letters and numbers.
///
/// Example:
/// ```dart
/// isAlphanumeric('abc1'); // true
/// isAlphanumeric('abc!'); // false
/// ```
bool isAlphanumeric(String str) => _isAlphanumeric(str);

/// Extension providing alpha and alphanumeric validation methods on [String].
extension AlphaX on String {
  /// Checks if the string contains only letters (a-z, A-Z).
  bool get isAlpha {
    return _isAlpha(this);
  }

  /// Checks if the string contains only letters and numbers.
  bool get isAlphanumeric {
    return _isAlphanumeric(this);
  }
}

bool _isAlpha(String str) {
  return RegExp(r'^[a-zA-Z]+$').hasMatch(str);
}

bool _isAlphanumeric(String str) {
  return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(str);
}
