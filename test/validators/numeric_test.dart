import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Numeric Validator Tests', () {
    test('Valid Numerics', () {
      expect('123'.isNumeric, isTrue);
      expect('12.34'.isNumeric, isTrue);
      expect('-42'.isNumeric, isTrue);
      expect('0.001'.isNumeric, isTrue);
      expect('-0.001'.isNumeric, isTrue);
    });

    test('Invalid Numerics', () {
      expect('abc'.isNumeric, isFalse);
      expect('12.34.56'.isNumeric, isFalse);
      expect(''.isNumeric, isFalse);
    });
  });
}
