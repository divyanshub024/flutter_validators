import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Uppercase Validator Tests', () {
    test('Valid uppercase strings', () {
      expect('HELLO'.isUppercase, isTrue);
      expect('HELLO123'.isUppercase, isTrue);
      expect('123'.isUppercase, isTrue);
      expect(''.isUppercase, isTrue);
      expect(isUppercase('ABC'), isTrue);
    });

    test('Invalid uppercase strings', () {
      expect('Hello'.isUppercase, isFalse);
      expect('hello'.isUppercase, isFalse);
      expect(isUppercase('AbC'), isFalse);
    });
  });
}
