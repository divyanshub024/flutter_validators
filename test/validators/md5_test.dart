import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('MD5 Validator Tests', () {
    test('Valid MD5 hashes', () {
      expect('d41d8cd98f00b204e9800998ecf8427e'.isMD5, isTrue);
      expect('D41D8CD98F00B204E9800998ECF8427E'.isMD5, isTrue);
      expect(isMD5('0cc175b9c0f1b6a831c399e269772661'), isTrue);
    });

    test('Invalid MD5 hashes', () {
      expect('d41d8cd98f00b204e9800998ecf8427'.isMD5, isFalse); // 31 chars
      expect('z41d8cd98f00b204e9800998ecf8427e'.isMD5, isFalse);
      expect(''.isMD5, isFalse);
    });
  });
}
