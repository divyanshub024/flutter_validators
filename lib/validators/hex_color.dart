/// Checks if the string is a hexadecimal color.
///
/// Validates 3 or 6 digit hex colors, optional `#` prefix.
///
/// Example:
/// ```dart
/// isHexColor('#fff'); // true
/// isHexColor('ff0000'); // true
/// isHexColor('#ff0000'); // true
/// isHexColor('invalid'); // false
/// ```
bool isHexColor(String str) => _isHexColor(str);

/// Extension providing hexadecimal color validation methods on [String].
extension HexColorX on String {
  /// Checks if the string is a hexadecimal color.
  bool get isHexColor {
    return _isHexColor(this);
  }
}

bool _isHexColor(String str) {
  return RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$').hasMatch(str);
}
