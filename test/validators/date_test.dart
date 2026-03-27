import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Date Validator Tests', () {
    test('Valid Dates', () {
      expect('2023-12-01'.isDate, isTrue);
      expect('2023-12-01 12:00:00'.isDate, isTrue);
      expect('2023-12-01T12:00:00Z'.isDate, isTrue);
      expect('2023-13-01'.isDate, isTrue); // DateTime.tryParse allows rollover
    });

    test('Invalid Dates', () {
      expect('invalid date'.isDate, isFalse);
      expect(''.isDate, isFalse);
    });
  });
}
