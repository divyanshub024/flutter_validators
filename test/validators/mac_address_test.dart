import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('MAC Address Validator Tests', () {
    test('Valid MAC addresses', () {
      expect('00:1B:44:11:3A:B7'.isMACAddress, isTrue);
      expect('00-1B-44-11-3A-B7'.isMACAddress, isTrue);
      expect('001B44113AB7'.isMACAddress, isTrue);
      expect('00:1B:44:11:3A:B7:8C:9D'.isMACAddress, isTrue); // EUI-64
      expect(isMACAddress('aa:bb:cc:dd:ee:ff'), isTrue);
    });

    test('Invalid MAC addresses', () {
      expect('00:1B:44:11:3A'.isMACAddress, isFalse);
      expect('00:1B:44:11:3A:GG'.isMACAddress, isFalse);
      expect('001B44113AB'.isMACAddress, isFalse);
      expect(''.isMACAddress, isFalse);
    });
  });
}
