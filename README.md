# Flutter Validators
<p align="left">
  <a href="https://img.shields.io/badge/License-MIT-green"><img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License"></a>
  <a href="https://github.com/divyanshub024/flutter_validators/stargazers"><img src="https://img.shields.io/github/stars/divyanshub024/flutter_validators?style=flat&logo=github&colorB=green&label=stars" alt="stars"></a>
  <a href="https://pub.dev/packages/flutter_validators"><img src="https://img.shields.io/pub/v/flutter_validators.svg" alt="Pub"></a>
</p>

A dart package of [String](https://api.dart.dev/stable/2.14.0/dart-core/String-class.html) validators and sanitizers.
Inspired by [validator.js](https://github.com/validatorjs/validator.js)

## Installation

Run this command:
With Dart:

```
dart pub add flutter_validators
```

This will add a line like this to your package's pubspec.yaml (and run an implicit `dart pub get`):

```
dependencies:
  flutter_validators: ^0.0.2
```

## Usage

Import the package in your Dart file:
```
import 'package:flutter_validators/flutter_validators.dart';
```

Now, you can call the respective validator method.

```
  var email = 'foo@bar.com';

  print(isEmail(email)); // true
```

To have more streamlined code use built-in String extension methods

```
print('foo@bar.com'.isEmail);
```

## Validators

Here is a list of the validators currently available.

| Validator     | Description |
| -----------   | ----------- |
| ascii      | Check if a string contaibs ASCII chars only.       |
| isBase32      | Check if a string is base32 encoded.       |
| isBase58      | Check if a string is base58 encoded.        |
| isBoolean     | Check if String is a boolean.        |
| isEmail        | Check if string is a valid email.        |
| equals        | Check if both Strings are equal.        |

## License (MIT)

```
MIT License

Copyright (c) 2021 Divyanshu Bhargava

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```
