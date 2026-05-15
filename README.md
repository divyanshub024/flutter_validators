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
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License"></a>
  <a href="https://github.com/divyanshub024/flutter_validators/stargazers"><img src="https://img.shields.io/github/stars/divyanshub024/flutter_validators?style=flat&logo=github&colorB=green&label=stars" alt="Stars"></a>
</p>

<p align="center">
  Inspired by <a href="https://github.com/validatorjs/validator.js">validator.js</a> · 40+ validators & sanitizers · Works with Flutter Forms out of the box
</p>

---

A pure Dart package with 40+ string validators and sanitizers, from emails and URLs to credit cards, UUIDs and strong-password checks. Use them as simple functions, convenient `String` extensions, or plug them directly into Flutter's `TextFormField` with the built-in `Validator` class. Zero dependencies, fully tested.

---

## 📦 Installation

```yaml
dependencies:
  flutter_validators: ^1.2.0
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
| `isHexadecimal(str)` | `str.isHexadecimal` | Hexadecimal number |
| `isOctal(str)` | `str.isOctal` | Octal number |
| `isDecimal(str)` | `str.isDecimal` | Decimal number |
| `isFloat(str, {min, max})` | `str.isFloat({min, max})` | Finite float, optionally within range |
| `isPhone(str)` | `str.isPhone` | Valid phone number |
| `isLength(str, min, [max])` | `str.isLength(min, [max])` | Length within range |
| `isByteLength(str, min, [max])` | `str.isByteLength(min, [max])` | UTF-8 byte length within range |
| `isBase64(str, {urlSafe})` | `str.isBase64({urlSafe})` | Base64 encoded |
| `isLowercase(str)` | `str.isLowercase` | Entirely lowercase |
| `isUppercase(str)` | `str.isUppercase` | Entirely uppercase |
| `isSlug(str)` | `str.isSlug` | URL slug |
| `isFQDN(str)` | `str.isFQDN` | Fully qualified domain name |
| `isMACAddress(str)` | `str.isMACAddress` | MAC address |
| `isLatLong(str)` | `str.isLatLong` | `latitude,longitude` pair |
| `isPort(str)` | `str.isPort` | Port number (0–65535) |
| `isSemVer(str)` | `str.isSemVer` | Semantic version |
| `isMongoId(str)` | `str.isMongoId` | MongoDB ObjectId |
| `isMD5(str)` | `str.isMD5` | MD5 hash |
| `isJWT(str)` | `str.isJWT` | JSON Web Token |
| `isStrongPassword(str, {...})` | `str.isStrongPassword({...})` | Password meets strength rules |
| `isIn(str, values)` | `str.isIn(values)` | One of the allowed values |
| `matches(str, pattern)` | `str.matches(pattern)` | Matches a `Pattern`/`RegExp` |
| `contains(str, seed, {ignoreCase, minOccurrences})` | — | Contains a substring |
| `equals(str, comparison)` | `str.equals(comparison)` | Exact string match |

---

## 🧹 Sanitizers

Sanitizers transform or coerce strings. Available both as top-level functions and `String` extensions.

```dart
trim('  hello  ');             // 'hello'
escape('<script>');            // '&lt;script&gt;'
normalizeEmail('A.B+x@GMAIL.com'); // 'ab@gmail.com'
toBoolean('true');             // true
toInt('42');                   // 42
```

| Sanitizer | Returns | Description |
|---|---|---|
| `trim(str, [chars])` | `String` | Trim whitespace/chars from both ends |
| `ltrim(str, [chars])` | `String` | Trim from the start |
| `rtrim(str, [chars])` | `String` | Trim from the end |
| `escape(str)` | `String` | Escape HTML-unsafe characters |
| `unescape(str)` | `String` | Reverse of `escape` |
| `blacklist(str, chars)` | `String` | Remove the listed characters |
| `whitelist(str, chars)` | `String` | Keep only the listed characters |
| `stripLow(str, {keepNewLines})` | `String` | Remove control characters |
| `normalizeEmail(str)` | `String?` | Canonicalize an email address |
| `toBoolean(str, {strict})` | `bool` | Convert to a boolean |
| `toInt(str, {radix})` | `int?` | Parse to an integer |
| `toFloat(str)` | `double?` | Parse to a double |
| `toDate(str)` | `DateTime?` | Parse to a `DateTime` |

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
Validator.base64({bool urlSafe, String errorMessage})
Validator.hexadecimal({String errorMessage})
Validator.octal({String errorMessage})
Validator.decimal({String errorMessage})
Validator.float({double? min, double? max, String errorMessage})
Validator.lowercase({String errorMessage})
Validator.uppercase({String errorMessage})
Validator.slug({String errorMessage})
Validator.fqdn({String errorMessage})
Validator.macAddress({String errorMessage})
Validator.latLong({String errorMessage})
Validator.port({String errorMessage})
Validator.semVer({String errorMessage})
Validator.mongoId({String errorMessage})
Validator.md5({String errorMessage})
Validator.jwt({String errorMessage})
Validator.strongPassword({int minLength, int minLowercase, int minUppercase, int minNumbers, int minSymbols, String errorMessage})
Validator.contains(String seed, {bool ignoreCase, int minOccurrences, String errorMessage})
Validator.matches(Pattern pattern, {String errorMessage})
Validator.inList(Iterable<String> allowed, {String errorMessage})
Validator.byteLength(int min, {int? max, String errorMessage})
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
