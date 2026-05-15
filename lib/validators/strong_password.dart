/// Checks if the string is a strong password.
///
/// By default the password must be at least 8 characters long and contain
/// at least one lowercase letter, one uppercase letter, one digit and one
/// symbol. Each requirement is configurable.
///
/// Example:
/// ```dart
/// isStrongPassword('Abcd1234!'); // true
/// isStrongPassword('weak'); // false
/// isStrongPassword('abcdefgh', minUppercase: 0, minNumbers: 0, minSymbols: 0); // true
/// ```
bool isStrongPassword(
  String str, {
  int minLength = 8,
  int minLowercase = 1,
  int minUppercase = 1,
  int minNumbers = 1,
  int minSymbols = 1,
}) => _isStrongPassword(
  str,
  minLength,
  minLowercase,
  minUppercase,
  minNumbers,
  minSymbols,
);

/// Extension providing strong-password validation methods on [String].
extension StrongPasswordX on String {
  /// Checks if the string is a strong password.
  bool isStrongPassword({
    int minLength = 8,
    int minLowercase = 1,
    int minUppercase = 1,
    int minNumbers = 1,
    int minSymbols = 1,
  }) {
    return _isStrongPassword(
      this,
      minLength,
      minLowercase,
      minUppercase,
      minNumbers,
      minSymbols,
    );
  }
}

final _lowercase = RegExp(r'[a-z]');
final _uppercase = RegExp(r'[A-Z]');
final _numbers = RegExp(r'[0-9]');
final _symbols = RegExp(r'[^a-zA-Z0-9]');

bool _isStrongPassword(
  String str,
  int minLength,
  int minLowercase,
  int minUppercase,
  int minNumbers,
  int minSymbols,
) {
  if (str.length < minLength) return false;
  if (_lowercase.allMatches(str).length < minLowercase) return false;
  if (_uppercase.allMatches(str).length < minUppercase) return false;
  if (_numbers.allMatches(str).length < minNumbers) return false;
  if (_symbols.allMatches(str).length < minSymbols) return false;
  return true;
}
