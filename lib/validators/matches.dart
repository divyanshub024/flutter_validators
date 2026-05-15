/// Checks if the string matches the given [pattern].
///
/// The [pattern] may be a [RegExp] or any [Pattern]. A match anywhere in the
/// string is sufficient.
///
/// Example:
/// ```dart
/// matches('abc123', RegExp(r'\d+')); // true
/// matches('abc', RegExp(r'^\d+$')); // false
/// ```
bool matches(String str, Pattern pattern) => _matches(str, pattern);

/// Extension providing pattern matching methods on [String].
extension MatchesX on String {
  /// Checks if the string matches the given [pattern].
  bool matches(Pattern pattern) {
    return _matches(this, pattern);
  }
}

bool _matches(String str, Pattern pattern) {
  return str.contains(pattern);
}
