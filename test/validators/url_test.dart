import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('URL Validator Tests', () {
    test('Valid URLs', () {
      expect('https://google.com'.isURL, isTrue);
      expect('http://example.com/path?query=1'.isURL, isTrue);
      expect('https://sub.domain.org'.isURL, isTrue);
    });

    test('Invalid URLs', () {
      expect('invalid-url'.isURL, isFalse);
      expect('ftp://server.com'.isURL, isFalse); // We only support http/https
      expect(''.isURL, isFalse);
    });
  });
}
