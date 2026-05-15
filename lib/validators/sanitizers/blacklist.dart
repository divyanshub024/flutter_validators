/// Removes all characters that appear in [chars] from the string.
///
/// Example:
/// ```dart
/// blacklist('hello world', 'lo'); // 'he wrd'
/// ```
String blacklist(String str, String chars) => _blacklist(str, chars);

/// Removes all characters that do not appear in [chars] from the string.
///
/// Example:
/// ```dart
/// whitelist('hello world', 'lo'); // 'llool'
/// ```
String whitelist(String str, String chars) => _whitelist(str, chars);

/// Extension providing character filtering sanitizers on [String].
extension BlacklistX on String {
  /// Removes all characters that appear in [chars] from the string.
  String blacklist(String chars) => _blacklist(this, chars);

  /// Removes all characters that do not appear in [chars] from the string.
  String whitelist(String chars) => _whitelist(this, chars);
}

String _blacklist(String str, String chars) {
  if (chars.isEmpty) return str;
  final set = chars.split('').toSet();
  return str.split('').where((c) => !set.contains(c)).join();
}

String _whitelist(String str, String chars) {
  final set = chars.split('').toSet();
  return str.split('').where(set.contains).join();
}
