import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('ToBoolean Sanitizer Tests', () {
    test('loose mode', () {
      expect(toBoolean('true'), isTrue);
      expect(toBoolean('yes'), isTrue);
      expect(toBoolean('0'), isFalse);
      expect(toBoolean('false'), isFalse);
      expect(toBoolean(''), isFalse);
    });

    test('strict mode', () {
      expect('1'.toBoolean(strict: true), isTrue);
      expect('true'.toBoolean(strict: true), isTrue);
      expect('yes'.toBoolean(strict: true), isFalse);
    });

    test('keyword matching is case-insensitive', () {
      expect(toBoolean('FALSE'), isFalse);
      expect(toBoolean('False'), isFalse);
      expect('TRUE'.toBoolean(strict: true), isTrue);
      expect('True'.toBoolean(strict: true), isTrue);
    });
  });
}
