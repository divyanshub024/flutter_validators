/// Removes control characters from the string.
///
/// Removes ASCII control characters (code points 0–31 and 127). When
/// [keepNewLines] is `true`, line feed (`\n`), carriage return (`\r`) and
/// horizontal tab (`\t`) are preserved.
///
/// Example:
/// ```dart
/// stripLow('hello\x00world'); // 'helloworld'
/// stripLow('line1\nline2', keepNewLines: true); // 'line1\nline2'
/// ```
String stripLow(String str, {bool keepNewLines = false}) =>
    _stripLow(str, keepNewLines);

/// Extension providing control-character stripping on [String].
extension StripLowX on String {
  /// Removes control characters from the string.
  String stripLow({bool keepNewLines = false}) => _stripLow(this, keepNewLines);
}

String _stripLow(String str, bool keepNewLines) {
  return str.split('').where((c) {
    final code = c.codeUnitAt(0);
    if (keepNewLines && (code == 9 || code == 10 || code == 13)) {
      return true;
    }
    return code > 31 && code != 127;
  }).join();
}
