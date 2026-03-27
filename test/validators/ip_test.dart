import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('IP Validator Tests', () {
    test('Valid IPv4', () {
      expect('192.168.1.1'.isIP, isTrue);
      expect('192.168.1.1'.isIPv4, isTrue);
      expect('255.255.255.255'.isIP, isTrue);
    });

    test('Invalid IPv4', () {
      expect('256.256.256.256'.isIP, isFalse);
      expect('192.168.1'.isIP, isFalse);
    });

    test('Valid IPv6', () {
      expect('2001:0db8:85a3:0000:0000:8a2e:0370:7334'.isIP, isTrue);
      expect('2001:0db8:85a3:0000:0000:8a2e:0370:7334'.isIPv6, isTrue);
      expect('::1'.isIPv6, isTrue);
    });

    test('Invalid IP', () {
      expect('invalid ip'.isIP, isFalse);
      expect(''.isIP, isFalse);
      expect('192.168.1.1'.isIPv6, isFalse);
    });
  });
}
