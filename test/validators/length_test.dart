import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Length Validator Tests', () {
    test('Valid Lengths', () {
      expect('abc'.isLength(2), isTrue);
      expect('abc'.isLength(3), isTrue);
      expect('abc'.isLength(1, 3), isTrue);
      expect('abc'.isLength(3, 5), isTrue);
    });

    test('Invalid Lengths', () {
      expect('abc'.isLength(4), isFalse);
      expect('abc'.isLength(1, 2), isFalse);
    });
  });
}
