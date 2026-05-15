/// Checks if the string is a valid URL slug.
///
/// A slug contains only lowercase letters, digits and single hyphens, and
/// must not start or end with a hyphen.
///
/// Example:
/// ```dart
/// isSlug('my-blog-post'); // true
/// isSlug('post-123'); // true
/// isSlug('-leading'); // false
/// isSlug('double--hyphen'); // false
/// ```
bool isSlug(String str) => _isSlug(str);

/// Extension providing slug validation methods on [String].
extension SlugX on String {
  /// Checks if the string is a valid URL slug.
  bool get isSlug {
    return _isSlug(this);
  }
}

final _slug = RegExp(r'^[a-z0-9]+(?:-[a-z0-9]+)*$');

bool _isSlug(String str) {
  return _slug.hasMatch(str);
}
