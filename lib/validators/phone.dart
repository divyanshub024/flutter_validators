/// Validator for phone numbers
/// This supports various phone number formats including:
/// - International format with country code: +1234567890, +1 234 567 890
/// - Local formats: (123) 456-7890, 123-456-7890, 123.456.7890
/// - Simple digit sequence: 1234567890

/// Check if string is a valid phone number
bool isPhone(String str) => _isPhone(str);

extension PhoneX on String {
  /// Returns true if this string is a valid phone number
  bool get isPhone {
    return _isPhone(this);
  }
}

bool _isPhone(String str) {
  if (str.isEmpty) {
    return false;
  }

  // Common phone number patterns
  final patterns = [
    // International format with + and country code
    r'^\+[1-9]\d{1,14}$',

    // International format with spaces/dashes after country code
    r'^\+[1-9][\s.-]?\d{1,3}[\s.-]?\d{3,4}[\s.-]?\d{3,4}$',

    // US/North American format
    r'^\([0-9]{3}\)\s[0-9]{3}-[0-9]{4}$',
    r'^[0-9]{3}-[0-9]{3}-[0-9]{4}$',

    // Format with dots
    r'^[0-9]{3}\.[0-9]{3}\.[0-9]{4}$',

    // Simple sequence of digits (at least 7, at most 15)
    r'^[0-9]{7,15}$',
  ];

  for (final pattern in patterns) {
    final regExp = RegExp(pattern);
    if (regExp.hasMatch(str)) {
      return true;
    }
  }

  return false;
}
