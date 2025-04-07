import 'dart:convert';

/// Checks if the string is valid JSON.
///
/// Uses Dart's `JsonDecoder` to validate if the string can be parsed as proper JSON.
/// Empty strings are considered invalid JSON.
///
/// Returns `true` if the string contains valid JSON, otherwise returns `false`.
///
/// Example:
/// ```dart
/// isJson('{"name":"John", "age":30}'); // true
/// isJson('[1, 2, 3]'); // true
/// isJson('"hello"'); // true (valid JSON string)
/// isJson('{ invalid json }'); // false
/// isJson(''); // false (empty string)
/// ```
bool isJson(String str) => _isJson(str);

/// Extension providing JSON validation methods on [String].
extension JsonX on String {
  /// Checks if the string is valid JSON.
  ///
  /// Uses Dart's `JsonDecoder` to validate if the string can be parsed as proper JSON.
  /// Empty strings are considered invalid JSON.
  ///
  /// Returns `true` if the string contains valid JSON, otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// '{"name":"John", "age":30}'.isJson; // true
  /// '[1, 2, 3]'.isJson; // true
  /// '"hello"'.isJson; // true (valid JSON string)
  /// '{ invalid json }'.isJson; // false
  /// ''.isJson; // false (empty string)
  /// ```
  bool get isJson {
    return _isJson(this);
  }
}

/// Internal implementation for JSON validation.
///
/// The implementation:
/// 1. First checks if the string is empty, returning false if it is
/// 2. Attempts to decode the string using Dart's `JsonDecoder`
/// 3. Returns true if decoding succeeds
/// 4. Catches any exceptions during decoding and returns false
///
/// This handles all valid JSON types: objects, arrays, strings, numbers, booleans, and null.
bool _isJson(String str) {
  if (str.isEmpty) {
    return false;
  }

  try {
    // Try to decode the string as JSON
    // This will throw a FormatException if the string is not valid JSON
    const JsonDecoder().convert(str);
    return true;
  } catch (e) {
    return false;
  }
}
