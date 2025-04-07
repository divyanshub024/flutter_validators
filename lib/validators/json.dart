import 'dart:convert';

/// Check if string is a valid JSON.
bool isJson(String str) => _isJson(str);

extension JsonX on String {
  bool get isJson {
    return _isJson(this);
  }
}

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
