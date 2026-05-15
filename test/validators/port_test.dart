import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Port Validator Tests', () {
    test('Valid ports', () {
      expect('0'.isPort, isTrue);
      expect('80'.isPort, isTrue);
      expect('8080'.isPort, isTrue);
      expect('65535'.isPort, isTrue);
      expect(isPort('443'), isTrue);
    });

    test('Invalid ports', () {
      expect('65536'.isPort, isFalse);
      expect('-1'.isPort, isFalse);
      expect('080'.isPort, isFalse); // leading zero
      expect('abc'.isPort, isFalse);
      expect(''.isPort, isFalse);
    });
  });
}
