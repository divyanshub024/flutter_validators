import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Ascii Validator Tests', () {
    test('Valid ascii', () {
      expect('abc123'.isAscii, isTrue);
      expect('HELLO world!'.isAscii, isTrue);
      expect('1234.567'.isAscii, isTrue);
    });

    test('Invalid ascii', () {
      expect('äbc123'.isAscii, isFalse);
      expect('你好'.isAscii, isFalse);
      expect('😊'.isAscii, isFalse);
      expect(''.isAscii, isFalse);
    });
  });
}
