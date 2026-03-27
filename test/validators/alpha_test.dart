import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Alpha & Alphanumeric Validator Tests', () {
    test('Valid Alpha', () {
      expect('abc'.isAlpha, isTrue);
      expect('HelloWorld'.isAlpha, isTrue);
    });

    test('Invalid Alpha', () {
      expect('abc1'.isAlpha, isFalse);
      expect('hello world'.isAlpha, isFalse); // space
      expect(''.isAlpha, isFalse);
    });

    test('Valid Alphanumeric', () {
      expect('abc1'.isAlphanumeric, isTrue);
      expect('HelloWorld123'.isAlphanumeric, isTrue);
      expect('12345'.isAlphanumeric, isTrue);
    });

    test('Invalid Alphanumeric', () {
      expect('hello world'.isAlphanumeric, isFalse);
      expect('abc!'.isAlphanumeric, isFalse);
      expect(''.isAlphanumeric, isFalse);
    });
  });
}
