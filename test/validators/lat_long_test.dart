import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('LatLong Validator Tests', () {
    test('Valid coordinates', () {
      expect('40.7128,-74.0060'.isLatLong, isTrue);
      expect('0,0'.isLatLong, isTrue);
      expect('90,180'.isLatLong, isTrue);
      expect('-90,-180'.isLatLong, isTrue);
      expect(isLatLong('12.34, 56.78'), isTrue);
    });

    test('Invalid coordinates', () {
      expect('91,0'.isLatLong, isFalse);
      expect('0,181'.isLatLong, isFalse);
      expect('40.7128'.isLatLong, isFalse);
      expect('abc,def'.isLatLong, isFalse);
      expect(''.isLatLong, isFalse);
    });
  });
}
