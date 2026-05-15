import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Lowercase Validator Tests', () {
    test('Valid lowercase strings', () {
      expect('hello'.isLowercase, isTrue);
      expect('hello123'.isLowercase, isTrue);
      expect('123'.isLowercase, isTrue);
      expect(''.isLowercase, isTrue);
      expect(isLowercase('abc'), isTrue);
    });

    test('Invalid lowercase strings', () {
      expect('Hello'.isLowercase, isFalse);
      expect('HELLO'.isLowercase, isFalse);
      expect(isLowercase('aBc'), isFalse);
    });
  });
}
