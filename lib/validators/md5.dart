/// Checks if the string is a valid MD5 hash.
///
/// An MD5 hash is a 32-character hexadecimal string.
///
/// Example:
/// ```dart
/// isMD5('d41d8cd98f00b204e9800998ecf8427e'); // true
/// isMD5('d41d8cd98f00b204e9800998ecf8427'); // false (too short)
/// ```
bool isMD5(String str) => _isMD5(str);

/// Extension providing MD5 hash validation methods on [String].
extension MD5X on String {
  /// Checks if the string is a valid MD5 hash.
  bool get isMD5 {
    return _isMD5(this);
  }
}

final _md5 = RegExp(r'^[0-9a-fA-F]{32}$');

bool _isMD5(String str) {
  return _md5.hasMatch(str);
}
