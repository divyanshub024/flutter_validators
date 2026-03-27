import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Email Validator Tests', () {
    test('Valid emails', () {
      expect('user@example.com'.isEmail, isTrue);
      expect('user.name+tag@example.co.uk'.isEmail, isTrue);
      expect('user_123@sub.domain.com'.isEmail, isTrue);
    });

    test('Invalid emails', () {
      expect('invalid@email'.isEmail, isFalse);
      expect('user@.com'.isEmail, isFalse);
      expect('@example.com'.isEmail, isFalse);
      expect(''.isEmail, isFalse);
    });
  });
}
