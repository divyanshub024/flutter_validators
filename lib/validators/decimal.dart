/// Checks if the string represents a decimal number.
///
/// Accepts an optional sign followed by digits with an optional fractional
/// part (e.g. `1`, `-1.5`, `.5`, `+10.0`).
///
/// Example:
/// ```dart
/// isDecimal('1.5'); // true
/// isDecimal('-0.25'); // true
/// isDecimal('.5'); // true
/// isDecimal('1.'); // false
/// isDecimal('abc'); // false
/// ```
bool isDecimal(String str) => _isDecimal(str);

/// Extension providing decimal validation methods on [String].
extension DecimalX on String {
  /// Checks if the string represents a decimal number.
  bool get isDecimal {
    return _isDecimal(this);
  }
}

final _decimal = RegExp(r'^[+-]?(\d+(\.\d+)?|\.\d+)$');

bool _isDecimal(String str) {
  return _decimal.hasMatch(str);
}
