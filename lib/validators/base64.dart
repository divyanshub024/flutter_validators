/// Checks if the string is Base64 encoded.
///
/// By default the standard Base64 alphabet is used. Set [urlSafe] to `true`
/// to validate against the URL- and filename-safe alphabet.
///
/// Example:
/// ```dart
/// isBase64('aGVsbG8='); // true
/// isBase64('aGVsbG8'); // false (invalid padding)
/// isBase64('aGVsbG8', urlSafe: true); // true
/// ```
bool isBase64(String str, {bool urlSafe = false}) => _isBase64(str, urlSafe);

/// Extension providing Base64 validation methods on [String].
extension Base64X on String {
  /// Checks if the string is Base64 encoded.
  bool isBase64({bool urlSafe = false}) {
    return _isBase64(this, urlSafe);
  }
}

final _base64Standard = RegExp(
  r'^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{4})$',
);
final _base64UrlSafe = RegExp(r'^[A-Za-z0-9_-]+$');

bool _isBase64(String str, bool urlSafe) {
  if (str.isEmpty) return false;
  if (urlSafe) {
    return _base64UrlSafe.hasMatch(str);
  }
  if (str.length % 4 != 0) return false;
  return _base64Standard.hasMatch(str);
}
