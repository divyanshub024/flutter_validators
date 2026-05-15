/// Checks if the string is entirely lowercase.
///
/// A string is considered lowercase if it is unchanged when converted to
/// lower case. Strings without cased characters (digits, symbols) and the
/// empty string are considered lowercase.
///
/// Example:
/// ```dart
/// isLowercase('hello'); // true
/// isLowercase('hello123'); // true
/// isLowercase('Hello'); // false
/// ```
bool isLowercase(String str) => _isLowercase(str);

/// Extension providing lowercase validation methods on [String].
extension LowercaseX on String {
  /// Checks if the string is entirely lowercase.
  bool get isLowercase {
    return _isLowercase(this);
  }
}

bool _isLowercase(String str) {
  return str == str.toLowerCase();
}
