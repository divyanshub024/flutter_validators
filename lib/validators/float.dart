/// Checks if the string represents a finite floating-point number.
///
/// If [min] and/or [max] are provided, the parsed value must also fall
/// within that inclusive range.
///
/// Example:
/// ```dart
/// isFloat('1.5'); // true
/// isFloat('-3'); // true
/// isFloat('1.5', min: 0, max: 2); // true
/// isFloat('5', min: 0, max: 2); // false
/// isFloat('abc'); // false
/// ```
bool isFloat(String str, {double? min, double? max}) => _isFloat(str, min, max);

/// Extension providing float validation methods on [String].
extension FloatX on String {
  /// Checks if the string represents a finite floating-point number.
  bool isFloat({double? min, double? max}) {
    return _isFloat(this, min, max);
  }
}

bool _isFloat(String str, double? min, double? max) {
  final value = double.tryParse(str);
  if (value == null || !value.isFinite) return false;
  if (min != null && value < min) return false;
  if (max != null && value > max) return false;
  return true;
}
