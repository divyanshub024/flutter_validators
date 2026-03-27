import 'package:flutter_validators/flutter_validators.dart';

/// A utility class for Flutter Form validation.
/// Provides methods that return a validator function suitable for `TextFormField`.
///
/// Example:
/// ```dart
/// TextFormField(
///   validator: Validator.email(errorMessage: 'Please enter a valid email'),
/// )
/// ```
class Validator {
  /// Ensures the field is not null or empty.
  static String? Function(String?) required({
    String errorMessage = 'This field is required',
  }) {
    return (String? value) =>
        value == null || value.trim().isEmpty ? errorMessage : null;
  }

  /// Ensures the string is a valid email.
  static String? Function(String?) email({
    String errorMessage = 'Please enter a valid email address',
  }) {
    return _build(errorMessage, (v) => v.isEmail);
  }

  /// Ensures the string is a valid URL.
  static String? Function(String?) url({
    String errorMessage = 'Please enter a valid URL',
  }) {
    return _build(errorMessage, (v) => v.isURL);
  }

  /// Ensures the string is a valid IP address.
  static String? Function(String?) ip({
    int? version,
    String errorMessage = 'Please enter a valid IP address',
  }) {
    return _build(errorMessage, (v) => isIP(v, version));
  }

  /// Ensures the string is a valid date.
  static String? Function(String?) date({
    String errorMessage = 'Please enter a valid date',
  }) {
    return _build(errorMessage, (v) => v.isDate);
  }

  /// Ensures the string is a valid number.
  static String? Function(String?) numeric({
    String errorMessage = 'Please enter a valid number',
  }) {
    return _build(errorMessage, (v) => v.isNumeric);
  }

  /// Ensures the string is a valid integer.
  static String? Function(String?) integer({
    String errorMessage = 'Please enter a valid whole number',
  }) {
    return _build(errorMessage, (v) => v.isInt);
  }

  /// Ensures the string consists only of letters.
  static String? Function(String?) alpha({
    String errorMessage = 'Only letters are allowed',
  }) {
    return _build(errorMessage, (v) => v.isAlpha);
  }

  /// Ensures the string consists only of letters and numbers.
  static String? Function(String?) alphanumeric({
    String errorMessage = 'Only letters and numbers are allowed',
  }) {
    return _build(errorMessage, (v) => v.isAlphanumeric);
  }

  /// Ensures the string is a valid phone number.
  static String? Function(String?) phone({
    String errorMessage = 'Please enter a valid phone number',
  }) {
    return _build(errorMessage, (v) => v.isPhone);
  }

  /// Ensures the string is a valid credit card.
  static String? Function(String?) creditCard({
    String errorMessage = 'Please enter a valid credit card number',
  }) {
    return _build(errorMessage, (v) => v.isCreditCard);
  }

  /// Ensures the string is valid JSON.
  static String? Function(String?) json({
    String errorMessage = 'Please enter valid JSON',
  }) {
    return _build(errorMessage, (v) => v.isJson);
  }

  /// Ensures the string is a valid UUID.
  static String? Function(String?) uuid({
    String errorMessage = 'Please enter a valid UUID',
  }) {
    return _build(errorMessage, (v) => v.isUUID);
  }

  /// Ensures the string is a valid hex color.
  static String? Function(String?) hexColor({
    String errorMessage = 'Please enter a valid hex color (e.g. #ff0000)',
  }) {
    return _build(errorMessage, (v) => v.isHexColor);
  }

  /// Ensures the string only contains ASCII characters.
  static String? Function(String?) ascii({
    String errorMessage = 'Only ASCII characters are allowed',
  }) {
    return _build(errorMessage, (v) => v.isAscii);
  }

  /// Ensures the string is a valid Base32 encoded string.
  static String? Function(String?) base32({
    String errorMessage = 'Please enter a valid Base32 encoded string',
  }) {
    return _build(errorMessage, (v) => v.isBase32);
  }

  /// Ensures the string is a valid Base58 encoded string.
  static String? Function(String?) base58({
    String errorMessage = 'Please enter a valid Base58 encoded string',
  }) {
    return _build(errorMessage, (v) => v.isBase58);
  }

  /// Ensures the string represents a boolean value.
  static String? Function(String?) boolean({
    String errorMessage = 'Please enter true or false',
  }) {
    return _build(errorMessage, (v) => v.isBoolean);
  }

  /// Ensures the string matches the comparison string exactly.
  static String? Function(String?) equals(
    String comparison, {
    String errorMessage = 'Values do not match',
  }) {
    return _build(errorMessage, (v) => v.equals(comparison));
  }

  /// Ensures the string length falls within the specified range.
  static String? Function(String?) length(
    int min, {
    int? max,
    String errorMessage = 'Length is out of range',
  }) {
    return _build(errorMessage, (v) => v.isLength(min, max));
  }

  /// Internal helper to construct the validator closure
  static String? Function(String?) _build(
    String errorMessage,
    bool Function(String) test,
  ) {
    return (String? value) {
      if (value == null || value.isEmpty)
        return null; // Let 'required' handle empty states
      return test(value) ? null : errorMessage;
    };
  }
}
