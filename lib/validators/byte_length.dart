import 'dart:convert';

/// Checks if the string's UTF-8 byte length falls in a range.
///
/// The byte length must be at least [min]. If [max] is provided, it must
/// also be at most [max].
///
/// Example:
/// ```dart
/// isByteLength('abc', 2); // true
/// isByteLength('abc', 4); // false
/// isByteLength('é', 1, 2); // true ('é' is 2 bytes in UTF-8)
/// ```
bool isByteLength(String str, int min, [int? max]) =>
    _isByteLength(str, min, max);

/// Extension providing byte-length validation methods on [String].
extension ByteLengthX on String {
  /// Checks if the string's UTF-8 byte length falls in a range.
  bool isByteLength(int min, [int? max]) {
    return _isByteLength(this, min, max);
  }
}

bool _isByteLength(String str, int min, int? max) {
  final length = utf8.encode(str).length;
  return length >= min && (max == null || length <= max);
}
