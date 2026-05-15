import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart' hide matches;

void main() {
  group('Matches Validator Tests', () {
    test('Pattern matches', () {
      expect('abc123'.matches(RegExp(r'\d+')), isTrue);
      expect('hello'.matches('ell'), isTrue);
      expect(matches('2024-01-15', RegExp(r'^\d{4}-\d{2}-\d{2}$')), isTrue);
    });

    test('Pattern does not match', () {
      expect('abc'.matches(RegExp(r'^\d+$')), isFalse);
      expect(matches('hello', RegExp(r'\d')), isFalse);
    });
  });
}
