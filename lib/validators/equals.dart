/// Checks if two strings are exactly equal.
///
/// Performs a direct string comparison between `str` and `comparison`.
/// This comparison is case-sensitive.
///
/// Returns `true` if the strings are identical, otherwise returns `false`.
///
/// Example:
/// ```dart
/// equals('hello', 'hello'); // true
/// equals('Hello', 'hello'); // false (case-sensitive)
/// equals('hello', 'world'); // false
/// ```
bool equals(String str, String comparison) => _equals(str, comparison);

/// Extension providing string equality methods on [String].
extension EqualX on String {
  /// Checks if this string is exactly equal to another string.
  ///
  /// Performs a direct string comparison between this string and `comparison`.
  /// This comparison is case-sensitive.
  ///
  /// Returns `true` if the strings are identical, otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// 'hello'.equals('hello'); // true
  /// 'Hello'.equals('hello'); // false (case-sensitive)
  /// 'hello'.equals('world'); // false
  /// ```
  bool equals(String comparison) {
    return _equals(this, comparison);
  }
}

/// Internal implementation for string equality validation.
///
/// Performs a direct string comparison using Dart's built-in equality operator (==).
/// This is a case-sensitive comparison that checks if both strings have identical content.
bool _equals(String str, String comparison) {
  return str == comparison;
}
