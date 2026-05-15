/// Checks if the string is a valid Semantic Version (SemVer).
///
/// Follows the official Semantic Versioning 2.0.0 specification, including
/// optional pre-release and build metadata.
///
/// Example:
/// ```dart
/// isSemVer('1.0.0'); // true
/// isSemVer('2.1.0-alpha.1'); // true
/// isSemVer('1.0.0+build.5'); // true
/// isSemVer('1.0'); // false
/// ```
bool isSemVer(String str) => _isSemVer(str);

/// Extension providing SemVer validation methods on [String].
extension SemVerX on String {
  /// Checks if the string is a valid Semantic Version (SemVer).
  bool get isSemVer {
    return _isSemVer(this);
  }
}

final _semver = RegExp(
  r'^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)'
  r'(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)'
  r'(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?'
  r'(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$',
);

bool _isSemVer(String str) {
  return _semver.hasMatch(str);
}
