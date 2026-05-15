/// Converts the string to a boolean.
///
/// In loose mode (the default) every value is `true` except `''`, `'0'`
/// and `'false'`. In [strict] mode only `'1'` and `'true'` are `true` and
/// everything else is `false`.
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
  if (strict) {
    return str == '1' || str == 'true';
  }
  return str != '0' && str != 'false' && str != '';
}
