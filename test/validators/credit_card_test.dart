import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Credit Card Validator Tests', () {
    test('Valid Credit Cards', () {
      // 16 digit test visa
      expect('4111111111111111'.isCreditCard, isTrue);
      expect('4111-1111-1111-1111'.isCreditCard, isTrue);
      expect('4111 1111 1111 1111'.isCreditCard, isTrue);
    });

    test('Invalid Credit Cards', () {
      expect('1234567890123456'.isCreditCard, isFalse);
      expect('invalid'.isCreditCard, isFalse);
      expect(''.isCreditCard, isFalse);
      expect('411111111111111'.isCreditCard, isFalse); // too short / wrong sum
    });
  });
}
