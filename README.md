# Flutter Validators

<p align="left">
  <a href="https://img.shields.io/badge/License-MIT-green"><img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License"></a>
  <a href="https://github.com/divyanshub024/flutter_validators/stargazers"><img src="https://img.shields.io/github/stars/divyanshub024/flutter_validators?style=flat&logo=github&colorB=green&label=stars" alt="stars"></a>
  <a href="https://pub.dev/packages/flutter_validators"><img src="https://img.shields.io/pub/v/flutter_validators.svg" alt="Pub"></a>
</p>

The most comprehensive Dart and Flutter string validation package. Inspired by [validator.js](https://github.com/validatorjs/validator.js).

## Installation

Add this to your package's `pubspec.yaml`:

```yaml
dependencies:
  flutter_validators: ^1.1.0
```

## Usage

Import the package in your Dart file:
```dart
import 'package:flutter_validators/flutter_validators.dart';
```

There are two primary ways to use this package:

### 1. Flutter Form Validation
The package provides a `Validator` class perfectly suited for use inside Flutter `TextFormField`s. It automatically handles error messages and null safety.

```dart
TextFormField(
  decoration: const InputDecoration(labelText: 'Email'),
  validator: Validator.email(errorMessage: 'Please enter a valid email'),
)
```

See the `example/` directory for a full working Flutter Form example.

### 2. Standard Dart Extension Methods
You can call validation methods directly on any Dart string using the built-in extension methods!

```dart
print('foo@bar.com'.isEmail); // true
print('https://google.com'.isURL); // true
print('123e4567-e89b-12d3-a456-426614174000'.isUUID); // true
```

## Available Validators

Here is a list of the validators currently available. Every validator is available both as a function (`isEmail(str)`) and as a string extension (`str.isEmail`).

| Validator     | Description |
| -----------   | ----------- |
| `isAlpha`, `isAlphanumeric` | Check if a string contains only letters, or letters and numbers. |
| `isAscii` | Check if a string contains ASCII chars only. |
| `isBase32`, `isBase58` | Check if a string is base32/base58 encoded. |
| `isBoolean` | Check if string is a boolean (`true`, `false`, `1`, `0`). |
| `isCreditCard` | Check if string is a valid credit card using the Luhn Algorithm. |
| `isDate` | Check if string is a valid date formatting. |
| `isEmail` | Check if string is a valid email. |
| `equals` | Check if both Strings are exactly equal. |
| `isHexColor` | Check if string is a valid hexadecimal color. |
| `isIP`, `isIPv4`, `isIPv6`| Check if string is a valid IP address. |
| `isInt`, `isNumeric` | Check if string is a valid integer or number. |
| `isJson` | Check if string is valid JSON. |
| `isLength` | Check if string falls in a specific min/max length range. |
| `isPhone` | Check if string is a valid phone number. |
| `isURL` | Check if string is a valid URL. |
| `isUUID` | Check if string is a valid UUID. |

### Flutter Form `Validator` methods

The `Validator` class exposes builders corresponding to each validation type:
- `Validator.required({String errorMessage})`
- `Validator.email({String errorMessage})`
- `Validator.url({String errorMessage})`
- `Validator.ip({int? version, String errorMessage})`
- `Validator.date({String errorMessage})`
- `Validator.numeric({String errorMessage})`
- `Validator.integer({String errorMessage})`
- `Validator.alpha({String errorMessage})`
- `Validator.alphanumeric({String errorMessage})`
- `Validator.phone({String errorMessage})`
- `Validator.creditCard({String errorMessage})`
- `Validator.json({String errorMessage})`
- `Validator.uuid({String errorMessage})`
- `Validator.hexColor({String errorMessage})`
- `Validator.ascii({String errorMessage})`
- `Validator.base32({String errorMessage})`
- `Validator.base58({String errorMessage})`
- `Validator.boolean({String errorMessage})`
- `Validator.equals(String comparison, {String errorMessage})`
- `Validator.length(int min, {int? max, String errorMessage})`

## License
MIT License
