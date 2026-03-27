import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Boolean Validator Tests', () {
    test('Valid booleans', () {
      expect('true'.isBoolean, isTrue);
      expect('false'.isBoolean, isTrue);
      expect('1'.isBoolean, isTrue);
      expect('0'.isBoolean, isTrue);
    });

    test('Invalid booleans', () {
      expect('yes'.isBoolean, isFalse);
      expect('no'.isBoolean, isFalse);
      expect('True'.isBoolean, isFalse); // case sensitive
      expect(''.isBoolean, isFalse);
    });
  });
}
