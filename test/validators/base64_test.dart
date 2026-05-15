import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Base64 Validator Tests', () {
    test('Valid Base64 strings', () {
      expect('aGVsbG8='.isBase64(), isTrue);
      expect('aGVsbG8gd29ybGQ='.isBase64(), isTrue);
      expect(isBase64('Zm9v'), isTrue);
    });

    test('Valid URL-safe Base64 strings', () {
      expect('aGVsbG8'.isBase64(urlSafe: true), isTrue);
      expect(isBase64('a-b_cdef', urlSafe: true), isTrue);
    });

    test('Invalid Base64 strings', () {
      expect('aGVsbG8'.isBase64(), isFalse); // bad padding
      expect('@@@@'.isBase64(), isFalse);
      expect(''.isBase64(), isFalse);
      expect('a'.isBase64(urlSafe: true), isFalse); // impossible length
      expect('abcde'.isBase64(urlSafe: true), isFalse); // length % 4 == 1
    });
  });
}
