import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Octal Validator Tests', () {
    test('Valid octal numbers', () {
      expect('777'.isOctal, isTrue);
      expect('0o123'.isOctal, isTrue);
      expect('0'.isOctal, isTrue);
      expect(isOctal('01234567'), isTrue);
    });

    test('Invalid octal numbers', () {
      expect('088'.isOctal, isFalse);
      expect('9'.isOctal, isFalse);
      expect(''.isOctal, isFalse);
      expect('0o'.isOctal, isFalse);
    });
  });
}
