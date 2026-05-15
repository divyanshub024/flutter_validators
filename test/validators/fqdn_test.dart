import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('FQDN Validator Tests', () {
    test('Valid domain names', () {
      expect('example.com'.isFQDN, isTrue);
      expect('sub.example.co.uk'.isFQDN, isTrue);
      expect('my-site.org'.isFQDN, isTrue);
      expect(isFQDN('example.com.'), isTrue); // trailing dot allowed
    });

    test('Invalid domain names', () {
      expect('localhost'.isFQDN, isFalse);
      expect('-bad.com'.isFQDN, isFalse);
      expect('bad-.com'.isFQDN, isFalse);
      expect('example.c'.isFQDN, isFalse); // TLD too short
      expect(''.isFQDN, isFalse);
    });
  });
}
