import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Hexadecimal Validator Tests', () {
    test('Valid hexadecimal numbers', () {
      expect('deadBEEF'.isHexadecimal, isTrue);
      expect('0xff'.isHexadecimal, isTrue);
      expect('0h1a'.isHexadecimal, isTrue);
      expect('123abc'.isHexadecimal, isTrue);
      expect(isHexadecimal('FF'), isTrue);
    });

    test('Invalid hexadecimal numbers', () {
      expect('xyz'.isHexadecimal, isFalse);
      expect(''.isHexadecimal, isFalse);
      expect('0x'.isHexadecimal, isFalse);
      expect('12 34'.isHexadecimal, isFalse);
    });
  });
}
