/// Checks if the string is a valid port number.
///
/// A valid port is an integer in the range 0–65535 without leading zeros.
///
/// Example:
/// ```dart
/// isPort('8080'); // true
/// isPort('0'); // true
/// isPort('65536'); // false (out of range)
/// isPort('080'); // false (leading zero)
/// ```
bool isPort(String str) => _isPort(str);

/// Extension providing port validation methods on [String].
extension PortX on String {
  /// Checks if the string is a valid port number.
  bool get isPort {
    return _isPort(this);
  }
}

bool _isPort(String str) {
  if (str.isEmpty) return false;
  if (str.length > 1 && str.startsWith('0')) return false;
  final port = int.tryParse(str);
  return port != null && port >= 0 && port <= 65535;
}
