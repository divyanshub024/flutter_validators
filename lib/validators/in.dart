/// Checks if the string is one of the [values].
///
/// Example:
/// ```dart
/// isIn('red', ['red', 'green', 'blue']); // true
/// isIn('yellow', ['red', 'green', 'blue']); // false
/// ```
bool isIn(String str, Iterable<String> values) => _isIn(str, values);

/// Extension providing membership validation methods on [String].
extension InX on String {
  /// Checks if the string is one of the [values].
  bool isIn(Iterable<String> values) {
    return _isIn(this, values);
  }
}

bool _isIn(String str, Iterable<String> values) {
  return values.contains(str);
}
