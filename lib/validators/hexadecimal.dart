/// Checks if the string is a hexadecimal number.
///
/// Accepts an optional `0x` or `0h` prefix followed by one or more
/// hexadecimal digits.
///
/// Example:
/// ```dart
/// isHexadecimal('deadBEEF'); // true
/// isHexadecimal('0xff'); // true
/// isHexadecimal('xyz'); // false
/// ```
bool isHexadecimal(String str) => _isHexadecimal(str);

/// Extension providing hexadecimal validation methods on [String].
extension HexadecimalX on String {
  /// Checks if the string is a hexadecimal number.
  bool get isHexadecimal {
    return _isHexadecimal(this);
  }
}

final _hexadecimal = RegExp(r'^(0x|0h)?[0-9A-Fa-f]+$');

bool _isHexadecimal(String str) {
  return _hexadecimal.hasMatch(str);
}
