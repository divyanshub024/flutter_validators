import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('SemVer Validator Tests', () {
    test('Valid semantic versions', () {
      expect('1.0.0'.isSemVer, isTrue);
      expect('0.1.2'.isSemVer, isTrue);
      expect('2.1.0-alpha.1'.isSemVer, isTrue);
      expect('1.0.0+build.5'.isSemVer, isTrue);
      expect(isSemVer('1.2.3-beta+exp.sha.5114f85'), isTrue);
    });

    test('Invalid semantic versions', () {
      expect('1.0'.isSemVer, isFalse);
      expect('1'.isSemVer, isFalse);
      expect('01.0.0'.isSemVer, isFalse);
      expect('v1.0.0'.isSemVer, isFalse);
      expect(''.isSemVer, isFalse);
    });
  });
}
