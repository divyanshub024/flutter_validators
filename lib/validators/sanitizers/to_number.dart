/// Converts the string to an integer.
///
/// Returns `null` if the string cannot be parsed. An optional [radix]
/// between 2 and 36 may be supplied.
///
/// Example:
/// ```dart
/// toInt('42'); // 42
/// toInt('ff', radix: 16); // 255
/// toInt('abc'); // null
/// ```
int? toInt(String str, {int? radix}) => int.tryParse(str.trim(), radix: radix);

/// Converts the string to a double.
///
/// Returns `null` if the string cannot be parsed.
///
/// Example:
/// ```dart
/// toFloat('3.14'); // 3.14
/// toFloat('abc'); // null
/// ```
double? toFloat(String str) => double.tryParse(str.trim());

/// Converts the string to a [DateTime].
///
/// Returns `null` if the string cannot be parsed.
///
/// Example:
/// ```dart
/// toDate('2024-01-15'); // DateTime(2024, 1, 15)
/// toDate('not-a-date'); // null
/// ```
DateTime? toDate(String str) => DateTime.tryParse(str.trim());

/// Extension providing numeric and date conversions on [String].
extension ToNumberX on String {
  /// Converts this string to an integer, or `null` if it cannot be parsed.
  int? toInt({int? radix}) => int.tryParse(trim(), radix: radix);

  /// Converts this string to a double, or `null` if it cannot be parsed.
  double? toFloat() => double.tryParse(trim());

  /// Converts this string to a [DateTime], or `null` if it cannot be parsed.
  DateTime? toDate() => DateTime.tryParse(trim());
}
