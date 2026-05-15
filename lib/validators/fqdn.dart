/// Checks if the string is a fully qualified domain name (FQDN).
///
/// Requires at least two labels separated by dots, a valid top-level domain,
/// and labels that do not start or end with a hyphen.
///
/// Example:
/// ```dart
/// isFQDN('example.com'); // true
/// isFQDN('sub.example.co.uk'); // true
/// isFQDN('localhost'); // false (no TLD)
/// isFQDN('-bad.com'); // false
/// ```
bool isFQDN(String str) => _isFQDN(str);

/// Extension providing FQDN validation methods on [String].
extension FQDNX on String {
  /// Checks if the string is a fully qualified domain name (FQDN).
  bool get isFQDN {
    return _isFQDN(this);
  }
}

final _fqdnLabel = RegExp(r'^[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?$');
final _fqdnTld = RegExp(r'^[a-zA-Z]{2,}$|^xn--[a-zA-Z0-9]+$');

bool _isFQDN(String str) {
  if (str.isEmpty) return false;
  var domain = str;
  if (domain.endsWith('.')) {
    domain = domain.substring(0, domain.length - 1);
  }
  final parts = domain.split('.');
  if (parts.length < 2) return false;

  final tld = parts.removeLast();
  if (!_fqdnTld.hasMatch(tld)) return false;

  for (final part in parts) {
    if (part.isEmpty || part.length > 63) return false;
    if (!_fqdnLabel.hasMatch(part)) return false;
  }
  return true;
}
