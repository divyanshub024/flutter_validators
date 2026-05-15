/// Checks if the string contains the [seed] substring.
///
/// Set [ignoreCase] to `true` for a case-insensitive match. [minOccurrences]
/// requires the seed to appear at least that many times.
///
/// Note: this is exposed only as a top-level function because [String]
/// already provides a built-in `contains` method.
///
/// Example:
/// ```dart
/// contains('hello world', 'world'); // true
/// contains('hello world', 'WORLD', ignoreCase: true); // true
/// contains('a-a-a', 'a', minOccurrences: 3); // true
/// ```
bool contains(
  String str,
  String seed, {
  bool ignoreCase = false,
  int minOccurrences = 1,
}) {
  if (seed.isEmpty) return false;
  final haystack = ignoreCase ? str.toLowerCase() : str;
  final needle = ignoreCase ? seed.toLowerCase() : seed;
  return needle.allMatches(haystack).length >= minOccurrences;
}
