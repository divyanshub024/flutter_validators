/// Checks if the string represents a valid date.
///
/// Uses Dart's built-in `DateTime.tryParse` to validate the string formatting.
///
/// Example:
/// ```dart
/// isDate('2023-12-01'); // true
/// isDate('invalid date'); // false
/// ```
bool isDate(String str) => _isDate(str);

/// Extension providing date validation methods on [String].
extension DateX on String {
  /// Checks if the string represents a valid date.
  bool get isDate {
    return _isDate(this);
  }
}

bool _isDate(String str) {
  return DateTime.tryParse(str) != null;
}
