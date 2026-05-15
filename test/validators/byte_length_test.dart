import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('ByteLength Validator Tests', () {
    test('Within range', () {
      expect('abc'.isByteLength(2), isTrue);
      expect('abc'.isByteLength(1, 3), isTrue);
      expect('é'.isByteLength(2, 2), isTrue); // 2 bytes in UTF-8
      expect(isByteLength('hello', 0, 10), isTrue);
    });

    test('Out of range', () {
      expect('abc'.isByteLength(4), isFalse);
      expect('abcdef'.isByteLength(1, 3), isFalse);
      expect('é'.isByteLength(0, 1), isFalse);
    });
  });
}
