/// Checks if the string is an octal number.
///
/// Accepts an optional `0o` prefix followed by one or more octal digits
/// (0–7).
///
/// Example:
/// ```dart
/// isOctal('0o123'); // true
/// isOctal('777'); // true
/// isOctal('088'); // false
/// ```
bool isOctal(String str) => _isOctal(str);

/// Extension providing octal validation methods on [String].
extension OctalX on String {
  /// Checks if the string is an octal number.
  bool get isOctal {
    return _isOctal(this);
  }
}

final _octal = RegExp(r'^(0o)?[0-7]+$');

bool _isOctal(String str) {
  return _octal.hasMatch(str);
}
