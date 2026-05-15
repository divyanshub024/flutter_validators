/// Removes the given [chars] from both ends of the string.
///
/// If [chars] is `null`, leading and trailing whitespace is removed.
///
/// Example:
/// ```dart
/// trim('  hello  '); // 'hello'
/// trim('xxhelloxx', 'x'); // 'hello'
/// ```
String trim(String str, [String? chars]) {
  return rtrim(ltrim(str, chars), chars);
}

/// Removes the given [chars] from the start of the string.
///
/// If [chars] is `null`, leading whitespace is removed.
///
/// Example:
/// ```dart
/// ltrim('  hello'); // 'hello'
/// ltrim('xxhello', 'x'); // 'hello'
/// ```
String ltrim(String str, [String? chars]) {
  if (chars == null) return str.trimLeft();
  final set = chars.split('').toSet();
  var start = 0;
  while (start < str.length && set.contains(str[start])) {
    start++;
  }
  return str.substring(start);
}

/// Removes the given [chars] from the end of the string.
///
/// If [chars] is `null`, trailing whitespace is removed.
///
/// Example:
/// ```dart
/// rtrim('hello  '); // 'hello'
/// rtrim('helloxx', 'x'); // 'hello'
/// ```
String rtrim(String str, [String? chars]) {
  if (chars == null) return str.trimRight();
  final set = chars.split('').toSet();
  var end = str.length;
  while (end > 0 && set.contains(str[end - 1])) {
    end--;
  }
  return str.substring(0, end);
}

/// Extension providing trimming sanitizers on [String].
extension TrimX on String {
  /// Removes the given [chars] from both ends of the string.
  String trimChars(String chars) => trim(this, chars);

  /// Removes the given [chars] from the start of the string.
  String ltrimChars(String chars) => ltrim(this, chars);

  /// Removes the given [chars] from the end of the string.
  String rtrimChars(String chars) => rtrim(this, chars);
}
