/// Checks if the string is base32 encoded.
///
/// Base32 encoding uses a 32-character set (A-Z and 2-7) to represent binary data.
/// Valid base32 strings may include padding with '=' characters.
///
/// Returns `true` if the string is valid base32 encoded, otherwise returns `false`.
///
/// Example:
/// ```dart
/// isBase32('JBSWY3DPEHPK3PXP'); // true
/// isBase32('hello world'); // false
/// ```
bool isBase32(String str) => _isBase32(str);

/// Extension providing base32 validation methods on [String].
extension Base32X on String {
  /// Checks if the string is base32 encoded.
  ///
  /// Base32 encoding uses a 32-character set (A-Z and 2-7) to represent binary data.
  /// Valid base32 strings may include padding with '=' characters.
  ///
  /// Returns `true` if the string is valid base32 encoded, otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// 'JBSWY3DPEHPK3PXP'.isBase32; // true
  /// 'hello world'.isBase32; // false
  /// ```
  bool get isBase32 {
    return _isBase32(this);
  }
}

/// Internal implementation for base32 validation.
///
/// Validates if a string is base32 encoded using a regular expression
/// that matches uppercase letters A-Z, digits 2-7, and optional padding
/// with '=' characters at the end.
bool _isBase32(String str) {
  return RegExp(r'^[A-Z2-7]+=*$').hasMatch(str);
}
