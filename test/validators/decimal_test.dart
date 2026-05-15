import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Decimal Validator Tests', () {
    test('Valid decimal numbers', () {
      expect('1.5'.isDecimal, isTrue);
      expect('-0.25'.isDecimal, isTrue);
      expect('.5'.isDecimal, isTrue);
      expect('42'.isDecimal, isTrue);
      expect(isDecimal('+10.0'), isTrue);
    });

    test('Invalid decimal numbers', () {
      expect('1.'.isDecimal, isFalse);
      expect('abc'.isDecimal, isFalse);
      expect('1.2.3'.isDecimal, isFalse);
      expect(''.isDecimal, isFalse);
    });
  });
}
