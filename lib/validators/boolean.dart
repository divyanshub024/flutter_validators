/// Checks if the string represents a boolean value.
///
/// Returns `true` if the string is one of: 'true', 'false', '1', or '0',
/// otherwise returns `false`.
///
/// Example:
/// ```dart
/// isBoolean('true'); // true
/// isBoolean('false'); // true
/// isBoolean('1'); // true
/// isBoolean('0'); // true
/// isBoolean('yes'); // false
/// ```
bool isBoolean(String str) => _isBoolean(str);

/// Extension providing boolean validation methods on [String].
extension BooleanX on String {
  /// Checks if the string represents a boolean value.
  ///
  /// Returns `true` if the string is one of: 'true', 'false', '1', or '0',
  /// otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// 'true'.isBoolean; // true
  /// 'false'.isBoolean; // true
  /// '1'.isBoolean; // true
  /// '0'.isBoolean; // true
  /// 'yes'.isBoolean; // false
  /// ```
  bool get isBoolean {
    return _isBoolean(this);
  }
}

/// Internal implementation for boolean validation.
///
/// Validates if a string represents a boolean value by checking
/// if it matches any of the common boolean representations:
/// 'true', 'false', '1', or '0'.
bool _isBoolean(String str) {
  return ['true', 'false', '1', '0'].contains(str);
}
