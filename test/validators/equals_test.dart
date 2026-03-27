import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Equals Validator Tests', () {
    test('Equal strings', () {
      expect('hello'.equals('hello'), isTrue);
      expect('123'.equals('123'), isTrue);
      expect(''.equals(''), isTrue);
    });

    test('Unequal strings', () {
      expect('Hello'.equals('hello'), isFalse);
      expect('hello'.equals('world'), isFalse);
      expect('123'.equals('1234'), isFalse);
    });
  });
}
