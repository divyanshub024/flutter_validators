import '../email.dart';

/// Canonicalizes an email address.
///
/// Lowercases the domain and, for Gmail addresses, lowercases the local
/// part, removes dots and strips any `+tag` suffix. Returns `null` if the
/// input is not a valid email address.
///
/// Example:
/// ```dart
/// normalizeEmail('Test.User+tag@GMAIL.com'); // 'testuser@gmail.com'
/// normalizeEmail('User@Example.COM'); // 'User@example.com'
/// normalizeEmail('not-an-email'); // null
/// ```
String? normalizeEmail(String str) => _normalizeEmail(str);

/// Extension providing email normalization on [String].
extension NormalizeEmailX on String {
  /// Canonicalizes this email address, or returns `null` if invalid.
  String? normalizeEmail() => _normalizeEmail(this);
}

String? _normalizeEmail(String str) {
  if (!isEmail(str)) return null;

  final atIndex = str.lastIndexOf('@');
  var local = str.substring(0, atIndex);
  final domain = str.substring(atIndex + 1).toLowerCase();

  const gmailDomains = {'gmail.com', 'googlemail.com'};
  if (gmailDomains.contains(domain)) {
    local = local.toLowerCase();
    final plusIndex = local.indexOf('+');
    if (plusIndex != -1) {
      local = local.substring(0, plusIndex);
    }
    local = local.replaceAll('.', '');
    return '$local@gmail.com';
  }

  return '$local@$domain';
}
