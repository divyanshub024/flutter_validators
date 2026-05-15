/// Checks if the string is a valid JSON Web Token (JWT).
///
/// A JWT consists of three base64url-encoded segments separated by dots.
/// The signature segment may be empty (for unsigned tokens).
///
/// Example:
/// ```dart
/// isJWT('eyJhbGci.eyJzdWIi.SflKxwRJ'); // true
/// isJWT('eyJhbGci.eyJzdWIi'); // false (only two segments)
/// ```
bool isJWT(String str) => _isJWT(str);

/// Extension providing JWT validation methods on [String].
extension JWTX on String {
  /// Checks if the string is a valid JSON Web Token (JWT).
  bool get isJWT {
    return _isJWT(this);
  }
}

final _base64Url = RegExp(r'^[A-Za-z0-9_-]+$');

bool _isJWT(String str) {
  final parts = str.split('.');
  if (parts.length != 3) return false;
  if (parts[0].isEmpty || parts[1].isEmpty) return false;
  for (var i = 0; i < 2; i++) {
    if (!_base64Url.hasMatch(parts[i])) return false;
  }
  return parts[2].isEmpty || _base64Url.hasMatch(parts[2]);
}
