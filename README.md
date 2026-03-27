<p align="center">
  <img src="https://raw.githubusercontent.com/divyanshub024/flutter_validators/main/assets/banner.png" alt="Flutter Validators Banner" />
</p>

<p align="center">
  <h1 align="center">Flutter Validators</h1>
</p>

<p align="center">
  <strong>The most comprehensive string validation package for Dart & Flutter.</strong>
</p>

<p align="center">
  <a href="https://pub.dev/packages/flutter_validators"><img src="https://img.shields.io/pub/v/flutter_validators.svg?logo=dart&color=blue" alt="Pub Version"></a>
  <a href="https://github.com/divyanshub024/flutter_validators/actions"><img src="https://github.com/divyanshub024/flutter_validators/actions/workflows/test.yml/badge.svg" alt="CI"></a>
  <a href="https://img.shields.io/badge/License-MIT-green"><img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License"></a>
  <a href="https://github.com/divyanshub024/flutter_validators/stargazers"><img src="https://img.shields.io/github/stars/divyanshub024/flutter_validators?style=flat&logo=github&colorB=green&label=stars" alt="Stars"></a>
</p>

<p align="center">
  Inspired by <a href="https://github.com/validatorjs/validator.js">validator.js</a> · 20+ validators · Works with Flutter Forms out of the box
</p>

---

A pure Dart package with 20+ string validators and sanitizers, from emails and URLs to credit cards and UUIDs. Use them as simple functions, convenient `String` extensions, or plug them directly into Flutter's `TextFormField` with the built-in `Validator` class. Zero dependencies, fully tested.

---

## 📦 Installation

```yaml
dependencies:
  flutter_validators: ^1.1.0
```

Then run:

```sh
dart pub get
```

---

## 🚀 Quick Start

```dart
import 'package:flutter_validators/flutter_validators.dart';
```

### Use as String Extensions

```dart
'foo@bar.com'.isEmail;        // true
'https://google.com'.isURL;   // true
'4111111111111111'.isCreditCard; // true
'abc123'.isAlphanumeric;      // true
```

### Use as Top-Level Functions

```dart
isEmail('foo@bar.com');       // true
isURL('https://google.com'); // true
isIP('192.168.1.1');         // true
```

---

## 📝 Flutter Form Integration

The `Validator` class returns `String? Function(String?)` closures — exactly what `TextFormField.validator` expects. Each method accepts a custom `errorMessage`.

```dart
Form(
  child: Column(
    children: [
      TextFormField(
        decoration: const InputDecoration(labelText: 'Email'),
        validator: Validator.email(errorMessage: 'Enter a valid email'),
      ),
      TextFormField(
        decoration: const InputDecoration(labelText: 'Website'),
        validator: Validator.url(),
      ),
      TextFormField(
        decoration: const InputDecoration(labelText: 'Age'),
        validator: Validator.numeric(errorMessage: 'Must be a number'),
      ),
    ],
  ),
)
```

> **Tip:** Use `Validator.required()` alongside other validators to enforce non-empty fields.

See the [`example/`](example/) directory for a complete working app.

---

## 📋 All Validators

Every validator is available **both** as a top-level function and as a `String` extension.

| Validator | Extension | Description |
|---|---|---|
| `isEmail(str)` | `str.isEmail` | Valid email address |
| `isURL(str)` | `str.isURL` | Valid HTTP/HTTPS URL |
| `isIP(str, [version])` | `str.isIP` / `str.isIPv4` / `str.isIPv6` | Valid IP address (v4 or v6) |
| `isUUID(str)` | `str.isUUID` | Valid UUID |
| `isCreditCard(str)` | `str.isCreditCard` | Credit card number (Luhn algorithm) |
| `isDate(str)` | `str.isDate` | Parseable date string |
| `isJson(str)` | `str.isJson` | Valid JSON |
| `isInt(str)` | `str.isInt` | Valid integer |
| `isNumeric(str)` | `str.isNumeric` | Valid number (int or float) |
| `isAlpha(str)` | `str.isAlpha` | Letters only (a–z, A–Z) |
| `isAlphanumeric(str)` | `str.isAlphanumeric` | Letters and numbers only |
| `isAscii(str)` | `str.isAscii` | ASCII characters only |
| `isBase32(str)` | `str.isBase32` | Base32 encoded |
| `isBase58(str)` | `str.isBase58` | Base58 encoded |
| `isBoolean(str)` | `str.isBoolean` | Boolean string (`true`/`false`/`1`/`0`) |
| `isHexColor(str)` | `str.isHexColor` | Hex color code (`#fff`, `ff0000`) |
| `isPhone(str)` | `str.isPhone` | Valid phone number |
| `isLength(str, min, [max])` | `str.isLength(min, [max])` | Length within range |
| `equals(str, comparison)` | `str.equals(comparison)` | Exact string match |

---

## 🏗️ Form Validator API Reference

All methods on the `Validator` class return `String? Function(String?)`:

```dart
Validator.required({String errorMessage})
Validator.email({String errorMessage})
Validator.url({String errorMessage})
Validator.ip({int? version, String errorMessage})
Validator.date({String errorMessage})
Validator.numeric({String errorMessage})
Validator.integer({String errorMessage})
Validator.alpha({String errorMessage})
Validator.alphanumeric({String errorMessage})
Validator.phone({String errorMessage})
Validator.creditCard({String errorMessage})
Validator.json({String errorMessage})
Validator.uuid({String errorMessage})
Validator.hexColor({String errorMessage})
Validator.ascii({String errorMessage})
Validator.base32({String errorMessage})
Validator.base58({String errorMessage})
Validator.boolean({String errorMessage})
Validator.equals(String comparison, {String errorMessage})
Validator.length(int min, {int? max, String errorMessage})
```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/divyanshub024/flutter_validators/issues).

---

## 📄 License

This project is [MIT](LICENSE) licensed.
