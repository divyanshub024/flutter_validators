import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Float Validator Tests', () {
    test('Valid floats', () {
      expect('1.5'.isFloat(), isTrue);
      expect('-3'.isFloat(), isTrue);
      expect('0'.isFloat(), isTrue);
      expect(isFloat('3.14159'), isTrue);
    });

    test('Range constraints', () {
      expect('1.5'.isFloat(min: 0, max: 2), isTrue);
      expect('5'.isFloat(min: 0, max: 2), isFalse);
      expect('-1'.isFloat(min: 0), isFalse);
    });

    test('Invalid floats', () {
      expect('abc'.isFloat(), isFalse);
      expect(''.isFloat(), isFalse);
      expect('Infinity'.isFloat(), isFalse);
    });
  });
}
