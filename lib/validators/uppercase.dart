/// Checks if the string is entirely uppercase.
///
/// A string is considered uppercase if it is unchanged when converted to
/// upper case. Strings without cased characters (digits, symbols) and the
/// empty string are considered uppercase.
///
/// Example:
/// ```dart
/// isUppercase('HELLO'); // true
/// isUppercase('HELLO123'); // true
/// isUppercase('Hello'); // false
/// ```
bool isUppercase(String str) => _isUppercase(str);

/// Extension providing uppercase validation methods on [String].
extension UppercaseX on String {
  /// Checks if the string is entirely uppercase.
  bool get isUppercase {
    return _isUppercase(this);
  }
}

bool _isUppercase(String str) {
  return str == str.toUpperCase();
}
