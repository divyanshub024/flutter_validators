/// Checks if the string is a valid URL.
///
/// Returns `true` if the string can be parsed as a valid Uri, otherwise returns `false`.
///
/// Example:
/// ```dart
/// isURL('https://google.com'); // true
/// isURL('invalid-url'); // false
/// ```
bool isURL(String str) => _isURL(str);

/// Extension providing URL validation methods on [String].
extension UrlX on String {
  /// Checks if the string is a valid URL.
  bool get isURL {
    return _isURL(this);
  }
}

bool _isURL(String str) {
  if (str.isEmpty) return false;
  final uri = Uri.tryParse(str);
  return uri != null && uri.hasAuthority && (uri.scheme == 'http' || uri.scheme == 'https');
}
