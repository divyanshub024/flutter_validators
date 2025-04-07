/// Checks if the string represents a valid integer.
///
/// Uses Dart's `int.tryParse` to determine if the string can be parsed as an integer.
/// This supports both positive and negative integers, as well as leading zeros.
///
/// Returns `true` if the string can be converted to an integer, otherwise returns `false`.
///
/// Example:
/// ```dart
/// isInt('123'); // true
/// isInt('-123'); // true
/// isInt('01'); // true
/// isInt('12.34'); // false
/// isInt('abc'); // false
/// ```
bool isInt(String str) => _isInt(str);

/// Extension providing integer validation methods on [String].
extension IntX on String {
  /// Checks if the string represents a valid integer.
  ///
  /// Uses Dart's `int.tryParse` to determine if the string can be parsed as an integer.
  /// This supports both positive and negative integers, as well as leading zeros.
  ///
  /// Returns `true` if the string can be converted to an integer, otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// '123'.isInt; // true
  /// '-123'.isInt; // true
  /// '01'.isInt; // true
  /// '12.34'.isInt; // false
  /// 'abc'.isInt; // false
  /// ```
  bool get isInt {
    return _isInt(this);
  }
}

/// Internal implementation for integer validation.
///
/// Uses Dart's built-in `int.tryParse` method to attempt parsing the string as an integer.
/// The method returns null if parsing fails, which indicates the string is not a valid integer.
bool _isInt(String str) {
  return int.tryParse(str) != null;
}
