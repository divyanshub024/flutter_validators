import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Phone Validator Tests', () {
    test('Valid phone numbers', () {
      expect('+1234567890'.isPhone, isTrue);
      expect('+1 234 567 890'.isPhone, isTrue);
      expect('(123) 456-7890'.isPhone, isTrue);
      expect('123-456-7890'.isPhone, isTrue);
      expect('123.456.7890'.isPhone, isTrue);
      expect('1234567890'.isPhone, isTrue);
    });

    test('Invalid phone numbers', () {
      expect(''.isPhone, isFalse);
      expect('123'.isPhone, isFalse);
      expect('123-456-789'.isPhone, isFalse);
      expect('123.456.789'.isPhone, isFalse);
    });
  });
}
