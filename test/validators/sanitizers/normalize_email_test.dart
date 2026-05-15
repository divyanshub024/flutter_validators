import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('NormalizeEmail Sanitizer Tests', () {
    test('normalizes Gmail addresses', () {
      expect(normalizeEmail('Test.User+tag@GMAIL.com'), 'testuser@gmail.com');
      expect(normalizeEmail('a.b.c@googlemail.com'), 'abc@gmail.com');
    });

    test('lowercases domain for other providers', () {
      expect(normalizeEmail('User@Example.COM'), 'User@example.com');
    });

    test('returns null for invalid emails', () {
      expect(normalizeEmail('not-an-email'), isNull);
      expect('bad'.normalizeEmail(), isNull);
    });
  });
}
