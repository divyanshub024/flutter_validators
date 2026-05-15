/// Replaces HTML-unsafe characters with their entity equivalents.
///
/// Escapes `&`, `<`, `>`, `"`, `'`, `` ` ``, `/` and `\`.
///
/// Example:
/// ```dart
/// escape('<script>'); // '&lt;script&gt;'
/// ```
String escape(String str) => _escape(str);

/// Converts HTML entities back into their unsafe character equivalents.
///
/// Reverses the transformation performed by [escape].
///
/// Example:
/// ```dart
/// unescape('&lt;script&gt;'); // '<script>'
/// ```
String unescape(String str) => _unescape(str);

/// Extension providing HTML escape sanitizers on [String].
extension EscapeX on String {
  /// Replaces HTML-unsafe characters with their entity equivalents.
  String escape() => _escape(this);

  /// Converts HTML entities back into their unsafe character equivalents.
  String unescape() => _unescape(this);
}

String _escape(String str) {
  return str
      .replaceAll('&', '&amp;')
      .replaceAll('"', '&quot;')
      .replaceAll("'", '&#x27;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;')
      .replaceAll('/', '&#x2F;')
      .replaceAll('\\', '&#x5C;')
      .replaceAll('`', '&#96;');
}

String _unescape(String str) {
  return str
      .replaceAll('&quot;', '"')
      .replaceAll('&#x27;', "'")
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>')
      .replaceAll('&#x2F;', '/')
      .replaceAll('&#x5C;', '\\')
      .replaceAll('&#96;', '`')
      .replaceAll('&amp;', '&');
}
