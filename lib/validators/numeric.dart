/// Checks if the string represents a valid number.
///
/// Uses Dart's `double.tryParse` to determine if the string is number-like.
/// Supports integers, floats, and negative numbers.
///
/// Example:
/// ```dart
/// isNumeric('123'); // true
/// isNumeric('12.34'); // true
/// isNumeric('-42'); // true
/// isNumeric('abc'); // false
/// ```
bool isNumeric(String str) => _isNumeric(str);

/// Extension providing numeric validation methods on [String].
extension NumericX on String {
  /// Checks if the string represents a valid number.
  bool get isNumeric {
    return _isNumeric(this);
  }
}

bool _isNumeric(String str) {
  var v = double.tryParse(str);
  return v != null && v.isFinite;
}
