import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart' hide contains;

void main() {
  group('Contains Validator Tests', () {
    test('Substring present', () {
      expect(contains('hello world', 'world'), isTrue);
      expect(contains('hello world', 'hello'), isTrue);
    });

    test('Case-insensitive match', () {
      expect(contains('Hello World', 'world'), isFalse);
      expect(contains('Hello World', 'world', ignoreCase: true), isTrue);
    });

    test('Minimum occurrences', () {
      expect(contains('a-a-a', 'a', minOccurrences: 3), isTrue);
      expect(contains('a-a-a', 'a', minOccurrences: 4), isFalse);
    });

    test('Substring absent', () {
      expect(contains('hello world', 'xyz'), isFalse);
      expect(contains('hello', ''), isFalse);
    });
  });
}
