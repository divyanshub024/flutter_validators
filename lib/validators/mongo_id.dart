/// Checks if the string is a valid MongoDB ObjectId.
///
/// A MongoDB ObjectId is a 24-character hexadecimal string.
///
/// Example:
/// ```dart
/// isMongoId('507f1f77bcf86cd799439011'); // true
/// isMongoId('507f1f77bcf86cd79943901'); // false (too short)
/// isMongoId('zzzf1f77bcf86cd799439011'); // false
/// ```
bool isMongoId(String str) => _isMongoId(str);

/// Extension providing MongoDB ObjectId validation methods on [String].
extension MongoIdX on String {
  /// Checks if the string is a valid MongoDB ObjectId.
  bool get isMongoId {
    return _isMongoId(this);
  }
}

final _mongoId = RegExp(r'^[0-9a-fA-F]{24}$');

bool _isMongoId(String str) {
  return _mongoId.hasMatch(str);
}
