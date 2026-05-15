/// Converts the string to a boolean.
///
/// In loose mode (the default) every value is `true` except `''`, `'0'`
/// and `'false'`. In [strict] mode only `'1'` and `'true'` are `true` and
/// everything else is `false`. Keyword matching is case-insensitive.
///
/// Example:
/// ```dart
/// toBoolean('true'); // true
/// toBoolean('0'); // false
/// toBoolean('yes', strict: true); // false
/// ```
bool toBoolean(String str, {bool strict = false}) => _toBoolean(str, strict);

/// Extension providing boolean conversion on [String].
extension ToBooleanX on String {
  /// Converts this string to a boolean.
  bool toBoolean({bool strict = false}) => _toBoolean(this, strict);
}

bool _toBoolean(String str, bool strict) {
  final normalized = str.toLowerCase();
  if (strict) {
    return normalized == '1' || normalized == 'true';
  }
  return normalized != '0' && normalized != 'false' && normalized != '';
}
