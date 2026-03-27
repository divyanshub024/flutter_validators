/// Checks if the string's length falls in a range.
///
/// The length of the string must be at least [min].
/// If [max] is provided, the length must also be at most [max].
///
/// Example:
/// ```dart
/// isLength('abc', 2); // true
/// isLength('abc', 4); // false
/// isLength('abc', 1, 3); // true
/// ```
bool isLength(String str, int min, [int? max]) => _isLength(str, min, max);

/// Extension providing length validation methods on [String].
extension LengthX on String {
  /// Checks if the string's length falls in a range.
  bool isLength(int min, [int? max]) {
    return _isLength(this, min, max);
  }
}

bool _isLength(String str, int min, [int? max]) {
  return str.length >= min && (max == null || str.length <= max);
}
