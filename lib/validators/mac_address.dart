/// Checks if the string is a valid MAC address.
///
/// Accepts EUI-48 (6-byte) and EUI-64 (8-byte) addresses using `:` or `-`
/// as separators, as well as the separator-less form.
///
/// Example:
/// ```dart
/// isMACAddress('00:1B:44:11:3A:B7'); // true
/// isMACAddress('00-1B-44-11-3A-B7'); // true
/// isMACAddress('001B44113AB7'); // true
/// isMACAddress('00:1B:44:11:3A'); // false
/// ```
bool isMACAddress(String str) => _isMACAddress(str);

/// Extension providing MAC address validation methods on [String].
extension MACAddressX on String {
  /// Checks if the string is a valid MAC address.
  bool get isMACAddress {
    return _isMACAddress(this);
  }
}

final _macAddress = RegExp(
  r'^(?:[0-9A-Fa-f]{2}([:-]))(?:[0-9A-Fa-f]{2}\1){4}[0-9A-Fa-f]{2}$'
  r'|^(?:[0-9A-Fa-f]{2}([:-]))(?:[0-9A-Fa-f]{2}\2){6}[0-9A-Fa-f]{2}$'
  r'|^[0-9A-Fa-f]{12}$'
  r'|^[0-9A-Fa-f]{16}$',
);

bool _isMACAddress(String str) {
  return _macAddress.hasMatch(str);
}
