import 'package:flutter_validators/form_validator.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter Form Validator Tests', () {
    test('Required validator', () {
      final req = Validator.required(errorMessage: 'Empty');
      expect(req(''), equals('Empty'));
      expect(req(null), equals('Empty'));
      expect(req('  '), equals('Empty'));
      expect(req('hello'), isNull);
    });

    test('Email validator', () {
      final email = Validator.email(errorMessage: 'Bad email');
      expect(email('user@example.com'), isNull);
      expect(email('invalid'), equals('Bad email'));
      expect(email(''), isNull); // Empty strings are treated as valid (use 'required' for emptiness check)
      expect(email(null), isNull);
    });

    test('Length validator', () {
      final len = Validator.length(3, max: 5, errorMessage: 'Bad len');
      expect(len('abc'), isNull);
      expect(len('ab'), equals('Bad len'));
      expect(len('abcdef'), equals('Bad len'));
    });
  });
}
