import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Base32 Validator Tests', () {
    test('Valid base32', () {
      expect('JBSWY3DPEHPK3PXP'.isBase32, isTrue);
      expect('JBSWY3DP'.isBase32, isTrue);
      expect('MZXW6YTBOI======'.isBase32, isTrue);
    });

    test('Invalid base32', () {
      expect('hello world'.isBase32, isFalse);
      expect('JBSWY3DPEHPK3PXP1'.isBase32, isFalse); // contains '1'
      expect(''.isBase32, isFalse);
      expect('JBSWY3DPEHPK3PX'.isBase32, isFalse); // invalid length
    });
  });
}
